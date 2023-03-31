//
//  SearchView.swift
//  Zabava
//
//  Created by Lion on 24/03/2023.
//

import SwiftUI

struct SearchView: View {
    @State var search = ""
    var allElementView: [Event]
    var elementDetail: Event
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                List {
                    //   search.isEmpty ?
                    ForEach(allElementView.filter({
                        if search.isEmpty == true {
                            
                            return true
                        }
                        else {
                            return
                            $0.category.rawValue.contains(search.lowercased()) || $0.title.lowercased().contains(search.lowercased())
                        }
                    })) { view in   NavigationLink {
                        EventDetails(eventDetails: view)
                    }
                    label: {
                        HStack {
                            Image(view.image)
                                .resizable()
                                .frame(width:
                                        70,height: 70)
                            VStack(alignment: .leading, spacing: 10) {
                                Text(view.title)
                                    .opacity(0.9)
                                    .fontDesign(.rounded)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                HStack {
                                    Image(systemName: "calendar")
                                        .foregroundColor(Color("Default"))
                                    Text(view.date)
                                        .fontDesign(.rounded)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("Default"))
                                        .font(.system(size: 15))
                                
                                }
                                HStack {
                                    Image(systemName: "clock")
                                        .opacity(0.7)
                                    Text(view.schedule)
                                        .font(.system(size: 15))
                                    .opacity(0.7)
                                }
                                
                            }   .padding()
                            
                            
                        }
                    }
                    }
                }
            }
            .searchable(text: $search, prompt: "ex: Football")
            .listStyle(.plain)
        }
        
    }
    
    struct SearchView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView(allElementView: tabOfEvents,elementDetail: cinema)
        }
    }
}

