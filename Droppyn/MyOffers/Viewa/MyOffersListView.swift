import SwiftUI

struct MyOffersListView: View {
    @StateObject private var myOffersVM = MyOffersViewModel()
    @EnvironmentObject private var sizeChartVM: SizeChartViewModel
    
    var body: some View{
        NavigationView{
            List{
                ForEach(myOffersVM.myOffers){ offer in
                    
                    ZStack {
                        MyOfferItemView(offer: offer)
                        
                        NavigationLink(destination: MyOfferView(myOffer: self.$myOffersVM.myOffers[self.myOffersVM.myOffers.firstIndex(matching: offer)!], sizeChartVM: sizeChartVM, myOffersVM: myOffersVM)){
                            EmptyView()
                            
                        }
                    }
                
                }.onDelete(perform: { indexSet in
                    
                    for i in indexSet {
                        myOffersVM.deleteItem(index: i)
                    }
                })

            }.listStyle(PlainListStyle())
            .navigationBarTitle("My Offers")
            .navigationBarItems(trailing: NavigationLink(destination: CreateOffer(myOffersViewModel: myOffersVM)) {
                    Image(systemName: "plus.app").font(.title)
                }
            )
        }
    }
}

struct ShoeCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        
        MyOffersListView()
        
            // Fallback on earlier versions
        
    }
}


