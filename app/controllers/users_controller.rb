class UsersController < ApplicationController

  def index

    @user = User.order(created_at: :asc)
    render 'index'

  end


  def show

   render 'show'
	
  end

  def new

    @user = User.new
    render 'new'

  end

  def create
    
    @user = User.new(user_params)
    if @user.save
     render 'show'
    else
     flash[:error] = @user.errors
    render 'new'

    end
   end

   def destroy

   render 'destroy'

   end
  
  def user_params
  
    params.require(:user).permit(:name, :email)
  
  end
end
