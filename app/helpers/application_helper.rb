module ApplicationHelper
  def fa_icon_tag(name, opts={})
		content_tag(:i, nil, class: "fa fa-#{name} #{opts[:class]}")
	end
end
