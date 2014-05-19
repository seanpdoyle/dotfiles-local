require 'rake'

desc 'Install the dotfiles'
task :install do
  Dir['**{.local}'].each do |linkable|
    file   = linkable.split('/').last
    target = "#{ ENV['HOME'] }/.#{ file }"

    unless File.exists?(target) || File.symlink?(target)
      puts "Linking #{ file } into #{ target }"
      `ln -s "$PWD/#{ linkable }" "#{ target }"`
    end
  end
end
