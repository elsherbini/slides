define ['backbone', 'app/models/slide'], (Backbone, SlideModel) ->
  class SlideView extends Backbone.View

    tagName: 'section'

    className: 'slide'

    render: ->
      @$el.append( @model.get 'content')
      @$el.find('pre').addClass('prettyprint')
      return @
