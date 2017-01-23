require "kemal"

serve_static({"gzip" => true, "dir_listing" => true})
public_folder("./client/dist")

get "/" do
  render "client/dist/index.html.ecr"
end

Kemal.run(5000)