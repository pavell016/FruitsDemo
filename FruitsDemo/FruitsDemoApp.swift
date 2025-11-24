import SwiftUI

@main
struct FruitsDemoApp: App {
    @StateObject var fruits = FruitStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(fruits)
        }
    }
}

