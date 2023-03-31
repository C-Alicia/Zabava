//
//  EventDetails.swift
//  Zabava
//
//  Created by Apprenant 72 on 22/03/2023.
//

import SwiftUI
import MapKit
import CoreLocation

struct EventDetails: View {
    
    var eventDetails : Event
    
    @State var pushed: Bool = false
    
    
    
    @State private var mapPlace = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.764043, longitude:  4.835659), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    func castValue(_ price: Double) -> Int
    {
        return Int(price)
    }
    
    
    
    func pushed(event: Event) {
        if event.isParticipate == false {
            print("error")
            
        }
        else {
            
        }
    }
    
    @State private var showAlert = false
    @State var presentPopup = false
    @State var mySymbol = false
    
    var body: some View {
        
        ScrollView{
            VStack{
                
                HStack {
                    Spacer()
                    // Button favorite
                    Button {
                        pushed.toggle()
                    } label: {
                        
                        
                        
                        if !pushed {
                            
                            Image(systemName: "bookmark")
                                .font(.largeTitle)
                                .frame(width: 40)
                                .foregroundColor(.black)
                        }
                        else {
                            
                            Image(systemName: "bookmark.fill")
                                .font(.largeTitle)
                                .frame(width: 40)
                                .foregroundColor(Color("Default"))
                        }
                    }
                    
                    .padding()
                    .frame(width: 40, height: 40)
                    .tint(.orange)
                    .fontDesign(.rounded)
                    
                }
                .padding(.trailing)
                Image(eventDetails.image)
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading){ //infos
                    
                    Text(eventDetails.title)
                        .fontDesign(.rounded)
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                        .scaledToFit()
                        .padding(.bottom)
                        .foregroundColor(Color("Default"))
                    
                    HStack{
                        
                        VStack(alignment: .leading){
                            
                            HStack(alignment: .firstTextBaseline){
                                Image(systemName: "calendar")
                                
                                Text("\(eventDetails.date) \n" + "\(eventDetails.schedule)")
                                    .fontDesign(.rounded)
                            }
                            Spacer(minLength: 5)
                            
                            HStack{
                                Image(systemName: "clock")
                                Text(eventDetails.length)
                                    .fontDesign(.rounded)
                            }
                        }// end vstack
                        
                        Spacer()
                        
                        VStack (alignment: .leading, spacing: (20)){
                            
                            HStack{
                                Image("pinMap")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                Text(eventDetails.place)
                                    .fontDesign(.rounded)
                            }
                            
                            
                            HStack{
                                
                                var price = castValue(eventDetails.price)
                                
                                
                                Image(systemName: "eurosign.circle")
                                
                                Text(String(price) + " " + "€")
                                    .fontDesign(.rounded)
                                
                                
                            }// end hstack
                        } .padding(.trailing)
                        
                        
                    } .fontDesign(.rounded)
                    
                    HStack(alignment: .center){
                        Spacer()
                        Button {
                            pushed(event: eventDetails)
                            showAlert = true
                        } label: {
                            Text("Participer")
                                .frame(width: 300)
                                .fontDesign(.rounded)
                            
                        }
                        
                        .alert(isPresented: $showAlert, content: {
                            Alert(title: Text("Confirmation"),
                                  
                                  message: Text("Souhaitez-vous participer à l'événement \(eventDetails.title)" +
                                                " \(eventDetails.date)"),
                                  
                                  primaryButton:
                                    .default(Text("Confirmation"), action: {
                                        self.presentPopup.toggle()
                                    }), secondaryButton: .cancel(Text("Annuler")))
                            
                        })
                        .foregroundStyle(.white)
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                        .padding()
                        Spacer()
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 10){ //description de l'event
                        
                        Text("Organisé par : \(eventDetails.organizer)")
                            .fontDesign(.rounded)
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                        Text(eventDetails.description)
                            .padding(.bottom)
                            .fontDesign(.rounded)
                        
                    }
                    //  .fontDesign(.rounded)
                    // .fontWeight(.light)
                    VStack(alignment: .leading){
                        
                        Map(coordinateRegion: $mapPlace,showsUserLocation: true, annotationItems: [eventDetails]) { place in
                            
                            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)) {
                                
                                ZStack {
                                    VStack {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .foregroundColor(.white)
                                                .shadow(radius: 4)
                                            Text(place.title)
                                                .fontDesign(.rounded)
                                                .padding(10)
                                                .foregroundColor(Color("Default"))
                                        }
                                        VStack {
                                            
                                            Image("pinMapRed")
                                                .resizable()
                                                .frame(width: 25,height: 25)
                                                .fontDesign(.rounded)
                                            
                                        }
                                        .foregroundColor(Color("Default"))
                                    } // end vstack
                                    
                                } // end zstack
                            }
                        }
                        .frame(width: .infinity, height: 300)
                    }
                }
                .padding() //marges standards
            }
        }
    }
    struct EventDetails_Previews: PreviewProvider {
        static var previews: some View {
            EventDetails(eventDetails: woodStowerEvent)
        }
    }
    
}
