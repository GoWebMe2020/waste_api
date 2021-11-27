if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, ket: "_authentication_app", domain: "page@doamin.co.uk"
else
  Rails.application.config.session_store :cookie_store, ket: "_authentication_app"
end
