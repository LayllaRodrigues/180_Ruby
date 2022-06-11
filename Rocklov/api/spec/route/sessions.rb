class Sessions

    def login(email, pass)
        payload = { email: "laylla13@hotmail.com", password: "pwd"}

         @result = HTTParty.post(
            "http://rocklov-api:3333/sessions",
            body: payload.to_json,
            headers:{
                "Content-Type": "application/json",
             },
            )
    end