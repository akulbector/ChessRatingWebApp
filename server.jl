using HTTP, JSON3, Sockets

const ROUTER = HTTP.Router()
HTTP.register!(ROUTER, "GET", "/*", req->HTTP.Response(200, "Hi"))
# You can register more
HTTP.register!(ROUTER, "GET", "/bye", req->HTTP.Response(200, "Bye!"))

HTTP.serve(ROUTER, Sockets.localhost, 8081)