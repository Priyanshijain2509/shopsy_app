class CustomRegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :contact_number, :address, :state, :pin_code)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :contact_number, :address, :state, :pin_code)
  end
end
