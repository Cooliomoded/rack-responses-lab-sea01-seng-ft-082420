require_relative '../config/environment'

class Application

    def call(env)
        resp = Rack::Response.new
        t = Time.now.to_a
        if t[2] < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end

end