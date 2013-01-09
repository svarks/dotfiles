require 'yaml'

CURRENT_DIR = File.expand_path('..', __FILE__)

task :default => [:symlinks, 'vim:bundles:install']

desc 'Create symlinks'
task :symlinks do
  log 'Copying symlinks...'
  files = Dir[File.join(CURRENT_DIR, "symlinks/*")]
  files << File.join(CURRENT_DIR, "vim")
  files.each do |file|
    system %Q{ln -vnfs "#{file}" "$HOME/.#{file.split('/').last}"}
  end
end

namespace :vim do
  namespace :bundles do
    task :install => [:update, :cleanup, :compile]

    desc 'Compile vim bundles'
    task :compile do
      log "Building Command-T extension..."
      system "cd #{CURRENT_DIR}/vim/bundle/command-t/ruby/command-t" +
        " && ruby extconf.rb" +
        " && make clean" +
        " && make"
    end

    task :update do
      log "Updating vim bundles..."
      get_bundles.each do |bundle_url, bundle_name|
        log "Checking #{bundle_name}...", 32
        bundle_path = "#{CURRENT_DIR}/vim/bundle/#{bundle_name}"
        if (File.exists?(bundle_path))
          system "cd #{bundle_path} && git pull"
        else
          system "git clone -q #{bundle_url} #{bundle_path}"
        end
      end
    end

    task :cleanup do
      bundle_names = get_bundles.map {|_, name| name }
      Dir["#{CURRENT_DIR}/vim/bundle/*"].each do |dir|
        bundle_name = dir.split('/').last
        unless bundle_names.include? bundle_name
          log "deleting untracked bundle #{bundle_name}.."
          system "rm -rf #{dir}"
        end
      end
    end
  end
end

def get_bundles
  bundles = YAML.load_file("#{CURRENT_DIR}/vim-bundles.yml")
  bundles.map do |bundle|
    url  = "git://github.com/#{bundle}.git"
    name = bundle.split('/').last.downcase
    [url, name]
  end
end

def log(message, color = 33)
  puts "\e[1;#{color}m#{message}\e[0m"
end
