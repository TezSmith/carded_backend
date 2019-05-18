class ApplicationController < ActionController::API
    
  def current_user
      ## get the user model for the logged in user or nil
      token = request.headers['Access-Token']
      return nil unless token.present?
      payload = JsonWebToken.decode(token)
      User.find(payload['user_id'])
    end

    def authorize!
    ## render back an error if there is no one logged in
    unless current_user
      render json: { error: 'You must be logged in.' }, status: :unauthorized
    end
  end

   

end
