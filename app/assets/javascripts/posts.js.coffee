# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  return unless $('#post_content').lenght > 0
    $('#post_content').wysihtml5({
      "font-styles": true,
      "emphasis": true,
      "lists": true,
      "html": true,
      "link": true,
      "image": true,
      "color": true
    })