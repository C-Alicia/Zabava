//
//  ContentView.swift
//  Zabava
//
//  Created by Lion on 21/03/2023.
//

import SwiftUI

struct MyEvenments: View {
    var spotlightArray:[Event]
   
   @State var price =  0
    var body: some View {
        NavigationView{
            
            VStack{
                   Spacer(minLength: 40)
                    Text("Mes prochains évènements")
                        .foregroundColor(Color("Default"))
                        .font(.title)
                        .fontDesign(.rounded)
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                    List{
                        ForEach(spotlightArray) { Event in
                            NavigationLink {
                                EventDetails(eventDetails: Event)
                            } label: {
                                HStack{
                                    Image(Event.image)
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .scaledToFill()
                                    VStack(alignment:.leading){
                                        Text(Event.title)
                                            .font(.system(size: 20))
                                            .bold()
                                            .fontDesign(.rounded)
                                        HStack{
                                            Image(systemName: "calendar")
                                                .foregroundColor(Color("Default"))
                                            Text(Event.date)
                                                .font(.system(size: 15))
                                                .foregroundColor(Color("Default"))
                                                .fontDesign(.rounded)
                                            }
                                        HStack{
                                        Image(systemName: "mappin.circle")
                                            Text(Event.place)
                                                .font(.system(size: 15))
                                                .fontDesign(.rounded)
                                            
                                        }
                                        HStack{
                                         Image(systemName: "clock")
                                            Text(Event.schedule)
                                                .font(.system(size: 15))
                                                .fontDesign(.rounded)
                                        }
                                     
                                    }
                                }
                            }
                        }
                    }.listStyle(.plain)
                }
                    }
                }
                    
                }
        


struct MesEvenement_Previews: PreviewProvider {
    static var previews: some View {
        MyEvenments(spotlightArray: evenement )
    }
}
