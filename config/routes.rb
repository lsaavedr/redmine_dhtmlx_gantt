# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'dhtmlxGantt/:action', :to => 'dhtmlx_gantt'
get 'projects/:project_id/dhtmlxGantt/:action', :to => 'dhtmlx_gantt_project'
