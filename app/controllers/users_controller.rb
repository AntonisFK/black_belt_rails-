class UsersController < ApplicationController
  def index
  @user = User.new 

  end

  def create 
  	  user = User.create(user_params)
    puts user.errors.full_messages
    if user.errors.count == 0
      flash[:success] ="You have succesfull loged in"
      session[:user_id] = user.id 
      redirect_to user
    else 
      flash[:error] = user.errors.full_messages
      redirect_to '/'
    end
   
  end 

  def show
    #current_users products 
    @products = current_user.products
    @sold = current_user.products
    @bought = Product.where( buyer_id: current_user)
  end

  
  private 
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end 

end
