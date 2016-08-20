class Curriculum < ActiveRecord::Base
  mount_uploader :resume, ResumeUploader
end
