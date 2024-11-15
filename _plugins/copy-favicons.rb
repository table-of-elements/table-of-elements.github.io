require "fileutils"

module Jekyll
  Jekyll::Hooks.register :site, :post_write do |post|
    Dir.glob('_favicon/*.*') do |src|
      dst = File.join('_site', File.basename(src))
      FileUtils.cp(src, dst)
    end
  end
end
