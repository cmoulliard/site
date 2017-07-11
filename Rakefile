require 'rake-jekyll'

# This task builds the Jekyll site and deploys it to a remote Git repository.
# It's preconfigured to be used with GitHub and Travis CI.
# See http://github.com/jirutka/rake-jekyll for more options.

Rake::Jekyll::GitDeployTask.new(:deploy) do |t|

# Run this command to build the site.
  t.build_script = ->(dest_dir) {
    # puts "\nClean gh-pages branch ..."
    # sh "git rm -rf . &>/dev/null || true"
    puts "\nRunning Jekyll..."
    sh "bundle exec jekyll build --config _config_github.yml"
  }
end
