require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import bulmaQuickView from 'bulma-quickview/src/js'

document.addEventListener('turbolinks:load', function () {
  let quickviews = bulmaQuickView.attach()
  const fileInput = document.querySelectorAll('input[type=file].file-input')
  fileInput.forEach(input => {
    input.onchange = () => {
      if (input.files.length > 0) {
        const fileName = input.parentNode.querySelector(".file-name")
        fileName.textContent = input.files[0].name
      }
    }
  })
})