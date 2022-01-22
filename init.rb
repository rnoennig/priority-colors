require_dependency 'priority_colors_hook_listener'

Redmine::Plugin.register :priority_colors do
  name 'Priority Colors plugin'
  author 'Robert Nönnig'
  description 'This is a plugin for Redmine to add color to your tickets based on the ticket\'s priority'
  version '0.0.1'
  url 'https://github.com/rnoennig/PriorityColors'
  author_url 'http://rnoennig.de/about'

  settings default: {'empty' => true}, partial: 'settings/priority_colors_settings'
end
