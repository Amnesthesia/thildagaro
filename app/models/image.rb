# == Schema Information
#
# Table name: images
#
#  id            :integer          not null, primary key
#  resource_id   :integer
#  resource_type :string
#  caption       :string
#  path          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Image < ActiveRecord::Base
  belongs_to :resource, polymorphic: true
  mount_uploader :path, ImageUploader
end
