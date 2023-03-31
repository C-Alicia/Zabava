//
//  ConnectionPageUIView.swift
//  Zabava
//
//  Created by apprenant62 on 28/03/2023.
//

import SwiftUI

struct ConnectionPageUIView: View {
    @State var isShowingModal = false
    var body: some View {
        ZStack {
            Color.white
    
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
              Spacer()
             Image("ZABAVA15")
                .resizable()
                .frame(width: 500,height: 500)
               
                Spacer().frame(height: 50)
                    .foregroundColor(.black)

                    Button {
                        isShowingModal = true
                    } label: {
                            Text("Commencer")
                                .foregroundColor(.white)
                                .fontDesign(.rounded)
                                .fontWeight(.semibold)
                                .font(.system(size: 20))
                                .padding(9)
                     
                    }
                    
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Noir"))
                       
                       
                       Spacer()

            }
            
            .fullScreenCover(isPresented: $isShowingModal) {
                ContentView()
                
            }
            
            
        }
        
    }
}

struct ConnectionPageUIView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionPageUIView()
    }
}
