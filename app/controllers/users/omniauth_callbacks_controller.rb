class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    # render json: request.env["omniauth.auth"]

    @user = # TODO: Find a user by provider and uid
    if @user.nil?
      @user = User.create() # TODO: create a user with omniauth params
    end
    sign_in_and_redirect @user  # This line will sign the user in.
  end
end
