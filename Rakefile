require 'rake'

desc 'Install the dotfiles'
task :install do
  puts 'Setting reasonable OS X defaults'
  `./osx/defaults`

  Dir['**{.local}'].each do |linkable|
    file   = linkable.split('/').last
    target = "#{ ENV['HOME'] }/.#{ file }"

    if File.exists?(target)
      puts "Skipping #{ file }"
    else
      puts "Linking #{ file } into #{ target }"
      `ln -s "$PWD/#{ linkable }" "#{ target }"`
    end
  end
end
