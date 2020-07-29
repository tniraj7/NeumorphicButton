import SwiftUI

struct NeumorphicButton: View {
    
    @State private var isPressed: Bool = false
    
    private var systemName: String
    private var width: CGFloat
    private var height: CGFloat
    private var accentColor: Color
    private var onTap: (() -> Void)?
    
    init(systemName: String, width: CGFloat, height: CGFloat, accentColor: Color, onTap: @escaping () -> Void) {
        self.systemName = systemName
        self.width = width
        self.height = height
        self.accentColor = accentColor
        self.onTap = onTap
    }
    
    
    private var gray: Color {
        return Color(#colorLiteral(red: 0.6392156863, green: 0.6941176471, blue: 0.7764705882, alpha: 1))
    }
    
    private var white: Color {
        return Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    }
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.8784313725, green: 0.8980392157, blue: 0.9254901961, alpha: 1))
            
            Button(action: {
                self.isPressed = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                     self.isPressed = false
                     self.onTap
                }
            }) {
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: self.width, height: self.height)
                    .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 5, x: -7, y: -7)
                    .shadow(color: Color(#colorLiteral(red: 0.6392156863, green: 0.6941176471, blue: 0.7764705882, alpha: 1)), radius: 5, x: 7, y: 7)
                    .accentColor(self.accentColor)
                    .padding(30)
                    .background(Color(#colorLiteral(red: 0.8784313725, green: 0.8980392157, blue: 0.9254901961, alpha: 1)))
            }
            .cornerRadius(20)
            .shadow(color: self.isPressed ? gray : white,
                    radius: self.isPressed ? 4 : 8, x: -7, y: -7)
                
            .shadow(color: self.isPressed ? white : gray,
                    radius: self.isPressed ? 4 : 8, x: 7, y: 7)
            .scaleEffect(self.isPressed ? 0.98 : 1.0)
            .animation(.spring())
        }
    }
}
