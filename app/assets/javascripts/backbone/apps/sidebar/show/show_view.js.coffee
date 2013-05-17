@Flatout.module "SidebarApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Sidebar extends Marionette.ItemView
    template: "sidebar/show/templates/show_sidebar"
