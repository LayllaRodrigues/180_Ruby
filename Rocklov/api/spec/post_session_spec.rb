

describe "POST/sessions" do
  context "login com sucesso" do
    before(:all) do
      payload = { email: "laylla13@hotmail.com", password: "pwd" }
      @result = Sessions.new.login(payload)
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuário" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end

  examples = Helpers::get_fixture("login")

  examples.each do |e|
    context "#{e[:title]}" do
      before(:all) do
        @result = Sessions.new.login(e[:payload])
      end

      it "valida status code #{e[:code]} " do
        expect(@result.code).to eql e[:code]
      end

      it "valida autenticação" do
        expect(@result.parsed_response["error"]).to eql e[:error]
      end
    end
  end
end
