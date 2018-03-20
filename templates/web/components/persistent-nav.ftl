<style>
#left-rail .toggle { top: 50px }
.ui.menu .item { border-bottom: none !important }
</style>

<style>
  @import url('/static-assets/css/google-fonts-lato.css');
  /*
 * # Semantic - Menu
 * http://github.com/semantic-org/semantic-ui/
 *
 *
 * Copyright 2015 Contributor
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 */


  /*******************************
              Standard
  *******************************/


  /*--------------
        Menu
  ---------------*/

  .ui.menu {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    margin: 1rem 0em;
    font-family: 'Lato', 'Helvetica Neue', Arial, Helvetica, sans-serif;
    background: #FFFFFF;
    font-weight: normal;
    border: 1px solid rgba(34, 36, 38, 0.15);
    box-shadow: 0px 1px 2px 0 rgba(34, 36, 38, 0.15);
    border-radius: 0.28571429rem;
    min-height: 2.85714286em;
  }
  .ui.menu:after {
    content: '';
    display: block;
    height: 0px;
    clear: both;
    visibility: hidden;
  }
  .ui.menu:first-child {
    margin-top: 0rem;
  }
  .ui.menu:last-child {
    margin-bottom: 0rem;
  }

  /*--------------
      Sub-Menu
  ---------------*/

  .ui.menu .menu {
    margin: 0em;
  }
  .ui.menu:not(.vertical) > .menu {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }

  /*--------------
        Item
  ---------------*/

  .ui.menu:not(.vertical) .item {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
  }
  .ui.menu .item {
    position: relative;
    vertical-align: middle;
    line-height: 1;
    text-decoration: none;
    -webkit-tap-highlight-color: transparent;
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background: none;
    padding: 0.92857143em 1.14285714em;
    text-transform: none;
    color: rgba(0, 0, 0, 0.87);
    font-weight: normal;
    -webkit-transition: background 0.1s ease, box-shadow 0.1s ease, color 0.1s ease;
    transition: background 0.1s ease, box-shadow 0.1s ease, color 0.1s ease;
  }
  .ui.menu > .item:first-child {
    border-radius: 0.28571429rem 0px 0px 0.28571429rem;
  }

  /* Border */
  .ui.menu .item:before {
    position: absolute;
    content: '';
    top: 0%;
    right: 0px;
    height: 100%;
    width: 1px;
    background: rgba(34, 36, 38, 0.1);
  }

  /*--------------
    Text Content
  ---------------*/

  .ui.menu .text.item > *,
  .ui.menu .item > a:not(.ui),
  .ui.menu .item > p:only-child {
    -webkit-user-select: text;
    -moz-user-select: text;
    -ms-user-select: text;
    user-select: text;
    line-height: 1.3;
  }
  .ui.menu .item > p:first-child {
    margin-top: 0;
  }
  .ui.menu .item > p:last-child {
    margin-bottom: 0;
  }

  /*--------------
        Icons
  ---------------*/

  .ui.menu .item > i.icon {
    opacity: 0.9;
    float: none;
    margin: 0em 0.35714286em 0em 0em;
  }

  /*--------------
       Button
  ---------------*/

  .ui.menu:not(.vertical) .item > .button {
    position: relative;
    top: 0em;
    margin: -0.5em 0em;
    padding-bottom: 0.78571429em;
    padding-top: 0.78571429em;
    font-size: 1em;
  }

  /*----------------
   Grid / Container
  -----------------*/

  .ui.menu > .grid,
  .ui.menu > .container {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: inherit;
    -ms-flex-align: inherit;
    align-items: inherit;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: inherit;
    flex-direction: inherit;
  }

  /*--------------
       Inputs
  ---------------*/

  .ui.menu .item > .input {
    width: 100%;
  }
  .ui.menu:not(.vertical) .item > .input {
    position: relative;
    top: 0em;
    margin: -0.5em 0em;
  }
  .ui.menu .item > .input input {
    font-size: 1em;
    padding-top: 0.57142857em;
    padding-bottom: 0.57142857em;
  }

  /*--------------
       Header
  ---------------*/

  .ui.menu .header.item,
  .ui.vertical.menu .header.item {
    margin: 0em;
    background: '';
    text-transform: normal;
    font-weight: bold;
  }
  .ui.vertical.menu .item > .header:not(.ui) {
    margin: 0em 0em 0.5em;
    font-size: 1em;
    font-weight: bold;
  }

  /*--------------
      Dropdowns
  ---------------*/


  /* Dropdown Icon */
  .ui.menu .item > i.dropdown.icon {
    padding: 0em;
    float: right;
    margin: 0em 0em 0em 1em;
  }

  /* Menu */
  .ui.menu .dropdown.item .menu {
    min-width: calc(100% - 1px);
    border-radius: 0em 0em 0.28571429rem 0.28571429rem;
    background: #FFFFFF;
    margin: 0em 0px 0px;
    box-shadow: 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
    -webkit-box-orient: vertical !important;
    -webkit-box-direction: normal !important;
    -ms-flex-direction: column !important;
    flex-direction: column !important;
  }

  /* Menu Items */
  .ui.menu .ui.dropdown .menu > .item {
    margin: 0;
    text-align: left;
    font-size: 1em !important;
    padding: 0.78571429em 1.14285714em !important;
    background: transparent !important;
    color: rgba(0, 0, 0, 0.87) !important;
    text-transform: none !important;
    font-weight: normal !important;
    box-shadow: none !important;
    -webkit-transition: none !important;
    transition: none !important;
  }
  .ui.menu .ui.dropdown .menu > .item:hover {
    background: rgba(0, 0, 0, 0.05) !important;
    color: rgba(0, 0, 0, 0.95) !important;
  }
  .ui.menu .ui.dropdown .menu > .selected.item {
    background: rgba(0, 0, 0, 0.05) !important;
    color: rgba(0, 0, 0, 0.95) !important;
  }
  .ui.menu .ui.dropdown .menu > .active.item {
    background: rgba(0, 0, 0, 0.03) !important;
    font-weight: bold !important;
    color: rgba(0, 0, 0, 0.95) !important;
  }
  .ui.menu .ui.dropdown.item .menu .item:not(.filtered) {
    display: block;
  }
  .ui.menu .ui.dropdown .menu > .item .icon:not(.dropdown) {
    display: inline-block;
    font-size: 1em !important;
    float: none;
    margin: 0em 0.75em 0em 0em;
  }

  /* Secondary */
  .ui.secondary.menu .dropdown.item > .menu,
  .ui.text.menu .dropdown.item > .menu {
    border-radius: 0.28571429rem;
    margin-top: 0.35714286em;
  }

  /* Pointing */
  .ui.menu .pointing.dropdown.item .menu {
    margin-top: 0.75em;
  }

  /* Inverted */
  .ui.inverted.menu .search.dropdown.item > .search,
  .ui.inverted.menu .search.dropdown.item > .text {
    color: rgba(255, 255, 255, 0.9);
  }

  /* Vertical */
  .ui.vertical.menu .dropdown.item > .icon {
    float: right;
    content: "\f0da";
    margin-left: 1em;
  }
  .ui.vertical.menu .dropdown.item .menu {
    left: 100%;
    min-width: 0;
    margin: 0em 0em 0em 0em;
    box-shadow: 0 1px 3px 0px rgba(0, 0, 0, 0.08);
    border-radius: 0em 0.28571429rem 0.28571429rem 0.28571429rem;
  }
  .ui.vertical.menu .dropdown.item.upward .menu {
    bottom: 0;
  }
  .ui.vertical.menu .dropdown.item:not(.upward) .menu {
    top: 0;
  }
  .ui.vertical.menu .active.dropdown.item {
    border-top-right-radius: 0em;
    border-bottom-right-radius: 0em;
  }
  .ui.vertical.menu .dropdown.active.item {
    box-shadow: none;
  }

  /* Evenly Divided */
  .ui.item.menu .dropdown .menu .item {
    width: 100%;
  }

  /*--------------
       Labels
  ---------------*/

  .ui.menu .item > .label {
    background: #999999;
    color: #FFFFFF;
    margin-left: 1em;
    padding: 0.3em 0.78571429em;
  }
  .ui.vertical.menu .item > .label {
    background: #999999;
    color: #FFFFFF;
    margin-top: -0.15em;
    margin-bottom: -0.15em;
    padding: 0.3em 0.78571429em;
  }
  .ui.menu .item > .floating.label {
    padding: 0.3em 0.78571429em;
  }

  /*--------------
       Images
  ---------------*/

  .ui.menu .item > img:not(.ui) {
    display: inline-block;
    vertical-align: middle;
    margin: -0.3em 0em;
    width: 2.5em;
  }
  .ui.vertical.menu .item > img:not(.ui):only-child {
    display: block;
    max-width: 100%;
    width: auto;
  }


  /*******************************
            Coupling
  *******************************/


  /*--------------
       Sidebar
  ---------------*/


  /* Show vertical dividers below last */
  .ui.vertical.sidebar.menu > .item:first-child:before {
    display: block !important;
  }
  .ui.vertical.sidebar.menu > .item::before {
    top: auto;
    bottom: 0px;
  }

  /*--------------
      Container
  ---------------*/

  @media only screen and (max-width: 767px) {
    .ui.menu > .ui.container {
      width: 100% !important;
      margin-left: 0em !important;
      margin-right: 0em !important;
    }
  }
  @media only screen and (min-width: 768px) {
    .ui.menu:not(.secondary):not(.text):not(.tabular):not(.borderless) > .container > .item:not(.right):not(.borderless):first-child {
      border-left: 1px solid rgba(34, 36, 38, 0.1);
    }
  }


  /*******************************
               States
  *******************************/


  /*--------------
        Hover
  ---------------*/

  .ui.link.menu .item:hover,
  .ui.menu .dropdown.item:hover,
  .ui.menu .link.item:hover,
  .ui.menu a.item:hover {
    cursor: pointer;
    background: rgba(0, 0, 0, 0.03);
    color: rgba(0, 0, 0, 0.95);
  }

  /*--------------
       Pressed
  ---------------*/

  .ui.link.menu .item:active,
  .ui.menu .link.item:active,
  .ui.menu a.item:active {
    background: rgba(0, 0, 0, 0.03);
    color: rgba(0, 0, 0, 0.95);
  }

  /*--------------
       Active
  ---------------*/

  .ui.menu .active.item {
    background: rgba(0, 0, 0, 0.05);
    color: rgba(0, 0, 0, 0.95);
    font-weight: normal;
    box-shadow: none;
  }
  .ui.menu .active.item > i.icon {
    opacity: 1;
  }

  /*--------------
    Active Hover
  ---------------*/

  .ui.menu .active.item:hover,
  .ui.vertical.menu .active.item:hover {
    background-color: rgba(0, 0, 0, 0.05);
    color: rgba(0, 0, 0, 0.95);
  }

  /*--------------
       Disabled
  ---------------*/

  .ui.menu .item.disabled,
  .ui.menu .item.disabled:hover {
    cursor: default;
    background-color: transparent !important;
    color: rgba(40, 40, 40, 0.3);
  }


  /*******************************
               Types
  *******************************/


  /*------------------
  Floated Menu / Item
  -------------------*/


  /* Left Floated */
  .ui.menu:not(.vertical) .left.item,
  .ui.menu:not(.vertical) .left.menu {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    margin-right: auto !important;
  }

  /* Right Floated */
  .ui.menu:not(.vertical) .right.item,
  .ui.menu:not(.vertical) .right.menu {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    margin-left: auto !important;
  }

  /* Swapped Borders */
  .ui.menu .right.item::before,
  .ui.menu .right.menu > .item::before {
    right: auto;
    left: 0;
  }

  /*--------------
      Vertical
  ---------------*/

  .ui.vertical.menu {
    display: block;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    background: #FFFFFF;
    box-shadow: 0px 1px 2px 0 rgba(34, 36, 38, 0.15);
  }

  /*--- Item ---*/

  .ui.vertical.menu .item {
    display: block;
    background: none;
    border-top: none;
    border-right: none;
  }
  .ui.vertical.menu > .item:first-child {
    border-radius: 0.28571429rem 0.28571429rem 0px 0px;
  }
  .ui.vertical.menu > .item:last-child {
    border-radius: 0px 0px 0.28571429rem 0.28571429rem;
  }

  /*--- Label ---*/

  .ui.vertical.menu .item > .label {
    float: right;
    text-align: center;
  }

  /*--- Icon ---*/

  .ui.vertical.menu .item > i.icon {
    width: 1.18em;
    float: right;
    margin: 0em 0em 0em 0.5em;
  }
  .ui.vertical.menu .item > .label + i.icon {
    float: none;
    margin: 0em 0.5em 0em 0em;
  }

  /*--- Border ---*/

  .ui.vertical.menu .item:before {
    position: absolute;
    content: '';
    top: 0%;
    left: 0px;
    width: 100%;
    height: 1px;
    background: rgba(34, 36, 38, 0.1);
  }
  .ui.vertical.menu .item:first-child:before {
    display: none !important;
  }

  /*--- Sub Menu ---*/

  .ui.vertical.menu .item > .menu {
    margin: 0.5em -1.14285714em 0em;
  }
  .ui.vertical.menu .menu .item {
    background: none;
    padding: 0.5em 1.33333333em;
    font-size: 0.85714286em;
    color: rgba(0, 0, 0, 0.5);
  }
  .ui.vertical.menu .item .menu a.item:hover,
  .ui.vertical.menu .item .menu .link.item:hover {
    color: rgba(0, 0, 0, 0.85);
  }
  .ui.vertical.menu .menu .item:before {
    display: none;
  }

  /* Vertical Active */
  .ui.vertical.menu .active.item {
    background: rgba(0, 0, 0, 0.05);
    border-radius: 0em;
    box-shadow: none;
  }
  .ui.vertical.menu > .active.item:first-child {
    border-radius: 0.28571429rem 0.28571429rem 0em 0em;
  }
  .ui.vertical.menu > .active.item:last-child {
    border-radius: 0em 0em 0.28571429rem 0.28571429rem;
  }
  .ui.vertical.menu > .active.item:only-child {
    border-radius: 0.28571429rem;
  }
  .ui.vertical.menu .active.item .menu .active.item {
    border-left: none;
  }
  .ui.vertical.menu .item .menu .active.item {
    background-color: transparent;
    font-weight: bold;
    color: rgba(0, 0, 0, 0.95);
  }

  /*--------------
       Tabular
  ---------------*/

  .ui.tabular.menu {
    border-radius: 0em;
    box-shadow: none !important;
    border: none;
    background: none transparent;
    border-bottom: 1px solid #D4D4D5;
  }
  .ui.tabular.fluid.menu {
    width: calc(100% +  2px ) !important;
  }
  .ui.tabular.menu .item {
    background: transparent;
    border-bottom: none;
    border-left: 1px solid transparent;
    border-right: 1px solid transparent;
    border-top: 2px solid transparent;
    padding: 0.92857143em 1.42857143em;
    color: rgba(0, 0, 0, 0.87);
  }
  .ui.tabular.menu .item:before {
    display: none;
  }

  /* Hover */
  .ui.tabular.menu .item:hover {
    background-color: transparent;
    color: rgba(0, 0, 0, 0.8);
  }

  /* Active */
  .ui.tabular.menu .active.item {
    background: none #FFFFFF;
    color: rgba(0, 0, 0, 0.95);
    border-top-width: 1px;
    border-color: #D4D4D5;
    font-weight: bold;
    margin-bottom: -1px;
    box-shadow: none;
    border-radius: 0.28571429rem 0.28571429rem 0px 0px !important;
  }

  /* Coupling with segment for attachment */
  .ui.tabular.menu + .attached:not(.top).segment,
  .ui.tabular.menu + .attached:not(.top).segment + .attached:not(.top).segment {
    border-top: none;
    margin-left: 0px;
    margin-top: 0px;
    margin-right: 0px;
    width: 100%;
  }
  .top.attached.segment + .ui.bottom.tabular.menu {
    position: relative;
    width: calc(100% +  2px );
    left: -1px;
  }

  /* Bottom Vertical Tabular */
  .ui.bottom.tabular.menu {
    background: none transparent;
    border-radius: 0em;
    box-shadow: none !important;
    border-bottom: none;
    border-top: 1px solid #D4D4D5;
  }
  .ui.bottom.tabular.menu .item {
    background: none;
    border-left: 1px solid transparent;
    border-right: 1px solid transparent;
    border-bottom: 1px solid transparent;
    border-top: none;
  }
  .ui.bottom.tabular.menu .active.item {
    background: none #FFFFFF;
    color: rgba(0, 0, 0, 0.95);
    border-color: #D4D4D5;
    margin: -1px 0px 0px 0px;
    border-radius: 0px 0px 0.28571429rem 0.28571429rem !important;
  }

  /* Vertical Tabular (Left) */
  .ui.vertical.tabular.menu {
    background: none transparent;
    border-radius: 0em;
    box-shadow: none !important;
    border-bottom: none;
    border-right: 1px solid #D4D4D5;
  }
  .ui.vertical.tabular.menu .item {
    background: none;
    border-left: 1px solid transparent;
    border-bottom: 1px solid transparent;
    border-top: 1px solid transparent;
    border-right: none;
  }
  .ui.vertical.tabular.menu .active.item {
    background: none #FFFFFF;
    color: rgba(0, 0, 0, 0.95);
    border-color: #D4D4D5;
    margin: 0px -1px 0px 0px;
    border-radius: 0.28571429rem 0px 0px 0.28571429rem !important;
  }

  /* Vertical Right Tabular */
  .ui.vertical.right.tabular.menu {
    background: none transparent;
    border-radius: 0em;
    box-shadow: none !important;
    border-bottom: none;
    border-right: none;
    border-left: 1px solid #D4D4D5;
  }
  .ui.vertical.right.tabular.menu .item {
    background: none;
    border-right: 1px solid transparent;
    border-bottom: 1px solid transparent;
    border-top: 1px solid transparent;
    border-left: none;
  }
  .ui.vertical.right.tabular.menu .active.item {
    background: none #FFFFFF;
    color: rgba(0, 0, 0, 0.95);
    border-color: #D4D4D5;
    margin: 0px 0px 0px -1px;
    border-radius: 0px 0.28571429rem 0.28571429rem 0px !important;
  }

  /* Dropdown */
  .ui.tabular.menu .active.dropdown.item {
    margin-bottom: 0px;
    border-left: 1px solid transparent;
    border-right: 1px solid transparent;
    border-top: 2px solid transparent;
    border-bottom: none;
  }

  /*--------------
     Pagination
  ---------------*/

  .ui.pagination.menu {
    margin: 0em;
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    vertical-align: middle;
  }
  .ui.pagination.menu .item:last-child {
    border-radius: 0em 0.28571429rem 0.28571429rem 0em;
  }
  .ui.compact.menu .item:last-child {
    border-radius: 0em 0.28571429rem 0.28571429rem 0em;
  }
  .ui.pagination.menu .item:last-child:before {
    display: none;
  }
  .ui.pagination.menu .item {
    min-width: 3em;
    text-align: center;
  }
  .ui.pagination.menu .icon.item i.icon {
    vertical-align: top;
  }

  /* Active */
  .ui.pagination.menu .active.item {
    border-top: none;
    padding-top: 0.92857143em;
    background-color: rgba(0, 0, 0, 0.05);
    color: rgba(0, 0, 0, 0.95);
    box-shadow: none;
  }

  /*--------------
     Secondary
  ---------------*/

  .ui.secondary.menu {
    background: none;
    margin-left: -0.35714286em;
    margin-right: -0.35714286em;
    border-radius: 0em;
    border: none;
    box-shadow: none;
  }

  /* Item */
  .ui.secondary.menu .item {
    -ms-flex-item-align: center;
    -ms-grid-row-align: center;
    align-self: center;
    box-shadow: none;
    border: none;
    padding: 0.78571429em 0.92857143em;
    margin: 0em 0.35714286em;
    background: none;
    -webkit-transition: color 0.1s ease;
    transition: color 0.1s ease;
    border-radius: 0.28571429rem;
  }

  /* No Divider */
  .ui.secondary.menu .item:before {
    display: none !important;
  }

  /* Header */
  .ui.secondary.menu .header.item {
    border-radius: 0em;
    border-right: none;
    background: none transparent;
  }

  /* Image */
  .ui.secondary.menu .item > img:not(.ui) {
    margin: 0em;
  }

  /* Hover */
  .ui.secondary.menu .dropdown.item:hover,
  .ui.secondary.menu .link.item:hover,
  .ui.secondary.menu a.item:hover {
    background: rgba(0, 0, 0, 0.05);
    color: rgba(0, 0, 0, 0.95);
  }

  /* Active */
  .ui.secondary.menu .active.item {
    box-shadow: none;
    background: rgba(0, 0, 0, 0.05);
    color: rgba(0, 0, 0, 0.95);
    border-radius: 0.28571429rem;
  }

  /* Active Hover */
  .ui.secondary.menu .active.item:hover {
    box-shadow: none;
    background: rgba(0, 0, 0, 0.05);
    color: rgba(0, 0, 0, 0.95);
  }

  /* Inverted */
  .ui.secondary.inverted.menu .link.item,
  .ui.secondary.inverted.menu a.item {
    color: rgba(255, 255, 255, 0.7) !important;
  }
  .ui.secondary.inverted.menu .dropdown.item:hover,
  .ui.secondary.inverted.menu .link.item:hover,
  .ui.secondary.inverted.menu a.item:hover {
    background: rgba(255, 255, 255, 0.08);
    color: #ffffff !important;
  }
  .ui.secondary.inverted.menu .active.item {
    background: rgba(255, 255, 255, 0.15);
    color: #ffffff !important;
  }

  /* Fix item margins */
  .ui.secondary.item.menu {
    margin-left: 0em;
    margin-right: 0em;
  }
  .ui.secondary.item.menu .item:last-child {
    margin-right: 0em;
  }
  .ui.secondary.attached.menu {
    box-shadow: none;
  }

  /* Sub Menu */
  .ui.vertical.secondary.menu .item:not(.dropdown) > .menu {
    margin: 0em -0.92857143em;
  }
  .ui.vertical.secondary.menu .item:not(.dropdown) > .menu > .item {
    margin: 0em;
    padding: 0.5em 1.33333333em;
  }

  /*---------------------
     Secondary Vertical
  -----------------------*/

  .ui.secondary.vertical.menu > .item {
    border: none;
    margin: 0em 0em 0.35714286em;
    border-radius: 0.28571429rem !important;
  }
  .ui.secondary.vertical.menu > .header.item {
    border-radius: 0em;
  }

  /* Sub Menu */
  .ui.vertical.secondary.menu .item > .menu .item {
    background-color: transparent;
  }

  /* Inverted */
  .ui.secondary.inverted.menu {
    background-color: transparent;
  }

  /*---------------------
     Secondary Pointing
  -----------------------*/

  .ui.secondary.pointing.menu {
    margin-left: 0em;
    margin-right: 0em;
    border-bottom: 2px solid rgba(34, 36, 38, 0.15);
  }
  .ui.secondary.pointing.menu .item {
    border-bottom-color: transparent;
    border-bottom-style: solid;
    border-radius: 0em;
    -ms-flex-item-align: end;
    align-self: flex-end;
    margin: 0em 0em -2px;
    padding: 0.85714286em 1.14285714em;
    border-bottom-width: 2px;
    -webkit-transition: color 0.1s ease;
    transition: color 0.1s ease;
  }

  /* Item Types */
  .ui.secondary.pointing.menu .header.item {
    color: rgba(0, 0, 0, 0.85) !important;
  }
  .ui.secondary.pointing.menu .text.item {
    box-shadow: none !important;
  }
  .ui.secondary.pointing.menu .item:after {
    display: none;
  }

  /* Hover */
  .ui.secondary.pointing.menu .dropdown.item:hover,
  .ui.secondary.pointing.menu .link.item:hover,
  .ui.secondary.pointing.menu a.item:hover {
    background-color: transparent;
    color: rgba(0, 0, 0, 0.87);
  }

  /* Pressed */
  .ui.secondary.pointing.menu .dropdown.item:active,
  .ui.secondary.pointing.menu .link.item:active,
  .ui.secondary.pointing.menu a.item:active {
    background-color: transparent;
    border-color: rgba(34, 36, 38, 0.15);
  }

  /* Active */
  .ui.secondary.pointing.menu .active.item {
    background-color: transparent;
    box-shadow: none;
    border-color: #1B1C1D;
    font-weight: bold;
    color: rgba(0, 0, 0, 0.95);
  }

  /* Active Hover */
  .ui.secondary.pointing.menu .active.item:hover {
    border-color: #1B1C1D;
    color: rgba(0, 0, 0, 0.95);
  }

  /* Active Dropdown */
  .ui.secondary.pointing.menu .active.dropdown.item {
    border-color: transparent;
  }

  /* Vertical Pointing */
  .ui.secondary.vertical.pointing.menu {
    border-bottom-width: 0px;
    border-right-width: 2px;
    border-right-style: solid;
    border-right-color: rgba(34, 36, 38, 0.15);
  }
  .ui.secondary.vertical.pointing.menu .item {
    border-bottom: none;
    border-right-style: solid;
    border-right-color: transparent;
    border-radius: 0em !important;
    margin: 0em -2px 0em 0em;
    border-right-width: 2px;
  }

  /* Vertical Active */
  .ui.secondary.vertical.pointing.menu .active.item {
    border-color: #1B1C1D;
  }

  /* Inverted */
  .ui.secondary.inverted.pointing.menu {
    border-color: rgba(255, 255, 255, 0.1);
  }
  .ui.secondary.inverted.pointing.menu {
    border-width: 2px;
    border-color: rgba(34, 36, 38, 0.15);
  }
  .ui.secondary.inverted.pointing.menu .item {
    color: rgba(255, 255, 255, 0.9);
  }
  .ui.secondary.inverted.pointing.menu .header.item {
    color: #FFFFFF !important;
  }

  /* Hover */
  .ui.secondary.inverted.pointing.menu .link.item:hover,
  .ui.secondary.inverted.pointing.menu a.item:hover {
    color: rgba(0, 0, 0, 0.95);
  }

  /* Active */
  .ui.secondary.inverted.pointing.menu .active.item {
    border-color: #FFFFFF;
    color: #ffffff;
  }

  /*--------------
      Text Menu
  ---------------*/

  .ui.text.menu {
    background: none transparent;
    border-radius: 0px;
    box-shadow: none;
    border: none;
    margin: 1em -0.5em;
  }
  .ui.text.menu .item {
    border-radius: 0px;
    box-shadow: none;
    -ms-flex-item-align: center;
    -ms-grid-row-align: center;
    align-self: center;
    margin: 0em 0em;
    padding: 0.35714286em 0.5em;
    font-weight: normal;
    color: rgba(0, 0, 0, 0.6);
    -webkit-transition: opacity 0.1s ease;
    transition: opacity 0.1s ease;
  }

  /* Border */
  .ui.text.menu .item:before,
  .ui.text.menu .menu .item:before {
    display: none !important;
  }

  /* Header */
  .ui.text.menu .header.item {
    background-color: transparent;
    opacity: 1;
    color: rgba(0, 0, 0, 0.85);
    font-size: 0.92857143em;
    text-transform: uppercase;
    font-weight: bold;
  }

  /* Image */
  .ui.text.menu .item > img:not(.ui) {
    margin: 0em;
  }

  /*--- fluid text ---*/

  .ui.text.item.menu .item {
    margin: 0em;
  }

  /*--- vertical text ---*/

  .ui.vertical.text.menu {
    margin: 1em 0em;
  }
  .ui.vertical.text.menu:first-child {
    margin-top: 0rem;
  }
  .ui.vertical.text.menu:last-child {
    margin-bottom: 0rem;
  }
  .ui.vertical.text.menu .item {
    margin: 0.57142857em 0em;
    padding-left: 0em;
    padding-right: 0em;
  }
  .ui.vertical.text.menu .item > i.icon {
    float: none;
    margin: 0em 0.35714286em 0em 0em;
  }
  .ui.vertical.text.menu .header.item {
    margin: 0.57142857em 0em 0.71428571em;
  }

  /* Vertical Sub Menu */
  .ui.vertical.text.menu .item:not(.dropdown) > .menu {
    margin: 0em;
  }
  .ui.vertical.text.menu .item:not(.dropdown) > .menu > .item {
    margin: 0em;
    padding: 0.5em 0em;
  }

  /*--- hover ---*/

  .ui.text.menu .item:hover {
    opacity: 1;
    background-color: transparent;
  }

  /*--- active ---*/

  .ui.text.menu .active.item {
    background-color: transparent;
    border: none;
    box-shadow: none;
    font-weight: normal;
    color: rgba(0, 0, 0, 0.95);
  }

  /*--- active hover ---*/

  .ui.text.menu .active.item:hover {
    background-color: transparent;
  }

  /* Disable Bariations */
  .ui.text.pointing.menu .active.item:after {
    box-shadow: none;
  }
  .ui.text.attached.menu {
    box-shadow: none;
  }

  /* Inverted */
  .ui.inverted.text.menu,
  .ui.inverted.text.menu .item,
  .ui.inverted.text.menu .item:hover,
  .ui.inverted.text.menu .active.item {
    background-color: transparent !important;
  }

  /* Fluid */
  .ui.fluid.text.menu {
    margin-left: 0em;
    margin-right: 0em;
  }

  /*--------------
      Icon Only
  ---------------*/


  /* Vertical Menu */
  .ui.vertical.icon.menu {
    display: inline-block;
    width: auto;
  }

  /* Item */
  .ui.icon.menu .item {
    height: auto;
    text-align: center;
    color: #1B1C1D;
  }

  /* Icon */
  .ui.icon.menu .item > .icon:not(.dropdown) {
    margin: 0;
    opacity: 1;
  }

  /* Icon Gylph */
  .ui.icon.menu .icon:before {
    opacity: 1;
  }

  /* (x) Item Icon */
  .ui.menu .icon.item > .icon {
    width: auto;
    margin: 0em auto;
  }

  /* Vertical Icon */
  .ui.vertical.icon.menu .item > .icon:not(.dropdown) {
    display: block;
    opacity: 1;
    margin: 0em auto;
    float: none;
  }

  /* Inverted */
  .ui.inverted.icon.menu .item {
    color: #FFFFFF;
  }

  /*--------------
     Labeled Icon
  ---------------*/


  /* Menu */
  .ui.labeled.icon.menu {
    text-align: center;
  }

  /* Item */
  .ui.labeled.icon.menu .item {
    min-width: 6em;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
  }

  /* Icon */
  .ui.labeled.icon.menu .item > .icon:not(.dropdown) {
    height: 1em;
    display: block;
    font-size: 1.71428571em !important;
    margin: 0em auto 0.5rem !important;
  }

  /* Fluid */
  .ui.fluid.labeled.icon.menu > .item {
    min-width: 0em;
  }


  /*******************************
             Variations
  *******************************/


  /*--------------
      Stackable
  ---------------*/

  @media only screen and (max-width: 767px) {
    .ui.stackable.menu {
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -ms-flex-direction: column;
      flex-direction: column;
    }
    .ui.stackable.menu .item {
      width: 100% !important;
    }
    .ui.stackable.menu .item:before {
      position: absolute;
      content: '';
      top: auto;
      bottom: 0px;
      left: 0px;
      width: 100%;
      height: 1px;
      background: rgba(34, 36, 38, 0.1);
    }
    .ui.stackable.menu .left.menu,
    .ui.stackable.menu .left.item {
      margin-right: 0 !important;
    }
    .ui.stackable.menu .right.menu,
    .ui.stackable.menu .right.item {
      margin-left: 0 !important;
    }
    .ui.stackable.menu .right.menu,
    .ui.stackable.menu .left.menu {
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -ms-flex-direction: column;
      flex-direction: column;
    }
  }

  /*--------------
       Colors
  ---------------*/


  /*--- Standard Colors  ---*/

  .ui.menu .red.active.item,
  .ui.red.menu .active.item {
    border-color: #DB2828 !important;
    color: #DB2828 !important;
  }
  .ui.menu .orange.active.item,
  .ui.orange.menu .active.item {
    border-color: #F2711C !important;
    color: #F2711C !important;
  }
  .ui.menu .yellow.active.item,
  .ui.yellow.menu .active.item {
    border-color: #FBBD08 !important;
    color: #FBBD08 !important;
  }
  .ui.menu .olive.active.item,
  .ui.olive.menu .active.item {
    border-color: #B5CC18 !important;
    color: #B5CC18 !important;
  }
  .ui.menu .green.active.item,
  .ui.green.menu .active.item {
    border-color: #21BA45 !important;
    color: #21BA45 !important;
  }
  .ui.menu .teal.active.item,
  .ui.teal.menu .active.item {
    border-color: #00B5AD !important;
    color: #00B5AD !important;
  }
  .ui.menu .blue.active.item,
  .ui.blue.menu .active.item {
    border-color: #2185D0 !important;
    color: #2185D0 !important;
  }
  .ui.menu .violet.active.item,
  .ui.violet.menu .active.item {
    border-color: #6435C9 !important;
    color: #6435C9 !important;
  }
  .ui.menu .purple.active.item,
  .ui.purple.menu .active.item {
    border-color: #A333C8 !important;
    color: #A333C8 !important;
  }
  .ui.menu .pink.active.item,
  .ui.pink.menu .active.item {
    border-color: #E03997 !important;
    color: #E03997 !important;
  }
  .ui.menu .brown.active.item,
  .ui.brown.menu .active.item {
    border-color: #A5673F !important;
    color: #A5673F !important;
  }
  .ui.menu .grey.active.item,
  .ui.grey.menu .active.item {
    border-color: #767676 !important;
    color: #767676 !important;
  }

  /*--------------
      Inverted
  ---------------*/

  .ui.inverted.menu {
    border: 0px solid transparent;
    background: #1B1C1D;
    box-shadow: none;
  }

  /* Menu Item */
  .ui.inverted.menu .item,
  .ui.inverted.menu .item > a:not(.ui) {
    background: transparent;
    color: rgba(255, 255, 255, 0.9);
  }
  .ui.inverted.menu .item.menu {
    background: transparent;
  }

  /*--- Border ---*/

  .ui.inverted.menu .item:before {
    background: rgba(255, 255, 255, 0.08);
  }
  .ui.vertical.inverted.menu .item:before {
    background: rgba(255, 255, 255, 0.08);
  }

  /* Sub Menu */
  .ui.vertical.inverted.menu .menu .item,
  .ui.vertical.inverted.menu .menu .item a:not(.ui) {
    color: rgba(255, 255, 255, 0.5);
  }

  /* Header */
  .ui.inverted.menu .header.item {
    margin: 0em;
    background: transparent;
    box-shadow: none;
  }

  /* Disabled */
  .ui.inverted.menu .item.disabled,
  .ui.inverted.menu .item.disabled:hover {
    color: rgba(225, 225, 225, 0.3);
  }

  /*--- Hover ---*/

  .ui.link.inverted.menu .item:hover,
  .ui.inverted.menu .dropdown.item:hover,
  .ui.inverted.menu .link.item:hover,
  .ui.inverted.menu a.item:hover {
    background: rgba(255, 255, 255, 0.08);
    color: #ffffff;
  }
  .ui.vertical.inverted.menu .item .menu a.item:hover,
  .ui.vertical.inverted.menu .item .menu .link.item:hover {
    background: transparent;
    color: #ffffff;
  }

  /*--- Pressed ---*/

  .ui.inverted.menu a.item:active,
  .ui.inverted.menu .link.item:active {
    background: rgba(255, 255, 255, 0.08);
    color: #ffffff;
  }

  /*--- Active ---*/

  .ui.inverted.menu .active.item {
    background: rgba(255, 255, 255, 0.15);
    color: #ffffff !important;
  }
  .ui.inverted.vertical.menu .item .menu .active.item {
    background: transparent;
    color: #FFFFFF;
  }
  .ui.inverted.pointing.menu .active.item:after {
    background: #3D3E3F !important;
    margin: 0em !important;
    box-shadow: none !important;
    border: none !important;
  }

  /*--- Active Hover ---*/

  .ui.inverted.menu .active.item:hover {
    background: rgba(255, 255, 255, 0.15);
    color: #FFFFFF !important;
  }
  .ui.inverted.pointing.menu .active.item:hover:after {
    background: #3D3E3F !important;
  }

  /*--------------
       Floated
  ---------------*/

  .ui.floated.menu {
    float: left;
    margin: 0rem 0.5rem 0rem 0rem;
  }
  .ui.floated.menu .item:last-child:before {
    display: none;
  }
  .ui.right.floated.menu {
    float: right;
    margin: 0rem 0rem 0rem 0.5rem;
  }

  /*--------------
      Inverted
  ---------------*/


  /* Red */
  .ui.inverted.menu .red.active.item,
  .ui.inverted.red.menu {
    background-color: #DB2828;
  }
  .ui.inverted.red.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.red.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Orange */
  .ui.inverted.menu .orange.active.item,
  .ui.inverted.orange.menu {
    background-color: #F2711C;
  }
  .ui.inverted.orange.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.orange.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Yellow */
  .ui.inverted.menu .yellow.active.item,
  .ui.inverted.yellow.menu {
    background-color: #FBBD08;
  }
  .ui.inverted.yellow.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.yellow.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Olive */
  .ui.inverted.menu .olive.active.item,
  .ui.inverted.olive.menu {
    background-color: #B5CC18;
  }
  .ui.inverted.olive.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.olive.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Green */
  .ui.inverted.menu .green.active.item,
  .ui.inverted.green.menu {
    background-color: #21BA45;
  }
  .ui.inverted.green.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.green.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Teal */
  .ui.inverted.menu .teal.active.item,
  .ui.inverted.teal.menu {
    background-color: #00B5AD;
  }
  .ui.inverted.teal.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.teal.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Blue */
  .ui.inverted.menu .blue.active.item,
  .ui.inverted.blue.menu {
    background-color: #2185D0;
  }
  .ui.inverted.blue.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.blue.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Violet */
  .ui.inverted.menu .violet.active.item,
  .ui.inverted.violet.menu {
    background-color: #6435C9;
  }
  .ui.inverted.violet.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.violet.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Purple */
  .ui.inverted.menu .purple.active.item,
  .ui.inverted.purple.menu {
    background-color: #A333C8;
  }
  .ui.inverted.purple.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.purple.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Pink */
  .ui.inverted.menu .pink.active.item,
  .ui.inverted.pink.menu {
    background-color: #E03997;
  }
  .ui.inverted.pink.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.pink.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Brown */
  .ui.inverted.menu .brown.active.item,
  .ui.inverted.brown.menu {
    background-color: #A5673F;
  }
  .ui.inverted.brown.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.brown.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /* Grey */
  .ui.inverted.menu .grey.active.item,
  .ui.inverted.grey.menu {
    background-color: #767676;
  }
  .ui.inverted.grey.menu .item:before {
    background-color: rgba(34, 36, 38, 0.1);
  }
  .ui.inverted.grey.menu .active.item {
    background-color: rgba(0, 0, 0, 0.1) !important;
  }

  /*--------------
       Fitted
  ---------------*/

  .ui.fitted.menu .item,
  .ui.fitted.menu .item .menu .item,
  .ui.menu .fitted.item {
    padding: 0em;
  }
  .ui.horizontally.fitted.menu .item,
  .ui.horizontally.fitted.menu .item .menu .item,
  .ui.menu .horizontally.fitted.item {
    padding-top: 0.92857143em;
    padding-bottom: 0.92857143em;
  }
  .ui.vertically.fitted.menu .item,
  .ui.vertically.fitted.menu .item .menu .item,
  .ui.menu .vertically.fitted.item {
    padding-left: 1.14285714em;
    padding-right: 1.14285714em;
  }

  /*--------------
     Borderless
  ---------------*/

  .ui.borderless.menu .item:before,
  .ui.borderless.menu .item .menu .item:before,
  .ui.menu .borderless.item:before {
    background: none !important;
  }

  /*-------------------
         Compact
  --------------------*/

  .ui.compact.menu {
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    margin: 0em;
    vertical-align: middle;
  }
  .ui.compact.vertical.menu {
    display: inline-block;
  }
  .ui.compact.menu .item:last-child {
    border-radius: 0em 0.28571429rem 0.28571429rem 0em;
  }
  .ui.compact.menu .item:last-child:before {
    display: none;
  }
  .ui.compact.vertical.menu {
    width: auto !important;
  }
  .ui.compact.vertical.menu .item:last-child::before {
    display: block;
  }

  /*-------------------
          Fluid
  --------------------*/

  .ui.menu.fluid,
  .ui.vertical.menu.fluid {
    width: 100% !important;
  }

  /*-------------------
        Evenly Sized
  --------------------*/

  .ui.item.menu,
  .ui.item.menu .item {
    width: 100%;
    padding-left: 0em !important;
    padding-right: 0em !important;
    margin-left: 0em !important;
    margin-right: 0em !important;
    text-align: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
  }
  .ui.attached.item.menu {
    margin: 0em -1px !important;
  }
  .ui.item.menu .item:last-child:before {
    display: none;
  }
  .ui.menu.two.item .item {
    width: 50%;
  }
  .ui.menu.three.item .item {
    width: 33.333%;
  }
  .ui.menu.four.item .item {
    width: 25%;
  }
  .ui.menu.five.item .item {
    width: 20%;
  }
  .ui.menu.six.item .item {
    width: 16.666%;
  }
  .ui.menu.seven.item .item {
    width: 14.285%;
  }
  .ui.menu.eight.item .item {
    width: 12.500%;
  }
  .ui.menu.nine.item .item {
    width: 11.11%;
  }
  .ui.menu.ten.item .item {
    width: 10.0%;
  }
  .ui.menu.eleven.item .item {
    width: 9.09%;
  }
  .ui.menu.twelve.item .item {
    width: 8.333%;
  }

  /*--------------
       Fixed
  ---------------*/

  .ui.menu.fixed {
    position: fixed;
    z-index: 101;
    margin: 0em;
    width: 100%;
  }
  .ui.menu.fixed,
  .ui.menu.fixed .item:first-child,
  .ui.menu.fixed .item:last-child {
    border-radius: 0px !important;
  }
  .ui.fixed.menu,
  .ui[class*="top fixed"].menu {
    top: 0px;
    left: 0px;
    right: auto;
    bottom: auto;
  }
  .ui[class*="top fixed"].menu {
    border-top: none;
    border-left: none;
    border-right: none;
  }
  .ui[class*="right fixed"].menu {
    border-top: none;
    border-bottom: none;
    border-right: none;
    top: 0px;
    right: 0px;
    left: auto;
    bottom: auto;
    width: auto;
    height: 100%;
  }
  .ui[class*="bottom fixed"].menu {
    border-bottom: none;
    border-left: none;
    border-right: none;
    bottom: 0px;
    left: 0px;
    top: auto;
    right: auto;
  }
  .ui[class*="left fixed"].menu {
    border-top: none;
    border-bottom: none;
    border-left: none;
    top: 0px;
    left: 0px;
    right: auto;
    bottom: auto;
    width: auto;
    height: 100%;
  }

  /* Coupling with Grid */
  .ui.fixed.menu + .ui.grid {
    padding-top: 2.75rem;
  }

  /*-------------------
         Pointing
  --------------------*/

  .ui.pointing.menu .item:after {
    visibility: hidden;
    position: absolute;
    content: '';
    top: 100%;
    left: 50%;
    -webkit-transform: translateX(-50%) translateY(-50%) rotate(45deg);
    transform: translateX(-50%) translateY(-50%) rotate(45deg);
    background: none;
    margin: 0.5px 0em 0em;
    width: 0.57142857em;
    height: 0.57142857em;
    border: none;
    border-bottom: 1px solid #D4D4D5;
    border-right: 1px solid #D4D4D5;
    z-index: 2;
    -webkit-transition: background 0.1s ease;
    transition: background 0.1s ease;
  }
  .ui.vertical.pointing.menu .item:after {
    position: absolute;
    top: 50%;
    right: 0%;
    bottom: auto;
    left: auto;
    -webkit-transform: translateX(50%) translateY(-50%) rotate(45deg);
    transform: translateX(50%) translateY(-50%) rotate(45deg);
    margin: 0em -0.5px 0em 0em;
    border: none;
    border-top: 1px solid #D4D4D5;
    border-right: 1px solid #D4D4D5;
  }

  /* Active */
  .ui.pointing.menu .active.item:after {
    visibility: visible;
  }
  .ui.pointing.menu .active.dropdown.item:after {
    visibility: hidden;
  }

  /* Don't double up pointers */
  .ui.pointing.menu .dropdown.active.item:after,
  .ui.pointing.menu .active.item .menu .active.item:after {
    display: none;
  }

  /* Colors */
  .ui.pointing.menu .active.item:hover:after {
    background-color: #F2F2F2;
  }
  .ui.pointing.menu .active.item:after {
    background-color: #F2F2F2;
  }
  .ui.pointing.menu .active.item:hover:after {
    background-color: #F2F2F2;
  }
  .ui.vertical.pointing.menu .active.item:hover:after {
    background-color: #F2F2F2;
  }
  .ui.vertical.pointing.menu .active.item:after {
    background-color: #F2F2F2;
  }
  .ui.vertical.pointing.menu .menu .active.item:after {
    background-color: #FFFFFF;
  }

  /*--------------
      Attached
  ---------------*/


  /* Middle */
  .ui.attached.menu {
    top: 0px;
    bottom: 0px;
    border-radius: 0px;
    margin: 0em -1px;
    width: calc(100% +  2px );
    max-width: calc(100% +  2px );
    box-shadow: none;
  }
  .ui.attached + .ui.attached.menu:not(.top) {
    border-top: none;
  }

  /* Top */
  .ui[class*="top attached"].menu {
    bottom: 0px;
    margin-bottom: 0em;
    top: 0px;
    margin-top: 1rem;
    border-radius: 0.28571429rem 0.28571429rem 0em 0em;
  }
  .ui.menu[class*="top attached"]:first-child {
    margin-top: 0em;
  }

  /* Bottom */
  .ui[class*="bottom attached"].menu {
    bottom: 0px;
    margin-top: 0em;
    top: 0px;
    margin-bottom: 1rem;
    box-shadow: 0px 1px 2px 0 rgba(34, 36, 38, 0.15), none;
    border-radius: 0em 0em 0.28571429rem 0.28571429rem;
  }
  .ui[class*="bottom attached"].menu:last-child {
    margin-bottom: 0em;
  }

  /* Attached Menu Item */
  .ui.top.attached.menu > .item:first-child {
    border-radius: 0.28571429rem 0em 0em 0em;
  }
  .ui.bottom.attached.menu > .item:first-child {
    border-radius: 0em 0em 0em 0.28571429rem;
  }

  /* Tabular Attached */
  .ui.attached.menu:not(.tabular) {
    border: 1px solid #D4D4D5;
  }
  .ui.attached.inverted.menu {
    border: none;
  }
  .ui.attached.tabular.menu {
    margin-left: 0;
    margin-right: 0;
    width: 100%;
  }

  /*--------------
       Sizes
  ---------------*/


  /* Mini */
  .ui.mini.menu {
    font-size: 0.78571429rem;
  }
  .ui.mini.vertical.menu {
    width: 9rem;
  }

  /* Tiny */
  .ui.tiny.menu {
    font-size: 0.85714286rem;
  }
  .ui.tiny.vertical.menu {
    width: 11rem;
  }

  /* Small */
  .ui.small.menu {
    font-size: 0.92857143rem;
  }
  .ui.small.vertical.menu {
    width: 13rem;
  }

  /* Medium */
  .ui.menu {
    font-size: 1rem;
  }
  .ui.vertical.menu {
    width: 15rem;
  }

  /* Large */
  .ui.large.menu {
    font-size: 1.07142857rem;
  }
  .ui.large.vertical.menu {
    width: 18rem;
  }

  /* Huge */
  .ui.huge.menu {
    font-size: 1.14285714rem;
  }
  .ui.huge.vertical.menu {
    width: 20rem;
  }

  /* Big */
  .ui.big.menu {
    font-size: 1.21428571rem;
  }
  .ui.big.vertical.menu {
    width: 22rem;
  }

  /* Massive */
  .ui.massive.menu {
    font-size: 1.28571429rem;
  }
  .ui.massive.vertical.menu {
    width: 25rem;
  }
</style>
