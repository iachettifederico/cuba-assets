require "pathname"
require "sprockets"

Cuba.settings[:assets_dir] = "assets/"

Cuba.settings[:js_compressor]  = :uglify
Cuba.settings[:css_compressor] = :scss
module Cuba::Assets
  def asset(path)
    environment[path]
  end

  def assets_dir=(path)
    @assets_dir = path
  end

  private
  def environment
    @environment ||= get_environment
  end

  def get_environment
    environment = Sprockets::Environment.new
    environment.append_path "#{assets_dir}/javascripts"
    environment.append_path "#{assets_dir}/styles"
    environment.append_path "#{assets_dir}/fonts"
    environment.append_path "#{assets_dir}/images"

    environment.js_compressor  = Cuba.settings[:js_compressor]
    environment.css_compressor = Cuba.settings[:css_compressor]

    environment
  end

  def assets_dir
    @assets_dir ||= Pathname(Cuba.settings[:assets_dir]).expand_path.to_s
  end
end
