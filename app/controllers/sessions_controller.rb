class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[user_id] = user.id
      redirect_to user_path(user.id), notice: "ログインしました！"
    else
      flash[:notice] = "ログインに失敗しました"
      render 'new'
    end
  end
  
  def destroy
    session.delete(:user_id)
    redirect_to new_session_path, notice: 'ログアウトしました'
  end
  
end
