import SwiftUI

struct CreateOffer: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @StateObject var myOffersViewModel: MyOffersViewModel
    
    @StateObject private var createOfferVM = CreateOfferViewModel()
    
    @EnvironmentObject private var sizeChartVM : SizeChartViewModel
       
    @State private var isShoesPresented = false
    
    let formatter: NumberFormatter = {
           let formatter = NumberFormatter()
        formatter.numberStyle = .currencyAccounting
           return formatter
       }()
        
    var body: some View {
        
        
        VStack {

            if let shoe = createOfferVM.shoe {
                
                Button(action: {
                    isShoesPresented = true
                }){
                    VStack {
                        Image("\(shoe.media.imageUrl)")
                            .resizable()
                            .scaledToFit()
                            .padding()
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(height:160)
                        
                        Text("\(shoe.model)")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                            .padding(2)
                            .foregroundColor(.black)
                        
                        Text("\(shoe.brand.name)")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                }
            } else {
                
                
                
                HStack {
                    Button(action: {
                        isShoesPresented = true
                    }){
                        Image(systemName: "plus.app")
                        Text("Click to Add Shoes")
                    }
                   
                }.font(.title2)
                .padding(50)
            }
            //Spacer()
            
            Form{
                
                Section(header: Text("Price")){
                    
                    TextField("Price", value: $createOfferVM.price, formatter: formatter)
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.decimalPad)
                                   .padding(6)
                }
                   // Spacer()
                    
                Section(header: Text("Size")){
                    SizeChartView(sizeChartVM: sizeChartVM, sizeIndex: $createOfferVM.sizeIndex).padding(.top,16)
                        .listRowInsets(EdgeInsets())
                        .padding(8)
//                        .onAppear {
//                            self.sizeIndex = sizeChartVM.sizeChartModel.firstIndex(matching: myOffer.size)!
//                        }
                }
                
                Section{
                    
                    HStack {
                        Spacer()
                        Button("Create"){
            //                print(sizeIndex)
//                            myOffer.size = sizeChartVM.sizeChartModel[sizeIndex]
                            
                            if let shoe = createOfferVM.shoe {
                                myOffersViewModel.addOffer(shoe: shoe, size: sizeChartVM.sizeChartModel[createOfferVM.sizeIndex], price: createOfferVM.price)
                            }

                            
                            self.presentationMode.wrappedValue.dismiss()

                        }
                        Spacer()
                    }
                    
                }
                                
            }
            
           // Spacer()
            
        }.navigationBarTitle("Create Offer", displayMode: .inline)
        .sheet(isPresented: $isShoesPresented, content: {
            SelectShoes(isShoesPresented: $isShoesPresented, shoe: $createOfferVM.shoe)
        })

        
    }
    
    

}


struct SelectShoes: View {
    @StateObject private var shoeListVM = ShoeListViewModel()
    @Binding var isShoesPresented: Bool
    @Binding var shoe: Shoe?
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(shoeListVM.shoes){ s in
//                    NavigationLink(destination: ShoeDetailView(shoe: shoe)){
                    
                    Button(action: {
                        
                        self.shoe = s
                        self.isShoesPresented = false
                        
                    }) {
                        ShoeItemView(shoe: s)
                    }
                    
                        
//                    }
                }
            }.navigationBarTitle("Select Shoes", displayMode: .inline)
            .navigationBarItems(
                trailing: Button (action: { self.isShoesPresented = false } ) { Text("Back")
                    .foregroundColor(.blue)
                }
        )
        }
    }
}

struct CreateOffer_Previews: PreviewProvider {
    static var previews: some View {
        CreateOffer(myOffersViewModel: MyOffersViewModel()).environmentObject(SizeChartViewModel())
    }
}
