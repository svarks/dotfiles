require 'yaml'

current_dir = File.expand_path('..', __FILE__)

def log(message, color = 33)
  puts "\e[1;#{color}m#{message}\e[0m"
end

task :default => [:install]

desc 'Install dotfiles'
task :install do
  log 'Copying symlinks...'
  %w(bash_profile bashrc gemrc irbrc railsrc gitconfig vim vimrc).each do |file|
    system %Q{ln -vnfs "#{current_dir}/#{file}" "$HOME/.#{file}"}
  end
  
  Rake::Task["vim:bundles:install"].invoke
end

namespace :vim do
  namespace :bundles do

    desc 'Install vim bundles'
    task :install => [:update] do
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

