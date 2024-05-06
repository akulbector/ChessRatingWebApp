using HTTP, JSON3, Sockets

# function getWithInput(req::HTTP.Request)
#     objec = JSON3.read(req.body)
#     @show objec
#     return HTTP.Response(200, JSON3.write((1290,1660,2020)))
# end

const ROUTER = HTTP.Router()
HTTP.register!(ROUTER, "GET", "/*", req->HTTP.Response(200, "Hi"))
# You can register more
HTTP.register!(ROUTER, "GET", "/bye", req->HTTP.Response(200, "Bye!"))

HTTP.serve(ROUTER, Sockets.localhost, 8081)