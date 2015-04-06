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
  extend FriendlyId
  friendly_id :title_dashed, use: :slugged
  has_many :pictures, class_name: "Image", as: :resource
  accepts_nested_attributes_for :pictures, allow_destroy: true

  def title_dashed
      title.gsub(' ', '-')
  end
end
