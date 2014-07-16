$ ->
  $('.delete-survey').on 'ajax:success', ->
    $(@).closest('li').fadeOut()
