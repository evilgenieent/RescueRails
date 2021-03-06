#    Copyright 2017 Operation Paws for Homes
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

# == Schema Information
#
# Table name: references
#
#  id           :integer          not null, primary key
#  adopter_id   :integer
#  name         :string(255)
#  email        :string(255)
#  phone        :string(255)
#  relationship :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  whentocall   :string(255)
#

class Reference < ApplicationRecord
  belongs_to :adopter, class_name: 'Adopter'
end
