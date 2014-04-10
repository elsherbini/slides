define ['backbone'], (Backbone) ->
	class Slide extends Backbone.Model 
		defaults: 
			type: null
			content: ''