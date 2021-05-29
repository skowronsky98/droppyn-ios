import SwiftUI

struct OffersListView: View {
//    var shoe : Shoe
    @ObservedObject private var offersVM :OffersViewModel
    
    @State private var isLinkActive = false
    
    init(shoe: Shoe) {
        offersVM = OffersViewModel(shoe: shoe)
        
    }
    
    var body: some View{
        
            List{
                ForEach(offersVM.offers){ offer in
                    
                    ZStack {
                        OfferItemView(offer: offer)
                        
                        NavigationLink(destination: OfferDetailView(offer: offer)){
                            EmptyView()
                            
                        }
               
                    }
                    
                    
                
                }
            }.listStyle(PlainListStyle())
            .navigationBarTitle(offersVM.shoe.model)
   
            
        
    }
}

struct OffersListView_Previews: PreviewProvider {
    static var previews: some View {
        OffersListView(shoe: PreviewData.Shoes[0])
    }
}

