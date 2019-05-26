import Foundation

class ServiceLocator {
    private var registry: [String: Any] = [:]

    func registerService<T>(service: T) {
        let key = "\(T.self)"
        registry[key] = service
    }

    func tryGetService<T>() -> T? {
        let key = "\(T.self)"
        return registry[key] as? T
    }

    func getService<T>() -> T {
        let key = "\(T.self)"
        return registry[key] as! T
    }

    func showActualServices() {
        registry.forEach {key, value in
            print("\(key)-->\(value)")
        }
    }
}