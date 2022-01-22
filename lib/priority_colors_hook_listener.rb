class PriorityColorsHookListener < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context)
    priority_settings = Setting.plugin_priority_colors['priority_colors_priorities']
    unless priority_settings.nil?
      styles = []
      priority_settings.split(',').each do |prio_id|
        priority_color = Setting.plugin_priority_colors['priority_colors_priority_' + prio_id]
        unless priority_color.nil? or priority_color.empty?
          styles += ["tr.issue.priority-#{prio_id} { background-color: #{priority_color}; }"]
        end
      end
      return "<style type=\"text/css\">#{styles.join("\n")}</style>"
    end
  end
end

