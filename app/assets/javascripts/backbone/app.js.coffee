console.log(this)

@Flatout = do(Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    sidebarRegion: "#side-region"
    headerRegion: "#header-region"
    exerciseRegion: "#exercise-region"

  App.addInitializer ->
    App.module("SidebarApp").start()
    App.module("HeaderApp").start()

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()

  App
