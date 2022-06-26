require_relative "base_service"

class EquiposService < BaseService
  def create(equipo, user_id)
    return self.class.post(
             "/equipos",
             body: equipo,
             headers: {
               "user_id": user_id,
             },
           )
  end
end
