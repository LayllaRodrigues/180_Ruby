require_relative "routes/equipos"

describe "POST /equipos" do
  context "novo equipo" do
    before(:all)
    payload = {
      thumbnail: "kramer.jpg",
      name: "Eddie Van Halen",
      category: "cordas",
      price: 299,
    }

    @result = Equipos.new.create(payload)
    puts @result
  end

  it "deve retornar 200" do
    expect(@result.code).to eql 200
  end
end
