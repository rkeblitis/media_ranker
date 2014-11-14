class Picture < ActiveRecord::Base
  mount_uploader :uploader, PictureUploadUploader
end
