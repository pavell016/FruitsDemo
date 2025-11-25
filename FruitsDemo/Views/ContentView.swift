
import SwiftUI

//TODO: Create a list
//TODO: Create the navigation
struct ContentView: View {
    @EnvironmentObject var fruitStore: FruitStore
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitStore.fruits) { fruit in
                    FruitRowView(fruit: fruit)
                }
                .onDelete(perform: delfruit)
            }
            .navigationTitle("Fruits")
        }
        
        
    }
    func delfruit(at offsets: IndexSet) {
        fruitStore.fruits.remove(atOffsets: offsets)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
