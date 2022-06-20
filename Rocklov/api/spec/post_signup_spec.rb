require_relative "routes/signup"
require_relative "lib/mongo"

describe "POST /signup" do
    context "novo usuario" do
        before(:all) do
            payload = { name: "pitty", email: "pitty@bol.com.br", password: "pwd123" }
            MongoDB.new.remove_user(payload[:email])

            @result = Signap.new.create(payload)
        end

        it "valida status code" do
            expect(@result.code).to eql 200
        end
      
        it "valida id do usuário" do
            expect(@result.parsed_response["_id"].length).to eql 24
        end
        
    end

end
