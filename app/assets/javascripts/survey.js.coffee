$ ->
  $('.delete-survey').on 'ajax:success', ->
    $(@).closest('li').fadeOut()

  $('#cbp-ntaccordion').cbpNTAccordion()
