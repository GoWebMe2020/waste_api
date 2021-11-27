Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3000"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete, :options, :head], credentials: true
  end

  allow do
    origins "http://localhost:3001"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete, :options, :head], credentials: true
  end

  # TODO Change this to the domain the api calls will come from.
  # allow do
  #   origins "http://localhost:3001"
  #   resources "*", headers: :any, methods: [:get, :post, :patch, :put, :delete, :options, :head], credentials: true
  # end
end
