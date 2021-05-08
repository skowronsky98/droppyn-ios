//
//  OfferDetailView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 08/05/2021.
//

import SwiftUI

struct OfferDetailView: View {
    var offer: Offer
    
    var body: some View {
        Text("Offer View")
    }
}

struct OfferDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OfferDetailView(offer: PreviewData.Offers[0])
    }
}
