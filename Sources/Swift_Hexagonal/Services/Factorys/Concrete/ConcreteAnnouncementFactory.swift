class LocalAnnouncementFactory : AnnouncementServiceFactory {
    func create(sl:ServiceLocator) -> AnnouncementService {
        let service = AnnouncementService(repository:LocalAnnouncementRepository())
        sl.registerService(service:service as AnnouncementService)
        return service
    }
}

class ServerAnnouncementFactory : AnnouncementServiceFactory {
    func create(sl:ServiceLocator) -> AnnouncementService {
        let service = AnnouncementService(repository:ServerAnnouncementRepository())
        sl.registerService(service:service as AnnouncementService)
        return service
    }
}