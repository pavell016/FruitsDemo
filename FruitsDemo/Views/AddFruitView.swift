
import SwiftUI

struct AddFruitView: View {
    
    @Binding var newFruit:Fruit
    var existFruit: (Fruit) -> Bool
    var onSave: (Fruit) -> Void
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Form {
            Section(header: Text("Name")) {
                TextField("Name", text: $newFruit.name)
                    
            }
            Section(header: Text("Description")) {
                TextEditor(text: $newFruit.description)
                    
            }
            Section(header: Text("Image")) {
                EmojiPicker(emoji: $newFruit.emoji)
                    .listRowInsets(EdgeInsets())
            }
        }
        .navigationTitle("Add Fruit")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    
                    onSave(newFruit)
                    presentationMode.wrappedValue.dismiss()
                }.disabled(newFruit.name.isEmpty || newFruit.description.isEmpty ||
                    existFruit(newFruit))
            }
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}


/*struct AddFruitView_Previews: PreviewProvider {
    @State static var previewFruit = FruitStore.defaultFruit

    static var previews: some View {
        Group {
            AddFruitView(newFruit: $previewFruit) { _ in }
                .previewDisplayName("Light mode")

            AddFruitView(newFruit: $previewFruit) { _ in }
                .preferredColorScheme(.dark)
                .previewDisplayName("Dark mode")

            AddFruitView(newFruit: $previewFruit) { _ in }
                .previewLayout(.fixed(width: 480, height: 320))
                .previewDisplayName("Landscape")
        }
    }
}*/

