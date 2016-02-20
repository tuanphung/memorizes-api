class Memorize {
	var id: Int = 0
	var title: String = ""
	var description: String = ""

	func toJSON() -> [String: Any] {
		return ["id": id,
				"title": title,
				"description": description]
	}
}