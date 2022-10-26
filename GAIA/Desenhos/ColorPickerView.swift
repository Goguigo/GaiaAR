

import SwiftUI
import UIKit

struct ColorPickerView: View {
    
    let colors = [Color.red, Color.orange, Color.green, Color.blue, Color.purple, Color.indigo, Color.pink]
    @Binding var selectedColor: Color
    let columns = [
            GridItem(.adaptive(minimum: 10))
        ]
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
            
                Image(systemName: selectedColor == color ? Constants2.Icons.recordCircleFill : Constants2.Icons.circleFill)
                    .foregroundColor(color)
                    .font(.system(size: 25))
                    .clipShape(Circle())
                    .onTapGesture {
                        selectedColor = color
                    }
            }
            
        }
    }
}

struct ColorListView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.blue))
    }
}
