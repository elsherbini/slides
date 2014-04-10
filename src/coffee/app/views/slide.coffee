define ['backbone', 'app/models/slide'], (Backbone, SlideModel) ->
	class SlideView extends Backbone.View

		className: 'slide'

		render: ->
			@$el.append( @model.get 'content')
			return @	
