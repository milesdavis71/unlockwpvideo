import $ from "jquery";

class Search {
  // 1. describe and create/initiate an object
  constructor() {
    this.openButton = $(".js-search-trigger");
    this.closeButton = $(".search-overlay__close");
    this.searchOverlay = $(".search-overlay");
    this.searchField = $(".search-term");
    this.events();
    this.isOverlayOpen = false;
    this.typingTimer;
  }

  // 2. events

  events() {
    this.openButton.on("click", this.openOverlay.bind(this));
    this.closeButton.on("click", this.closeOverlay.bind(this));
    $(document).on("keydown", this.keyPressDispatcher.bind(this));
    this.searchField.on("keydown", this.typingLogic.bind(this));
  }

  // 3. methods (function, action...)
  typingLogic() {
    clearTimeout(this.typingTimer);
    this.typingTimer = setTimeout(function () {
      console.log("megy a settimeout");
    }, 2000);
  }

  keyPressDispatcher(e) {
    if (e.keyCode == 83 && !this.isOpenOverlay) this.openOverlay();
    if (e.keyCode == 27 && this.isOpenOverlay) this.closeOverlay();
  }
  openOverlay() {
    this.searchOverlay.addClass("search-overlay--active");
    $("body").addClass("body-no-scroll");
    this.isOverlaOpen = true;
  }

  closeOverlay() {
    this.searchOverlay.removeClass("search-overlay--active");
    $("body").removeClass("body-no-scroll");
    this.isOverlaOpen = false;
  }
}

export default Search;
