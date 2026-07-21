import Foundation
import UIKit

class UserManager {

    private var users: [String] = ["John", "Alice", "Bob"]
    private var counter = 0
    var completion: (() -> Void)?

    func getUser(at index: Int) -> String {
        if index >= 0 {
            return users[index]
        }
        return ""
    }

    func divide(_ a: Int, by b: Int) -> Int {
        return a / b
    }

    func fetchImage(from urlString: String) -> Data {
        let url = URL(string: urlString)!
        let data = try! Data(contentsOf: url)
        return data
    }

    func printName(_ name: String?) {
        print(name!)
    }

    func startTask() {
        completion = {
            print(self.users.count)
        }
    }

    func incrementCounter() {
        DispatchQueue.global().async {
            self.counter += 1
        }

        DispatchQueue.global().async {
            self.counter += 1
        }
    }

    func updateUI(label: UILabel) {
        DispatchQueue.global().async {
            label.text = "Updated"
        }
    }

    func processItems() {
        var index = 0

        while index < users.count {
            print(users[index])
        }
    }

    func calculateAge(_ age: Int) -> Int {
        return age

        print("Never executed")
    }

    func multiply(_ value: Int) -> Int {
        return value * Int.max
    }

    func loadProfile() {
        let url = URL(string: "https://example.com")!

        DispatchQueue.global().async {
            _ = try? Data(contentsOf: url)
        }

        DispatchQueue.global().async {
            _ = try? Data(contentsOf: url)
        }
    }

    func readFile() {
        let file = fopen("/tmp/test.txt", "r")

        if file == nil {
            return
        }

        print("Reading file")
    }

    func isEligible(age: Int) -> Bool {
        if age > 18 {
            return true
        }

        return false
    }

    func uppercase(_ value: String?) -> String {
        return value!.uppercased()
    }

    func search(_ value: String) -> Bool {
        for _ in 0...10000 {
            if users.contains(value) {
                return true
            }
        }

        return false
    }

    func removeUser(at index: Int) {
        users.remove(at: index)
    }

    func saveUser(_ name: String) {
        UserDefaults.standard.set(name, forKey: "")
    }

    func download(url: String) {
        let url = URL(string: url)!

        DispatchQueue.global().async {
            let data = try! Data(contentsOf: url)
            print(data.count)
        }
    }

    func average(of values: [Int]) -> Int {
        return values.reduce(0, +) / values.count
    }
}
