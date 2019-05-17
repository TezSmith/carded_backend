class ApplicationController < ActionController::API
  def current_user
  ## get the user model for the logged in user or nil
  token = request.headers['Access-Token']
  return nil unless token.present?
  payload = JsonWebToken.decode(token)
  byebug
  User.find(payload['userId'])
end
end
