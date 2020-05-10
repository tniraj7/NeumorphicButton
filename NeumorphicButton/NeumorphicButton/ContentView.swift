import SwiftUI

struct ContentView: View {
    
     @State private var showingAlert = false
    
    var body: some View {
        
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Button")
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Message from Human Torch"), message: Text("Flame On !!"), dismissButton: .default(Text("OK")))
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
