define ['backbone','app/views/slides','app/collections/slides','app/compiledSlides' ], (Backbone, SlidesView, SlidesCollection, mySlides) ->

  class AppView extends Backbone.View

    el: "body"

    events: {}

    initialize: ->
      slides = new SlidesView
        collection: new SlidesCollection(mySlides)
      @hackery()

    hackery: ->
      @$el.append('''
        <script>
        $(document).ready(function() {
          $('pre code').each(function(i, e) {hljs.highlightBlock(e)});
        });
        stack();
        </script>        
        ''')

  appView = new AppView()