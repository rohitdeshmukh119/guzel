class Profile < ApplicationRecord
  belongs_to :user
  mount_uploaders :polaroids, PolaroidsUploader
  mount_uploaders :pictures, PicturesUploader
end
