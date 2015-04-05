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

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
