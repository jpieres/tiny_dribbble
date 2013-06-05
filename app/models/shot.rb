class Shot < ActiveRecord::Base
  attr_accessible :description, :image
  belongs_to :user
  has_attached_file :image, :styles => { :cropped => "400x300>" },
  :storage => :s3, :s3_credentials => S3_CREDENTIALS, url: ":s3_domain_url", path: "/:class/:attachment/:id_partition/:style/:filename'" #, :s3_credentials => "#{Rails.root}/config/s3.yml"
  has_and_belongs_to_many :fans, class_name: "User", join_table: "users_favorite_shots"
end
