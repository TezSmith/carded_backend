class JsonWebToken

  def self.encode(payload)
     exp = 24.hours.from_now.to_i
     payload[:exp] = exp
     JWT.encode(payload, ENV["SECRET_KEY_BASE"])
  end

  def self.decode(token)
    JWT.decode(token, ENV["SECRET_KEY_BASE"])
 end

end
