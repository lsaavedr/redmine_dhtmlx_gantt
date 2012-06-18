Redmine::Plugin.register :git_lab_hooks do
  name 'GitLab Hooks plugin'
  author 'Luis Saavedra'
  description 'This is a plugin for Redmine GitLab-Hooks integration'
  version '0.0.1'
  url 'https://github.com/lsaavedr/git_lab_hooks'
  author_url 'https://github.com/lsaavedr'

  project_module :polls do
    permission :view_polls, :polls => :index
    permission :vote_polls, :polls => :vote
  end

  menu :project_menu, :polls, { :controller => 'polls', :action => 'index' }, :caption => 'Polls', :after => :activity, :param => :project_id
end
