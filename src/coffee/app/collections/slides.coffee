define ['backbone', 'models/slide'] (Backbone, SlideModel) ->
	class Slides extends Backbone.Collection
		model: SlideModel
