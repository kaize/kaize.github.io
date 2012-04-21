module Jekyll

  class PageUrl < Liquid::Tag
    def initialize(tag_name, slug, tokens)
      super
      @slug = slug.strip
    end

    def render(context)
      site = context.registers[:site]

      site.pages.each do |p|
        if p.basename == @slug
          return p.to_liquid['url']
        end
      end

      puts "ERROR: page_url: \"#{@slug}\" could not be found"

      return "#"
    end
  end
end

Liquid::Template.register_tag('page_url', Jekyll::PageUrl)
