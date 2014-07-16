(($, window, undefined_) ->
  $documentElement = $("html, body")

  $.CBPNTAccordion = (options, element) ->
    @$el = $(element)
    @_init options

  $.CBPNTAccordion.defaults = {}

  $.CBPNTAccordion:: =
    _init: (options) ->
      @options = $.extend(true, {}, $.CBPNTAccordion.defaults, options)
      @_config()
      @_initEvents()

    _config: -> @$items = @$el.find(".cbp-nttrigger")

    _initEvents: ->
      @$items.on "click.cbpNTAccordion", ->
        $listItem = $(this).parent()
        if $listItem.hasClass("cbp-ntopen") then $listItem.removeClass "cbp-ntopen"
        else
          $listItem.addClass "cbp-ntopen"
          $documentElement.scrollTop $listItem.offset().top

    destroy: -> @$items.off(".cbpNTAccordion").parent().removeClass "cbp-ntopen"

  logError = (message) -> window.console.error message if window.console

  $.fn.cbpNTAccordion = (options) ->
    if typeof options is "string"
      args = Array::slice.call(arguments_, 1)
      @each ->
        instance = $.data(this, "cbpNTAccordion")
        unless instance
          logError "cannot call methods on cbpNTAccordion prior to initialization; " + "attempted to call method '" + options + "'"
        if not $.isFunction(instance[options]) or options.charAt(0) is "_"
          logError "no such method '" + options + "' for cbpNTAccordion instance"
        instance[options].apply instance, args

    else
      @each ->
        instance = $.data(this, "cbpNTAccordion")
        if instance then instance._init()
        else
          instance = $.data(this, "cbpNTAccordion", new $.CBPNTAccordion(options, this))
    this

) jQuery, window