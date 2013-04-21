jQuery ->
  $('#manga_picture').change ->
    $('.manga_picture_preview')
      .attr("src", $(this).val())

    reader.readAsDataURL(f);

  return unless $('#manga_plot').lenght > 0
    $('#manga_plot').wysihtml5({
                                 "font-styles": true,
                                 "emphasis": true,
                                 "lists": false,
                                 "html": true,
                                 "link": true,
                                 "image": false,
                                 "color": true
                                 })