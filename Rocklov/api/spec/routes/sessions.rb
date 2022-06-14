class Sessions

    def login(email, pass)
        payload = { email: email, password: pass }

        return = HTTParty.post(
            "http://rocklov-api:3333/sessions",
            body: payload.to_json,
            headers: {
              "Content-Type": "application/json",
            },
        )
    end