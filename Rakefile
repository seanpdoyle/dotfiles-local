require "rake"
require "fileutils"

desc "Install the dotfiles"
task :install => [:locals, :git_template] do
  puts "Setting reasonable OS X defaults"
  `./osx/defaults`
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

desc "Link git_template directory"
task :git_template do
  file = "git_template"
  target = "#{ ENV['HOME'] }/.#{ file }"

  if File.exists?(target)
    puts "Skipping #{ file }"
  else
    puts "Linking #{ file } into #{ target }"
    FileUtils.ln "#{ FileUtils.pwd }/#{ file }", "#{ target }"
  end
end

task :default => :install
