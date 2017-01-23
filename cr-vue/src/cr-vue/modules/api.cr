require "kemal"
require "json"

get "/a/data.json" do |env|
  env.response.content_type = "application/json"
  {name: "Cookie", data: 42}.to_json
end