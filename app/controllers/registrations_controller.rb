class RegistrationsController < ApplicationController

  def create
    user = User.create!(
      email: params["user"]["email"],
      password: params["user"]["password"],
      password_confirmation: params["user"]["password_confirmation"]
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        message: "You have successfully signed up. Welcome to Waste App.",
        user: user
      }
    else
      render json: {
        status: 500,
        message: "Something went wrong. You could not sign up."
      }
    end
  end

end
