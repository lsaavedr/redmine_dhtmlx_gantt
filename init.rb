Redmine::Plugin.register :redmine_dhtmlx_gantt do
  name 'Redmine dhtmlxGantt plugin'
  author 'Luis Saavedra'
  description 'This is a dhtmlxGantt plugin for Redmine'
  version '0.0.2'
  url 'https://github.com/lsaavedr/redmine_dhtmlx_gantt'
  author_url 'https://github.com/lsaavedr'

  project_module :dhtmlxgantt do
    permission :view_dhtmlxgantt, :dhtmlx_gantt_project => :index
  end
  menu :project_menu, :dhtmlxgantt, { :controller => :dhtmlx_gantt_project, :action => :index }, :caption => :dhtmlxgantt, :after => :new_issue, :param => :project_id
end
