import Foundation

let env = "Server"
let serviceLocator = ServiceLocator()
let serviceBuilder = ServiceBuilder(enviroment:env, sl:serviceLocator)

let announcementService: AnnouncementService = serviceBuilder.buildAnnouncementService()
let data = announcementService.getAnnouncements()

data.forEach{ announcement in
    announcement.printFullData()
}