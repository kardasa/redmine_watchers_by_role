require 'redmine'

require_dependency 'hooks/hooks'
Redmine::Plugin.register :redmine_watchers_by_role do
  name 'Watcher Sellection by Role'
  author 'Milan Stastny of ALVILA SYSTEMS'
  description 'Allows issue creator to select multiple watchers by role assigment'
  version '0.0.1'
  author_url 'http://www.alvila.com'
  project_module "multiple_watchers" do
    permission :display_in_selection, { :watchers => :permissions }
  end
end

