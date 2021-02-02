class Api::UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
  # Implement the back end user authentication. Test it out by temporarily adding current_user as part of your show.json.jb, then adding the jwt from the Login request to the show request headers (Authorization => Bearer ___ ).
  def show
     
     render "show.json.jb"
  end
  

end
