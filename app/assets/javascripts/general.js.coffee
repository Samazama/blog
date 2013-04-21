jQuery ->
  return unless $('.header').length > 0
  header = $('.header')
  header.css('cursor', 'pointer')
  header.click ->
    window.location.replace('/')