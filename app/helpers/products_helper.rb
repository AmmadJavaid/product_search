module ProductsHelper
  def render_tags(tags)
    tags.split(',').collect{|tag| "<span class='label label-info m-l-xs'>#{tag}</span>" }.join().html_safe
  end
end
