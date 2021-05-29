//
//  OfferDetailView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 08/05/2021.
//

import SwiftUI

struct OfferDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject private var favoriteVM : FavoriteViewModel
    
    @State private var favorite = false
    
    var offer: Offer
    
    var body: some View {
        
        
        VStack {
            
            
            Image("\(offer.shoe.media.imageUrl)")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(height:160)
                
            Text("\(offer.shoe.model)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .padding(2)
                    .foregroundColor(.black)
                
            Text("\(offer.shoe.brand.name)")
                    .font(.headline)
                    .foregroundColor(.black)
            

            
             
       
            
            Form{
                
                Section(header: Text("Price")){
                    Text("$\(offer.price, specifier: "%.0f")")
                }
                   // Spacer()
                    
                Section(header: Text("Size")){
                    HStack {
                        Spacer()
                        Text("US \(offer.size.us, specifier: "%.1f")")
                        Spacer()
                        Text("UK \(offer.size.uk, specifier: "%.1f")")
                        Spacer()
                        Text("EUR \(offer.size.eu)")
                        Spacer()
                    }
                }
                
                Section{
                    
                    HStack {
                        Spacer()

                        Button(action: {
//                            self.presentationMode.wrappedValue.dismiss()
                            
                            
                        }, label: {
                            HStack {
                                Image(systemName: "plus.bubble.fill")
                                Text("View Profile")
                            }
                        })
                        Spacer()
                    }
                    
                }
                                
            }.onAppear(){
                favorite = favoriteVM.isOfferFavorite(offer: offer)
            }
            
           // Spacer()
            
        }.navigationBarTitle("\(offer.user.username)", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            
            print("fav list change")
           
            if !favorite {
                favoriteVM.addOfferToFavorite(offer: offer)
                favorite = true
            }
            else {
                favoriteVM.deleteOffer(offer: offer)
                favorite = false
            }
            
          
            
        }) {
            
            if !favorite {
                Image(systemName: "heart")
                    .font(.title)
                    .foregroundColor(Color.red)
            }
            else {
                Image(systemName: "heart.fill")
                    .font(.title)
                    .foregroundColor(Color.red)
            }
//            Toggle("", isOn: $myOffer.active)
//                .toggleStyle(SwitchToggleStyle(tint: .red))
        })
      
        
    }
    
    

}


struct OfferDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OfferDetailView(offer: PreviewData.Offers[0]).environmentObject(FavoriteViewModel())
    }
}
