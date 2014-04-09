define ['backbone'], (Backbone) ->
	slide = Backbone.Model.extend 
		defaults: 
			type: null
			content: ''
	return slide