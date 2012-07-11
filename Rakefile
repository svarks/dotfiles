require 'yaml'

current_dir = File.expand_path('..', __FILE__)

def log(message, color = 33)
  puts "\e[1;#{color}m#{message}\e[0m"
end

task :default => :install
task :install => [:symlinks, 'vim:bundles:all']

desc 'Create symlinks'
task :symlinks do
  log 'Copying symlinks...'
  files = Dir[File.join(current_dir, "symlinks/*")]
  files << File.join(current_dir, "vim")
  files.each do |file|
    system %Q{ln -vnfs "#{file}" "$HOME/.#{file.split('/').last}"}
  end
end

namespace :vim do
  namespace :bundles do
    task :all => [:update, :install]

    desc 'Install vim bundles'
    task :install do
      log "Building Command-T extension..."
      system "cd #{current_dir}/vim/bundle/command-t/ruby/command-t" +
        " && ruby extconf.rb" +
        " && make clean" +
        " && make"
    end

    task :update do
      log "Updating vim bundles..."
      bundles = YAML.load_file("#{current_dir}/vim-bundles.yml")
      bundles.each do |bundle|
        log "Checking #{bundle}...", 32
        bundle_url  = "https://github.com/#{bundle}.git"
        bundle_name = bundle.split('/').last.downcase
        bundle_path = "#{current_dir}/vim/bundle/#{bundle_name}"
        if (File.exists?(bundle_path))
          system "cd #{bundle_path} && git pull"
        else
          system "git clone -q #{bundle_url} #{bundle_path}"
        end
      end
    end

    task :clean do
      system "rm -vrf #{current_dir}/vim/bundle/*"
    end
  end
end
