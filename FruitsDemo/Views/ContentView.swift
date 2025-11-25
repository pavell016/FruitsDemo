
import SwiftUI
//TODO: Create the navigation
struct ContentView: View {
    @EnvironmentObject var fruitStore: FruitStore
    @State private var tempFruit = FruitStore.defaultFruit
    @State private var showingAddFruit = false
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitStore.fruits) { fruit in
                    FruitRowView(fruit: fruit)
                }
                .onDelete(perform: delfruit)
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        showingAddFruit = true
                    }) {
                         Image(systemName: "plus")
                            .font(.title2)
                    }
            ).sheet(isPresented: $showingAddFruit) {
                AddFruitView(newFruit: $tempFruit) { fruit in
                    fruitStore.fruits.append(fruit)
                }
            }

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
