require "jekyll"

module Elements
  class ImageLinkGenerator < Jekyll::Generator
    safe true
    priority :lowest

    def initialize(config)
      @config = config
    end

    def generate(site)
      documents = site.pages
      documents.each do |document|
        next unless document.relative_path =~ %r{_pages/(de|en)/elements}
        document.content = document.content.gsub(/\(([^.]+\.(?:png|pdf|jpg|jpeg))\)/, '(https://periodic-system-api.plunien.com/public/assets/\1)')
        document
      end
    end
  end
end
