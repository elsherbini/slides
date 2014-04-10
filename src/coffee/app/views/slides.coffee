define ['backbone','app/models/slide', 'app/views/slide'], (Backbone, SlideModel, SlideView) ->

    
    class SlidesView extends Backbone.View

        el: $('.slides')

        initialize: ->
            @renderAll()

        renderAll: ->
            @$el.empty() #make sure the '.slides' element is empty
            @collection.each(@render) #call render on each of the models in the collection

        render: (slide, parentNode) =>
            slideView = new SlideView (model: slide)
            @$el.append slideView.render().el
            

