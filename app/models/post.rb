# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  has_and_belongs_to_many :comments
  has_many :pictures, class_name: "Image", as: :resource
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
