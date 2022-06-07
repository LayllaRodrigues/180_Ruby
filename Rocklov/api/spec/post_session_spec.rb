require "httparty"

describe "POST /sessions" do
    it "login com sucesso" do
        payload = { email: "laylla13@hotmail.com", password: "pwd"}

        result = HTTParty.post(
            "http://rocklov-api:3333/sessions",
            body: payload.to_json,
            headers:{
                "Content-Type": "application/json",
             },
            )

            expect(result.code).to eql 200

            puts result.parsed_response
            puts result.parsed_response.class
    end
end