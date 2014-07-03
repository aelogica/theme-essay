module ThemeEssay
  class Engine < ::Rails::Engine
    isolate_namespace ThemeEssay

    initializer :assets do |config|
      engine_assets_path = File.join(File.dirname(__FILE__), '..', '..', 'app', 'assets')
      all_assets = Dir.glob File.join(engine_assets_path, 'stylesheets', '**', '*.css*')
      all_assets += Dir.glob File.join(engine_assets_path, 'javascripts', '**', '*.js*')
      all_assets.each {|path| path.gsub!("#{engine_assets_path}/stylesheets/", '')}
      all_assets.each {|path| path.gsub!("#{engine_assets_path}/javascripts/", '')}
      all_assets.each {|path| path.gsub!(/.(scss|coffee|sass)$/, '')}
      Rails.application.config.assets.precompile += all_assets
    end
  end
end
