# == Schema Information
#
# Table name: pages
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  pictures_id :integer
#  published   :boolean
#  layout      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Page < ActiveRecord::Base
  has_many :pictures, class_name: "Image", as: :resource
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
