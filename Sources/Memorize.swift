class Memorize {
	var id: Int = 0
	var title: String = ""
	var description: String = ""

	func toJSON() -> [String: String] {
		return ["id": id,
				"title": title,
				"description": description]
	}
}