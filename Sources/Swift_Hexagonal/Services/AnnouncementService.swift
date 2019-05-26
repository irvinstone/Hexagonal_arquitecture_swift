import Foundation

class AnnouncementService {
    private var repository: AnnouncementRepository

    init(repository: AnnouncementRepository) {
        self.repository = repository
    }
    public func getAnnouncements() -> [Announcement] {
        return repository.getAnnouncements()
    }
}