require 'rake'

output_location = ""

namespace :jshub do 
  
  desc 'Generate the website help and  documentation'
  task "website" do
    sh "cd ./website/ && jekyll --no-auto #{output_location}"
  end

  namespace :website do 
  
    # Github requires the documentation to be in a special branch called 'gh-pages'
    # ref: http://judofyr.net/posts/copy-folders-to-a-branch.html    
    desc 'Publish the website help and documentation to Github'
    task "publish" do
      require 'grancher'
      # Uses library version so that rake -T and rake gems:install do not fail if gem is missing
      grancher = Grancher.new do |g|
        g.directory 'website'

        g.branch = 'gh-pages'
        g.push_to = 'origin' # automatically push too    
        g.message = 'Updated website'
      end
      grancher.commit
      grancher.push
    end

    desc 'Develop the website help and documentation'
    task "dev" do
      sh "cd ./website/ && jekyll #{output_location}"
    end

  end
  
end


