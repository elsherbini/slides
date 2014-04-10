define ['backbone', '../models/slide'], (Backbone, SlideModel) ->
	class SlideView extends Backbone.View

		className: 'slide'

		render: ->
			this.$el.append(this.model.get 'content')
