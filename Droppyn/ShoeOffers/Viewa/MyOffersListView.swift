import SwiftUI



struct MyOffersListView: View {
    @ObservedObject private var myOffersVM = MyOffersViewModel()
    
    var body: some View{
        NavigationView{
            List{
                ForEach(myOffersVM.myOffers){ offer in
                    
                    NavigationLink(destination: MyOfferView()){
                        MyOfferItemView(offer: offer)
                    }
                    
                    
                
                }.onDelete(perform: { indexSet in
                    for i in indexSet {
                        myOffersVM.deleteItem(index: i)
                    }
                })
            }.listStyle(PlainListStyle())
            .navigationBarTitle("My Offers")
            .navigationBarItems(trailing: Button(action: {
                myOffersVM.addShoe()
            }) {
                Image(systemName: "plus.app").font(.title)
            })
            
        }
    }
}

struct ShoeCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        
        MyOffersListView()
        
            // Fallback on earlier versions
        
    }
}
