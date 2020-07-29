import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            
            NeumorphicButton(
                systemName: "flame.fill",
                width: 80, height: 120,
                accentColor: Color(#colorLiteral(red: 0.968627451, green: 0.4509803922, blue: 0, alpha: 1))
            ) {
                // do stuff here
                print("Clicked !!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
