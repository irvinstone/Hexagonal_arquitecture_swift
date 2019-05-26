class ServiceBuilder {
    private var enviroment: String
    private var announcementServiceFactory: AnnouncementServiceFactory?
    private let sl: ServiceLocator
    
    init(enviroment: String, sl:ServiceLocator) {
        self.enviroment = enviroment
        self.sl = sl
    }
    
    func initServiceFactorys() -> Void {
        if nil != announcementServiceFactory { return }
        if enviroment == "Local" {
         announcementServiceFactory = LocalAnnouncementFactory() 
        }
        else { 
            announcementServiceFactory = ServerAnnouncementFactory() 
        }
    }
    
    func buildAnnouncementService() -> AnnouncementService {
        initServiceFactorys()
        return announcementServiceFactory!.create(sl:self.sl)
    }
}