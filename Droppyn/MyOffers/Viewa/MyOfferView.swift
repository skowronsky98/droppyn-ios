//
//  MyOfferView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 16/04/2021.
//

import SwiftUI

struct MyOfferView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var myOffer : Offer
    
    @StateObject private var sizeChartVM = SizeChartViewModel()
    @State private var sizeIndex = 0
//    @State private var price = 0.0
    
    let formatter: NumberFormatter = {
           let formatter = NumberFormatter()
        formatter.numberStyle = .currencyAccounting
           return formatter
       }()
        
    var body: some View {
        
        
        VStack {
            Image("shoe")
                .resizable()
                .scaledToFit()
                .padding()
                .fixedSize(horizontal: false, vertical: true)
                .frame(height:160)
                
            
            
            Text("\(myOffer.shoe.model)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(2)
            
            Text("\(myOffer.shoe.brand.name)")
                .font(.headline)
            
            
            //Spacer()
            
            Form{
                
                Section(header: Text("Price")){
                    
                    TextField("Price", value: $myOffer.price, formatter: formatter)
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.decimalPad)
                                   .padding(6)
                }
                   // Spacer()
                    
                Section(header: Text("Size")){
                    SizeChartView(sizeChartVM: sizeChartVM, sizeIndex: $sizeIndex).padding(.top,16)
                        .listRowInsets(EdgeInsets())
                        .padding(8)
                        .onAppear {
                            self.sizeIndex = sizeChartVM.sizeChartModel.firstIndex(matching: myOffer.size)!
                        }
                }
                
                Section{
                    
                    HStack {
                        Spacer()
                        Button("Save"){
            //                print(sizeIndex)
                            myOffer.size = sizeChartVM.sizeChartModel[sizeIndex]
                            self.presentationMode.wrappedValue.dismiss()

                        }
                        Spacer()
                    }
                    
                }
                                
            }
            
           // Spacer()
            
        }.navigationBarTitle("My Offer", displayMode: .inline)
//        .padding(.bottom)
        .navigationBarItems(trailing: Button(action: {
            print(myOffer.active)
        }) {
            Toggle("", isOn: $myOffer.active)
//                .toggleStyle(SwitchToggleStyle(tint: .red))
            
            
        })
        
    }
}

struct MyOfferView_Previews: PreviewProvider {
    static var previews: some View {
        MyOfferView(myOffer: .constant(PreviewData.MyOffers[0]))
    }
}
