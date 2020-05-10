import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            Color(red: 224/255, green: 229/255, blue: 236/255)
            Button(action: {
                self.showingAlert = true
            }) {
                Image(systemName: "flame.fill")
                    .resizable()
                    .frame(width: 100, height: 140)
                    .accentColor(Color(red: 247/255, green: 115/255, blue: 0/255))
                    .padding()
                    .background(Color(red: 224/255, green: 229/255, blue: 236/255))
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Message from Human Torch"),
                      message: Text("Flame On !!"),
                      dismissButton: .default(Text("OK")))
            }
            .cornerRadius(20)
            .shadow(color: Color.white, radius: 8, x: -8, y: -8)
            .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
