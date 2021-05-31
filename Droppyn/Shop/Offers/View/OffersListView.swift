import SwiftUI

struct OffersListView: View {
//    var shoe : Shoe
    @ObservedObject private var offersVM :OffersViewModel
    
    @State private var isLinkActive = false
    @State private var sizeFilter: SizeChart?
    @State private var showFilter = false
    
    @State private var sizeIndex = -1
    
    @EnvironmentObject private var sizeChartVM: SizeChartViewModel
    
    init(shoe: Shoe) {
        offersVM = OffersViewModel(shoe: shoe)
        
    }
    
    var body: some View{
        
            List{
                
                if let sizeFilter = sizeFilter {
                    ForEach(offersVM.offers.filter { $0.size.id == sizeFilter.id }){ offer in
                        
                        ZStack {
                            OfferItemView(offer: offer)
                            
                            NavigationLink(destination: OfferDetailView(offer: offer)){
                                EmptyView()
                                
                            }
                   
                        }
                        
                        
                    
                    }
                    
                } else {
                    ForEach(offersVM.offers){ offer in
                        
                        ZStack {
                            OfferItemView(offer: offer)
                            
                            NavigationLink(destination: OfferDetailView(offer: offer)){
                                EmptyView()
                                
                            }
                   
                        }
                        
                        
                    
                    }
                }

            }.listStyle(PlainListStyle())
            .navigationBarTitle(offersVM.shoe.model)
            .navigationBarItems(trailing: Button(action: {
                    showFilter = true
            }) {
                
                if let sizeFilter = sizeFilter {
                    Image(systemName: "1.circle")
                        .font(.title)
                        .foregroundColor(.red)
                    
                } else {
                    Image(systemName: "slider.vertical.3")
                        .font(.title)
                }
                   
//                        .foregroundColor(Color.red)

            })
            .sheet(isPresented: $showFilter, content: {
                NavigationView {
                    
                            
                            Form {
                                
                                Section(header: Text("Size")){
                                    
                                    SizeChartView(sizeChartVM: sizeChartVM, sizeIndex: $sizeIndex)
                                }
                                
                                
                                HStack {
                                    Spacer()
                                    
                                    Button("Apply Filter"){
                                        if sizeIndex > -1 {
                                            sizeFilter = sizeChartVM.sizeChartModel[sizeIndex]
                                        } else {
                                            sizeFilter = nil
                                        }
                                        
                                        showFilter = false
                                        
                                    }
                                    
                                    Spacer()
                                }
                                
                                HStack {
                                    Spacer()
                                    Button("Remove Filter"){
                                        sizeFilter = nil
                                        showFilter = false
                                    }.foregroundColor(.red)
                                    Spacer()
                                }
                                
                            }
                            .navigationBarTitle(Text("Filter"))
                            .navigationBarItems(trailing: Button (action: { showFilter = false } ) {
                                Text("Back")
                                    .foregroundColor(.blue)
                        }
                )
                }
            })
   
            
        
    }
}

struct OffersListView_Previews: PreviewProvider {
    static var previews: some View {
        OffersListView(shoe: PreviewData.Shoes[0])
    }
}

