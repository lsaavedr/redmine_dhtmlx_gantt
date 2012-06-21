# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'projects/:project_id/polls/:action', :to => 'polls'
post 'projects/:project_id/polls/:id/:answer/vote', :to => 'polls#vote'
