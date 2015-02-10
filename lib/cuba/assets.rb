require "pathname"
require "sprockets"

module Cuba::Assets
  def self.setup(app)
    app.settings[:assets] ||= {}
    app.settings[:assets][:assets_dir] ||= "assets/"
    app.settings[:assets][:css_compressor] ||= :scss
    app.settings[:assets][:js_compressor] ||= :uglify
  end

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

    environment.js_compressor  = Cuba.settings[:assets][:js_compressor]
    environment.css_compressor = Cuba.settings[:assets][:css_compressor]

    environment
  end

  def assets_dir
    @assets_dir ||= Pathname(Cuba.settings[:assets][:assets_dir]).expand_path.to_s
  end
end
