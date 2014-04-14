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
        <script>function change(){clearTimeout(timeout),"grouped"===this.value?transitionGrouped():transitionStacked()}function transitionGrouped(){y.domain([0,yGroupMax]),rect.transition().duration(500).delay(function(a,b){return 10*b}).attr("x",function(a,b,c){return x(a.x)+x.rangeBand()/n*c}).attr("width",x.rangeBand()/n).transition().attr("y",function(a){return y(a.y)}).attr("height",function(a){return height-y(a.y)})}function transitionStacked(){y.domain([0,yStackMax]),rect.transition().duration(500).delay(function(a,b){return 10*b}).attr("y",function(a){return y(a.y0+a.y)}).attr("height",function(a){return y(a.y0)-y(a.y0+a.y)}).transition().attr("x",function(a){return x(a.x)}).attr("width",x.rangeBand())}function bumpLayer(a,b){function c(b){for(var c=1/(.1+Math.random()),d=2*Math.random()-.5,e=10/(.1+Math.random()),f=0;a>f;f++){var g=(f/a-d)*e;b[f]+=c*Math.exp(-g*g)}}var e,d=[];for(e=0;a>e;++e)d[e]=b+b*Math.random();for(e=0;5>e;++e)c(d);return d.map(function(a,b){return{x:b,y:Math.max(0,a)}})}var n=4,m=21,stack=d3.layout.stack(),layers=stack(d3.range(n).map(function(){return bumpLayer(m,.1)})),yGroupMax=d3.max(layers,function(a){return d3.max(a,function(a){return a.y})}),yStackMax=d3.max(layers,function(a){return d3.max(a,function(a){return a.y0+a.y})}),margin={top:40,right:10,bottom:20,left:10},width=960-margin.left-margin.right,height=500-margin.top-margin.bottom,x=d3.scale.ordinal().domain(d3.range(m)).rangeRoundBands([0,width],.08),y=d3.scale.linear().domain([0,yStackMax]).range([height,0]),color=d3.scale.linear().domain([0,n-1]).range(["#aad","#556"]),xAxis=d3.svg.axis().scale(x).tickSize(0).tickPadding(6).orient("bottom"),svg=d3.select("svg").attr("width",width+margin.left+margin.right).attr("height",height+margin.top+margin.bottom).append("g").attr("transform","translate("+margin.left+","+margin.top+")"),layer=svg.selectAll(".layer").data(layers).enter().append("g").attr("class","layer").style("fill",function(a,b){return color(b)}),rect=layer.selectAll("rect").data(function(a){return a}).enter().append("rect").attr("x",function(a){return x(a.x)}).attr("y",height).attr("width",x.rangeBand()).attr("height",0);rect.transition().delay(function(a,b){return 10*b}).attr("y",function(a){return y(a.y0+a.y)}).attr("height",function(a){return y(a.y0)-y(a.y0+a.y)}),svg.append("g").attr("class","x axis").attr("transform","translate(0,"+height+")").call(xAxis),d3.selectAll("input").on("change",change);var timeout=setTimeout(function(){d3.select('input[value="grouped"]').property("checked",!0).each(change)},2e3);</script>
        ''')

  appView = new AppView()