//
//  accueil.swift
//  Zabava
//
//  Created by Lion on 22/03/2023.

import SwiftUI
struct accueil: View {
    var currentEvent: Event
    
    @State var search = ""
    
    var newEvent: [Event]
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Spacer(minLength: 50)
                    VStack(alignment: .leading, spacing: 3) {
                        Text("À la Une")
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .foregroundColor(Color("Default"))
                        
                        NavigationLink(destination: EventDetails(eventDetails: currentEvent)) {
                            Image(currentEvent.image)
                                .resizable()
                                .scaledToFit()
                        }
                        VStack(alignment: .leading) {
                            Spacer(minLength: 10)
                            Text(currentEvent.title)
                                .fontDesign(.rounded)
                                .fontWeight(.semibold)
                                .font(.system(size: 22))
                            Text(currentEvent.date)
                                .fontDesign(.rounded)
                                .opacity(0.7)
                        }
                            Spacer(minLength: 20)
                        VStack(alignment: .leading) {
                        Text("Nouveautés")
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                            .foregroundColor(Color("Default"))
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(newEvent) { event in
                                    NavigationLink(destination: EventDetails(eventDetails: event)) {
                                        VStack(alignment: .leading) {
                                            Image(event.image)
                                                .resizable()
                                                .frame(width: 330, height: 230)
                                            Text(event.title)
                                                .foregroundColor(.black)
                                                .fontDesign(.rounded)
                                                .fontWeight(.semibold)
                                                .font(.system(size: 22))
                                            
                                            
                                            Text("Le " + event.date)
                                                .fontDesign(.rounded)
                                                .opacity(0.7)
                                                .foregroundColor(.black)
                                        }
                                        }
                                    }
                                }
                            }
                            
                        }.fontDesign(.rounded)
                        
                        //Spacer()
                    } .padding()
                    Spacer()
                }
                
            }
        }
    }
}
struct accueil_Previews: PreviewProvider {
    static var previews: some View {
        accueil(currentEvent: woodStowerEvent,newEvent: arrayNewEvent)
    }
}
