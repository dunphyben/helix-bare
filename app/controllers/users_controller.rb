private
  def user_params
    params.require(:user).permit(params[:name])
end
