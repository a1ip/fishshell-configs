function octopresspush --description 'Push and deploy octopress'
  command rake generate;rake deploy;git push origin source
end