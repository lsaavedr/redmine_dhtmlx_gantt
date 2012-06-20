# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
match 'projects/:project_id/polls/:id/:action', :to => 'polls'
