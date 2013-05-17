Backbone.Marionette.Renderer.render = (template, data) ->
  path = JST["backbone/apps/" + template]
  unless path
    throw "template #{template} not found!"
  path(data)
