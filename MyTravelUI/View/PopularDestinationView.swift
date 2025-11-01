//
//  PopularDestinationView.swift
//  MyTravelUI
//
//  Created by Iqbal Alhadad on 01/11/25.
//

import SwiftUI

struct PopularDestinationView: View {
    let destination: Destination
    var body: some View {
        HStack {
            
       
        destination.image
        VStack (alignment: .leading, spacing: 4){
            Text(destination.title)
                .font(.system(size: 14, weight: .bold))
            HStack {
                Image.location
                    .frame(width: 10, height: 10)
                Text(destination.location)
                    .font(.system(size: 10, weight: .bold))
            }
            .foregroundStyle(Color.appBlueColor)
            Text(destination.description)
                .font(.system(size: 9, weight: .regular))
                .foregroundStyle(Color.gray)
            HStack {
                Text (destination.amount)
                    .font(.system(size: 12, weight: .bold))
                Text("/Person")
                    .font(.system(size: 10, weight: .medium))
            }
         }
      }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.WhiteBlack)
                .shadow(
                    color: .BlackWhite.opacity(0.1), radius: 15, x: 0, y: 15
                )
        )
        .padding(.top,5)
    }
}

struct PopularDestination_Previews: PreviewProvider {
    static var previews: some View {
        PopularDestinationView(destination: MockDataService.instance.getPopularDestination()[0])
    }
   
}
