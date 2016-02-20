import Foundation
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

		let results = [firstMemorize.toJSON(), secondMemorize.toJSON()]

		if let jsonObject = results as? AnyObject {
            guard NSJSONSerialization.isValidJSONObject(jsonObject) else {
                throw SerializationError.InvalidObject
            }

            let json = try NSJSONSerialization.dataWithJSONObject(jsonObject, options: NSJSONWritingOptions.PrettyPrinted)
            // data = Array(UnsafeBufferPointer(start: UnsafePointer<UInt8>(json.bytes), count: json.length))
            print(json)
        }

		return results
	}
}
