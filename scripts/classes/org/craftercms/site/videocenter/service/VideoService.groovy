package org.craftercms.site.videocenter.service

import org.apache.commons.lang3.StringUtils

import org.craftercms.site.videocenter.utils.DateUtils

import groovy.util.logging.Slf4j

@Slf4j
class VideoService {
  
  def searchService
  def profileService
  def siteItemService
  def tenantsResolver
  
  def mongoClient
  def dbName
  def db
  
  def init() {
    db = mongoClient.getDB(dbName)
  }
  
  def updateVideoViewCount(videoId) {
    // Increment view count
    db.videoViews.update([videoId: videoId], [$inc: [count: 1]], true)
    // Get current view count
    def views = db.videoViews.findOne(videoId: videoId)
    return views
  }
  
  def getVideoSocialCounts(videoId) {
    def tenantName = tenantsResolver.tenants[0]
    return [
    liked: profileService.getProfileCountByQuery(tenantName, "{ \"attributes.likedVideos\":\"$videoId\"  }"),
    disliked: profileService.getProfileCountByQuery(tenantName, "{ \"attributes.dislikedVideos\":\"$videoId\"  }")
    ]
  }
  
  def getMostViewedVideos(limit) {
    def videos = []
    
    def mostViews = db.videoViews.find().limit(limit).sort(count: -1)
    if (mostViews) {
      mostViews.each {singleVideoViews ->
        def videoId = singleVideoViews.videoId
        def videoPath = "/site/videos/${videoId}.xml"
        def videoItem = siteItemService.getSiteItem(videoPath)
        
        if (videoItem) {
          def video = [:]
          videos << processItem(videoItem)
          }	else {
            log.warn("Video ${videoPath} not found")
          }
      }
    }
      
    return videos
  }
    
  def buildSolrQuery(q, rows) {
    def fieldsToReturn = [ "localId" ] as String[]
    
    def query = searchService.createQuery()
    query.query = q
    query.rows = rows
    query.fieldsToReturn = fieldsToReturn
    query.addParam("sort", "score desc, date_dt desc")
    
    return query
  }
    
  def searchVideos(q, start, rows, sort) {
    def fieldsToReturn = [ "localId" ] as String[]
    def query = searchService.createQuery()
    query.query = q
    query.start = start
    query.rows = rows
    query.fieldsToReturn = fieldsToReturn
    
    if (sort) {
      query.addParam("sort", sort)
    }
    
    def results = searchService.search(query)
    
    return [
      hasMore: (start + rows) < results.response.numFound,
      total: results.response.numFound,
      items: resolveVideosFromSearchResults(results)
    ]
  }
    
  def searchRecentVideos(rows) {
    def q = 'content-type:"/component/video"'
    def query = buildSolrQuery(q, rows)
    
    def results = searchService.search(query)
    
    return resolveVideosFromSearchResults(results)
  }
    
  def searchFeaturedVideos(rows) {
    def q = '(content-type:"/component/video" AND featured:"true") OR ' +
      '(content-type:"/component/stream" AND startDate_dt:[* TO NOW] AND endDate_dt:[NOW TO *])^100'
    def query = buildSolrQuery(q, rows)
    
    def results = searchService.search(query)
    
    resolveVideosFromSearchResults(results)
  }
    
  def searchRelatedVideos(video, rows) {
    def categories = video.queryValues("//categories/item/key")
    def categoriesStr = StringUtils.join(categories, " OR ")
    def q = "content-type:\"/component/video\" AND categories.item.key:(${categoriesStr}) AND -localId:\"${video.storeUrl}\""
    def query = buildSolrQuery(q, rows)
    
    def results = searchService.search(query)
    
    return resolveVideosFromSearchResults(results)
  }
    
  def resolveVideosFromSearchResults(searchResults) {
    def documents = searchResults.response.documents
    def videos = []
    
    if (documents) {
      documents.each { doc ->
        def url = doc.localId
        def videoItem = siteItemService.getSiteItem(url)
        
        if (videoItem) {
          videos << processItem(videoItem)
        }	else {
          log.warn("Video ${url} not found")
        }
      }
    }
      
    return videos
  }
  
  def resolveVideosFromIds(ids) {
    ids.collect { videoId ->
      def item = siteItemService.getSiteItem("/site/videos/${videoId}.xml")
      return processItem(item)
    }
  }
  
  def processItem(videoItem) {
    def video = [:]
    video.id = StringUtils.substringBefore(videoItem["file-name"].text, ".xml")
    video.thumbnail = videoItem.thumbnail.text
    video.title_s = videoItem.title_s
    video.date_dt = DateUtils.toShortDisplayDate(videoItem.date_dt)
    video.summary_s = videoItem.summary_s
    video.categories = videoItem.queryValues("categories/item/value_smv")
    video.tags = videoItem.queryValues("tags/item/value_smv")
    video.type = videoItem["content-type"].text.equals("/component/video") ? "video" : "stream"
    
    def views = db.videoViews.findOne(videoId: video.id)
    if (views) {
      video.viewCount = views.count
    } else {
      video.viewCount = 0
    }
    
    video.likeCount = profileService.getProfileCountByQuery("default", "{ \"attributes.likedVideos\":\"${video.id}\"  }")
    video.dislikeCount = profileService.getProfileCountByQuery("default", "{ \"attributes.dislikedVideos\":\"${video.id}\"  }")
    
    return video
  }
  
  def getStreamStatus(video) {
    def now = new Date()
    if(video.startDate_dt > now) {
      return "waiting"
    } else if(video.endDate_dt < now) {
      return "finished"
    } else {
      return "live"
    }
  }
  
}
