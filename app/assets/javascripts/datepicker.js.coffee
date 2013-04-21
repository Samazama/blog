$ ->
  $("input.datepicker").each (i) ->
    $(this).datepicker
      altFormat: "mm-dd-yy"
      dateFormat: "dd/mm/yy"
      language: "french"
      altField: $(this).next()