# desc "Explaining what the task does"
# task :neditor_rails do
#   # Task goes here
# end

assets_task = Rake::Task.task_defined?('assets:precompile:primary') ? 'assets:precompile:primary' : 'assets:precompile'

Rake::Task[assets_task].enhance do
  require "neditor_rails/asset_installer"

  config   = Rails.application.config
  target   = File.join(Rails.public_path, config.assets.prefix)
  manifest = config.assets.manifest

  NeditorRails::AssetInstaller.new(target, manifest).install
end
