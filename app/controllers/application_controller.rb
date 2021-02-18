class ApplicationController < ActionController::Base
  # 後置修飾 devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合
  # その前にconfigure_permitted_parametersが実行
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  # ユーザ登録（sign_up）の際に、ユーザ名（name）のデータ操作が許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
