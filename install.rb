#!/usr/bin/env ruby

Dir.chdir File.dirname(__FILE__) do
  Dir['*'].each do |file|
    next unless File.file? file
    next if ["install.rb"].include? file
    
    system %Q{ln -sfv "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
