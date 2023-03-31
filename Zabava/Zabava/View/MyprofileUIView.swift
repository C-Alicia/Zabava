import SwiftUI

struct MyprofilUIView: View {
    var myProfilView : Profil
    var currentEventArray: [Event]
    var favoriteEvent: [Event]
    var pastEvent: [Event]
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                HStack {
                
                    Text("Salut Sophie !")
                        .font(.custom("SF-Compact-Rounded-Thin",size: 30))
                        }
                List {
                  
                    Text("Mes évènements favoris")
                        .font(.title)
                        .foregroundColor(Color("Default"))
                        
                    ForEach(favoriteEvent) { favoriteEvent in
                        NavigationLink {
                            EventDetails(eventDetails:favoriteEvent)
                        }label: {
                            VStack(alignment: .leading) {
                                Text(favoriteEvent.title)
                                    .fontDesign(.rounded)                                    .lineSpacing(6)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 17))
                                Text(favoriteEvent.date)
                                    .opacity(0.7)
                                    .fontDesign(.rounded)                                    .lineSpacing(6)
                                Text(favoriteEvent.place)
                                    .fontDesign(.rounded)                                    .lineSpacing(6)
                                    .opacity(0.7)
                                Text(favoriteEvent.schedule)
                                    .opacity(0.7)
                                    .fontDesign(.rounded)                                    .lineSpacing(11)
                            }
                        }
                    }
                    Text("Mes évènements passés")
                        .font(.title)
                        .foregroundColor(Color("Default"))
                    ForEach(pastEvent) { eventPast in
                        NavigationLink {
                            EventDetails(eventDetails: eventPast)
                        }label: {
                            VStack(alignment: .leading) {
                                Text(eventPast.title)
                                    .fontDesign(.rounded)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .lineSpacing(6)
                                    .font(.system(size: 18))
                                Text(eventPast.date)
                                    .opacity(0.7)
                                    .fontDesign(.rounded)
                                        .lineSpacing(6)
                                Text(eventPast.place)
                                    .opacity(0.7)
                                    .fontDesign(.rounded)
                                        .lineSpacing(6)
                                Text(eventPast.schedule)
                                    .opacity(0.7)
                                    .fontDesign(.rounded)
                                        .lineSpacing(6)
                                
                            }
                        }
                    }
                    
                } .listStyle(.plain)
                
                
            }
        }
    }
}


struct MyprofilUIView_Previews: PreviewProvider {
    static var previews: some View {
        MyprofilUIView(myProfilView:sophie, currentEventArray: currentEventArray,favoriteEvent: favoriteEventArray, pastEvent: pastEventsArray)
        
    }
    
}


