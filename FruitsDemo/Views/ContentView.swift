
import SwiftUI

//TODO: Create a list
//TODO: Create the navigation
struct ContentView: View {
    @EnvironmentObject var fruitStore: FruitStore
    var body: some View {
        NavigationView {
                    List {
                        ForEach(fruitStore.fruits) { fruit in
                            HStack {
                                Text(fruit.emoji.rawValue)
                                Text(fruit.name)
                                    .font(.headline)
                            }
                        }
                    }
                    .navigationTitle("Fruits")
                }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
