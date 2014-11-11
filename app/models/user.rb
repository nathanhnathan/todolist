# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fname           :string(255)
#  lname           :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :comments, dependent: :destroy

	def name
    	"#{ self.fname } #{ self.lname }"
    end

    def as_json(options)
    super(
      except: [:password_digest, :fname, :lname]
    ).merge({ name: self.name })
  end

end
