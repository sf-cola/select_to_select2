require 'redmine'

Redmine::Plugin.register :select_to_select2 do
  name 'Select To Select2 Plugin'
  author 'Shuhei FURUYA'
  description 'Replace Select Tag to Select2'
  version '0.1.0'
  url 'https://github.com/sf-cola/select_to_select2'
  author_url 'https://github.com/sf-cola'
end

class SelectToSelect2ViewListener < Redmine::Hook::ViewListener

  # Adds javascript and stylesheet tags
  def view_layouts_base_html_head(context)
      javascript_include_tag('select2-3.4.5/select2.js', :plugin => :select_to_select2) +
      javascript_include_tag('slecttoselect2main.js', :plugin => :select_to_select2) +
      stylesheet_link_tag('select2-3.4.5/select2.css', :plugin => :select_to_select2)
  end
  
end

