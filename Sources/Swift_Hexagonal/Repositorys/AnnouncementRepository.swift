import Foundation

protocol AnnouncementRepository {
    func getAnnouncements() -> [Announcement]
}