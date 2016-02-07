class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "No_image.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
#  validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
#  do_not_validate_attachment_file_type :image
end
