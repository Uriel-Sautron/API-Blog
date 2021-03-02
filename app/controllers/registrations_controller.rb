class RegistrationsController < Devise::RegistrationsController
  respond_to :json
  
  # def create
  #   puts params
  #   build_resource(user_params)
  #   puts resource
  #   resource.save
  #   render_resource(resource)
  # end

  def user_params
    params.permit(:email, :password, :registration, :format)
  end

end