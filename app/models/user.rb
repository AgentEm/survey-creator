class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]
  #validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@shifthealth\.ca\z/,
  #                       message: "email must be a Shift Health account!" }
  #TODO: this is commented out because it doesn't work in an easy way with the github authentication. i.e. if you've already used the email in your github account to sign up, and then you sign up with the normal sign up, or vice versa, it won't let you do it. Once you're done the class, just do the email with the regex validation and strip out the github account stuff.

  has_many :surveys


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.uid = auth.uid
      user.provider = auth.provider
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end
