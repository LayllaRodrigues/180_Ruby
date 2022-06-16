require_relative "routes/sessions"

describe "POST/sessions" do
  context "login com sucesso" do
    before(:all) do
      @result = Sessions.new.login("laylla13@hotmail.com", "pwd")
    end

    it "valida status code 200" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuário" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end

  context "senha invalida" do
    before(:all) do
      @result = Sessions.new.login("laylla13@hotmail.com", "senhainvalida123")
    end

    it "valida status code 401" do
      expect(@result.code).to eql 401
    end

    it "valida autenticação" do
      expect(@result.parsed_response["error"]).to eql "Unauthorized"
    end
  end
end