
import SwiftUI

//TODO: Create a list
//TODO: Create the navigation
struct ContentView: View {
    @EnvironmentObject var fruits: FruitStore
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits, \.self){
                    
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
