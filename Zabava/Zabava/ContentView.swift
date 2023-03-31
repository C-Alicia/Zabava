//
//  ContentView.swift
//  Zabava
//
//  Created by Lion on 21/03/2023.
//

import SwiftUI
struct ContentView: View {
    var homeView : accueil = accueil(currentEvent: woodStowerEvent, newEvent: spotlightArray)
    var myEventView: MyEvenments = MyEvenments(spotlightArray: evenement)
    

    
    var profilView: MyprofilUIView = MyprofilUIView(myProfilView: sophie, currentEventArray: evenement, favoriteEvent: favoriteEventArray, pastEvent: pastEventsArray)
    
    var searchView = SearchView(allElementView: tabOfEvents, elementDetail: cinema)
    
    var body: some View {
        TabView {
            homeView
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil")
                }
            
                        
                searchView
                .tabItem
            {
                Image(systemName: "magnifyingglass")
                Text("Recherche")
            }
            myEventView
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Mes évènements")
                }
            profilView
                .tabItem
            {
                Image(systemName: "person.fill")
                Text("Profil")
            }
             
           
            
        }.accentColor(.accentColor)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}
