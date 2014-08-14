# == Schema Information
#
# Table name: goods
#
#  id              :integer          not null, primary key
#  name            :text
#  app_instance_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#  description     :text
#  user_id         :integer
#

require 'spec_helper'

describe Good do
  pending "add some examples to (or delete) #{__FILE__}"
end
