require 'gv/valley'
load "gv/tasks/install.rake"

namespace :install do
  
  task :valley do
    sh "cp -R upstart/bedrock/* /etc/init/"
    sh "cp -R upstart/valley/* /etc/init/"    
  end
  
  task :host do
    sh "cp -R upstart/host/* /etc/init/"    
  end  
  
  task :addon do
    sh "cp -R upstart/addon/* /etc/init/"    
  end
end