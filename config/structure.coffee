# Read more about app structure at http://docs.appgyver.com

module.exports =

  # See styling options for tabs and other native components in app/common/native-styles/ios.css or app/common/native-styles/android.css
  # tabs: [
  #   {
  #     title: "Index"
  #     id: "index"
  #     location: "home#index"
  #   }
  #   {
  #     title: "Wishlist"
  #     id: "wishlist",
  #     location: "wishlist#index" 
  #   }    
  #   {
  #     title: "Gift Ideas"
  #     id: "giftideas",
  #     icon: "/icons/bulb.svg"
  #     location: "giftidea#index" 
  #   }
  #   {
  #     title: "Settings"
  #     id: "settings"
  #     location: "settings#index"
  #   }    
  # ]

  rootView:
    location: "home#index"

  preloads: [
    {
      id: "home-index"
      location: "home#index"
    }
  ]

  drawers:
    left:
      id: "drawer-main"
      location: "drawer#content"
      showOnAppLoad: false
    options:
      animation: "swingingDoor"
      
  #
  # initialView:
  #   id: "initialView"
  #   location: "example#initial-view"
