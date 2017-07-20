module BlogsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true,
    }

    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end

  def blog_status_color blog
    'color: red;' if blog.draft?
  end
  
  def topics_helper
    link = ''
    
    if(action_name == "index" || (controller_name == "topics" && action_name == "show"))
       Topic.all.each do |topic|
         link += "<p>"
         link += link_to topic.title, topic_path(topic)
         link += "</p> "
       end
    elsif(action_name == "show")
        @side_bar_topics.each do |topic|
          link += "<p>"
          link += link_to topic.title, topic_path(topic)
          link += "</p> "
      end
    end
    
    link.split
  end
end
