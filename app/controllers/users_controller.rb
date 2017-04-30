class UsersController < Clearance::UsersController
  def index
    if params[:searching_for] == "1"
      @users = User.where(role: "musician")
    else
      @users = User.where(role: "booker")
    end
  end

  def new
    @user = user_from_params
    render template: "users/new"
  end

  def create
    @user = user_from_params

    if @user.save
      sign_in @user
      redirect_back_or url_after_create
    else
      render template: "users/new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
    render template: "users/edit"
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:success] = "Profile successfully updated."
      redirect_to @user
    else
      render template: "users/edit"
    end
  end

  def destroy
    User.delete(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :city, :role, :summary)
  end

  def user_from_params
    first_name = user_params.delete(:first_name)
    last_name = user_params.delete(:last_name)
    email = user_params.delete(:email)
    password = user_params.delete(:password)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.first_name = first_name
      user.last_name = last_name
      user.email = email
      user.password = password
    end
  end
end
