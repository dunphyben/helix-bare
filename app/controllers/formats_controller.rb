



private
  def user_params
    params.require(:format).permit(params[:name])
end
