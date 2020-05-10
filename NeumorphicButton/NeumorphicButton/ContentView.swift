import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            Color(red: 224/255, green: 229/255, blue: 236/255)
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Button")
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Message from Human Torch"),
                      message: Text("Flame On !!"),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
