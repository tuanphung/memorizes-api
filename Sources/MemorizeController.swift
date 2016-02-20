import Vapor

class MemorizeController: Controller {

	func getMemorizeList(request: Request) -> ResponseConvertible {
		let firstMemorize = Memorize()
		firstMemorize.id = 1
		firstMemorize.title = "First Memorize"
		firstMemorize.description = "First Memorize description"

		let secondMemorize = Memorize()
		secondMemorize.id = 1
		secondMemorize.title = "First Memorize"
		secondMemorize.description = "First Memorize description"

		let data = [firstMemorize.toJSON(), secondMemorize.toJSON()]
		print(JSONSerializer.serialize(data))
		return data
	}
}
