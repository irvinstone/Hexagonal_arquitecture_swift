import Foundation

class LocalAnnouncementRepository: AnnouncementRepository {
    public func getAnnouncements() -> [Announcement] {
        return [Announcement("LocalAnnouncement1",1,"Description1"),Announcement("LocalAnnouncement2",2,"Description2"),Announcement("LocalAnnouncement3",3,"Description3")]
    }
    
}