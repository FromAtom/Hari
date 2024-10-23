import Foundation

struct IntRepository: Repository {
    typealias T = Int

    let suiteName: String
    let bundleID: String
    let key: String
}
