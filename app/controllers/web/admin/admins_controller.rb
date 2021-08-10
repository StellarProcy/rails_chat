class Web::Admin::AdminsController < Web::Admin::ApplicationController
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admins_attrs)
    if @admin.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  private

  def admins_attrs
    params.require(:admin).permit(:email, :password)
  end
end
