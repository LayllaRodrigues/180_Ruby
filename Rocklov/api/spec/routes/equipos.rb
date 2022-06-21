require_relative "base_api"

class Equipos < BaseApi
  def create(payload)
    return self.class.post(
             "/equipos",
             body: payload.to_json,
             headers: {
               "Content-Type": "application/json",
             },
           )
  end
end
