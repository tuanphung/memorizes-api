import Vapor

Route.get("/") { request in
	do {
		return try View(path: "welcome.html")
	} catch _ {
		return "Something went wrong."
	}
}

Route.get("memorizes", closure: MemorizeController().getMemorizeList())

//print what link to visit for default port
print("Visit http://localhost:8080")

let server = Server()
server.run(port: 8080)

