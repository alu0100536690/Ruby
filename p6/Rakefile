task :default => :test

desc "Rake test"
task :test do
	sh "rspec -Ilib spec/ppt_spec.rb -f documentation"
end

desc "Rake HTML"
task :thtml do
      sh "rspec -Ilib spec/ppt_spec.rb -f html > index.html"
end

desc "Rake Bin"
task :bin do
    sh "ruby -Ilib bin/RockPaperScissors.rb"
end