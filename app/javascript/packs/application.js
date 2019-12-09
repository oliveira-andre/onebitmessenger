require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import bulmaQuickView from 'bulma-quickview/src/js'

document.addEventListener('turbolinks:load', function () {
  let quickviews = bulmaQuickView.attach()
})