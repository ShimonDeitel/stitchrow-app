import Foundation

struct Project: Identifiable, Codable, Equatable {
    var id: UUID
    var createdAt: Date
    var title: String
    var stitchProgress: String
    var flossList: String
    var notes: String

    init(id: UUID = UUID(), createdAt: Date = Date(), title: String = "", stitchProgress: String = "", flossList: String = "", notes: String = "") {
        self.id = id
        self.createdAt = createdAt
        self.title = title
        self.stitchProgress = stitchProgress
        self.flossList = flossList
        self.notes = notes
    }
}
