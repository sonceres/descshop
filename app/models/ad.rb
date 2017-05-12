class Ad < ApplicationRecord

  has_many :comments
 belongs_to :model
  




has_attached_file :img1,:storage => :cloudinary,
  :cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),:cloudinary_resource_type => :image,:path => ':id/:style/:filename',
  :styles => { medium: '300x300>', thumb: '100x100>', landscape: '1800x1200#'}




validates_attachment_content_type :img1, content_type: /\Aimage\/.*\z/, size: { in: 0..500.kilobytes }



has_attached_file :img2,:storage => :cloudinary,
  :cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),:cloudinary_resource_type => :image,:path => ':id/:style/:filename',
  :styles => { medium: '300x300>', thumb: '100x100>', landscape: '1800x1200#'}





validates_attachment_content_type :img2, content_type: /\Aimage\/.*\z/, size: { in: 0..500.kilobytes }








has_attached_file :img3,:storage => :cloudinary,
  :cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),:cloudinary_resource_type => :image,:path => ':id/:style/:filename',
  :styles => { medium: '300x300>', thumb: '100x100>', landscape: '1800x1200#'}






validates_attachment_content_type :img3, content_type: /\Aimage\/.*\z/, size: { in: 0..500.kilobytes }
validates :zagolovok, presence: true, allow_blank: false,length: { in: 10..100 }
validates :tekst, presence: true, allow_blank: false,length: { in: 10..10000 }




end
