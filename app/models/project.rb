# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  title           :string
#  subtitle        :string
#  content         :text
#  pictures_id     :integer
#  client          :string
#  client_url      :string
#  completion_date :date
#  published       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  has_many :pictures, class_name: "Image", as: :resource
  accepts_nested_attributes_for :pictures, allow_destroy: true


  def slug_candidates
      [
          :title,
          [:title, :client]
      ]
  end
end
