import Foundation

class ServerAnnouncementRepository: AnnouncementRepository {
    public func getAnnouncements() -> [Announcement] {
        return [Announcement("Announcement1",1,"Description1"),Announcement("Announcement2",2,"Description2"),Announcement("Announcement3",3,"Description3")]
    }
    
}