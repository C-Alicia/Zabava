//
//  LaunchingUIView.swift
//  Zabava
//
//  Created by apprenant62 on 27/03/2023.
//

import SwiftUI

struct LaunchingUIView: View {
    var body: some View {
        
        VStack {
            Image("ZABAVA1")
                .resizable()
                .frame(width: 400,height: 400)
            Text("Le divertissement à portée de main")
                .foregroundColor(Color("Default"))
                .bold()
            Spacer()
            Spacer()
            Spacer()
            HStack {
                Text("AKCEL")
                    .foregroundColor(.gray)
                Image(systemName:"c.circle")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct LaunchingUIView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchingUIView()
    }
}
