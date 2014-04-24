function octopresspush --description 'Push and deploy octopress'
  rvm use 2.1;rvm gemset use octopress;rake generate;rake deploy;git push origin source
end