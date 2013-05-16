@Flatout.module "SidebarApp", (SidebarApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    showSidebar ->
      SidebarApp.Show.Controller.showSidebar()


      #14:30 on bitcast
