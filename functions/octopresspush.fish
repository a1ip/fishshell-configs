function octopresspush --description 'Push and deploy octopress'
  command rvm use 2.1.1;rvm gemset use octopress;rake generate;rake deploy;git push origin source
end