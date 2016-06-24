$(document).ready(function () {
  $('.likeButton').on('click', function (event) {
     event.stopImmediatePropagation()
     var path = $(this).attr('href')
     var counter = $(this).siblings('.likesCounter')
     var currentValue = parseInt(counter.text(), 10)
     $.post(path, function (data) {
       if (data.destroyed) {
         currentValue--
       } else if (data.created) {
         currentValue++
       }
       counter.text(currentValue)
     })
     return false
  })
})
