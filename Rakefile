require "rake"
require "fileutils"

desc "run laptop.local"
task :laptop do
  system "bash laptop.local"
end

desc "Link into home directory"
task :locals do
  Dir["**{.local}"].each do |linkable|
    file   = linkable.split("/").last
    target = "#{ ENV['HOME'] }/.#{ file }"

    if File.exists?(target)
      puts "Skipping #{ file }"
    else
      puts "Linking #{ file } into #{ target }"
      FileUtils.ln_s "#{ FileUtils.pwd }/#{ linkable }", "#{ target }"
    end
  end
end

desc "Assign OS X defaults"
task :os_x_defaults do
  puts "Setting reasonable OS X defaults"
  system "./osx/defaults"
end

desc "Install system dependencies"
task :brew do
  system "brew bundle"
end
task :homebrew => :brew

desc "Install the dotfiles"
task :install => [:locals, :os_x_defaults, :homebrew, :laptop]
task :default => :install
