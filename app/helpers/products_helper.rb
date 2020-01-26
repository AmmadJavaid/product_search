module ProductsHelper
  def render_tags(tags)
    tags.collect do |tag|
      content_tag(:span, tag, class: "label label-info m-l-xs")
    end.join.html_safe
  end
end
