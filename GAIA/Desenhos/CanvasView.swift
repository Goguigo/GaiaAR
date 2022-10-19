

import SwiftUI

struct Line {
    var points = [CGPoint]()
    var color: Color = .red
    var lineWidth: Double = 1.0
}

struct CanvasView: View {
    let columns = [
            GridItem(.adaptive(minimum: 20))
        ]
    @EnvironmentObject var list: Potato
    @State private var currentLine = Line()
    @State private var lines: [Line] = []
    @State private var thickness: Double = 1.0
    var body: some View {
        VStack {
            HStack {
                Button (action: {
                    
                    self.list.lista = 0
                }) {
                    Label("Voltar", systemImage: "arrow.backward.circle.fill")
                }
                .font(.title)
                
                Spacer()
            }
            Canvas { context, size in
                
                for line in lines {
                    var path = Path()
                    path.addLines(line.points)
                    context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                }
                
                
            }
       
            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onChanged({ value in
                let newPoint = value.location
                currentLine.points.append(newPoint)
                self.lines.append(currentLine)
              })
            .onEnded({ value in
                self.lines.append(currentLine)
                self.currentLine = Line(points: [], color: currentLine.color, lineWidth: thickness)
            })
            )
            
            HStack {
                
                Slider(value: $thickness, in: 1...20) {
                    Text("Thickness")
                }.frame(maxWidth: 200)
                    .onChange(of: thickness) { newThickness in
                        currentLine.lineWidth = newThickness
                    }
                Divider()
                ColorPickerView(selectedColor: $currentLine.color)
                    .onChange(of: currentLine.color) { newColor in
                        print(newColor)
                        currentLine.color = newColor
                }
            }
            .scaledToFit()
        }.padding()
    }
}



struct CanvasView_Previews: PreviewProvider {
    static var previews: some View {
        CanvasView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
