class Application
    def call(env)
        resp = Rack::Response.new
        current_hour = Time.now.hour
        if current_hour < 12
            resp.write 'Good Morning!'
        elsif current_hour >= 12
            resp.write 'Good Afternoon!'
        end
        resp.finish
    end
end