console.log(this)

@Flatout = do(Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    sidebarRegion: "#side-region"
    headerRegion: "#header-region"
    exerciseRegion: "#exercise-region"

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()

  App
