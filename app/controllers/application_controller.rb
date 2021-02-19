class ApplicationController < ActionController::Base
  # ログイン認証されていなければ、ログイン画面へリダイレクトする
  before_action :authenticate_user!, except: [:top]
  # 後置修飾 devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合
  # その前にconfigure_permitted_parametersが実行
  before_action :configure_permitted_parameters, if: :devise_controller?

 # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    post_images_path
  end

# private内に記述されているメソッドはクラス外から呼び出すことができない
# protected内のメソッドは呼び出すことができる
# protected内にメソッドを記述することで、思わぬところからメソッドが呼び出されることを防ぐ。
  protected
    def configure_permitted_parameters
    # ユーザ登録（sign_up）の際に、ユーザ名（name）のデータ操作が許可
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
