//
//  AvatarView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 30/10/22.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        VStack {
            Image("template")
                .resizable()
                .scaledToFit()
            Text("Nome do avatar")
        }
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView()
    }
}
