//
//  ControlView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 30/10/22.
//

import SwiftUI

struct ControlView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "arrow.left.square")
                    .resizable()
                    .frame(width: 35, height: 35)
            }
            .buttonBorderShape(.roundedRectangle)
            .buttonStyle(.bordered)
            .foregroundColor(.cyan)
            .frame(width: 45, height: 45)
            VStack {
                Button(action: {}) {
                    Image(systemName: "arrow.up.square")
                        .resizable()
                        .frame(width: 35, height: 35)
                }
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.bordered)
                .foregroundColor(.cyan)
                .frame(width: 45, height: 45)
                Button(action: {}) {
                    Image(systemName: "circle.square")
                        .resizable()
                        .frame(width: 35, height: 35)
                }
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.bordered)
                .foregroundColor(.cyan)
                .frame(width: 45, height: 45)
                Button(action: {}) {
                    Image(systemName: "arrow.down.square")
                        .resizable()
                        .frame(width: 35, height: 35)
                }
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.bordered)
                .foregroundColor(.cyan)
                .frame(width: 45, height: 45)
            }
            Button(action: {}) {
                Image(systemName: "arrow.right.square")
                    .resizable()
                    .frame(width: 35, height: 35)
            }
            .buttonBorderShape(.roundedRectangle)
            .buttonStyle(.bordered)
            .foregroundColor(.cyan)
            .frame(width: 45, height: 45)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView()
    }
}
