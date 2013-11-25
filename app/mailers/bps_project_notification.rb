class BpsProjectNotification < ActionMailer::Base
  
  def new_project_added
    mail :subject => "A new project has been added",
         :to      => "jonathan@bestpracticestore.com",
         :from    => "support@bestpracticestore.com"
  end
  
end