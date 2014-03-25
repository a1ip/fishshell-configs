function octopresspush --description 'Push and deploy octopress'
  rake generate;rake deploy;git push origin source
end