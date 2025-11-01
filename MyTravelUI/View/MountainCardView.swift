//
//  MountainCardView.swift
//  MyTravelUI
//
//  Created by Iqbal Alhadad on 30/10/25.
//

import SwiftUI


struct MountainCardView: View {
    let mountain: Destination
    var body: some View {
        mountain.image
            .overlay(alignment: .bottom) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(mountain.title)
                           .font(.system(size: 12,weight: .bold))
                        HStack {
                            Image.location
                                .frame(width: 10, height: 10)
                            Text(mountain.location)
                                .font(.system(size: 10,weight: .medium))
                        }
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(mountain.amount)
                            .font(.system(size: 12,weight: .bold))
                        Text("/Person")
                            .font(.system(size: 10,weight: .medium))
                    }
                }
                .foregroundColor(.white)
                .padding(5)
                   .frame(maxWidth: .infinity)
                   .background(Color.appGrayColor.opacity(0.2))
            }
    }
}

struct MountainCardView_Previews: PreviewProvider {
    static var previews: some View {
        MountainCardView(mountain: MockDataService.instance.getMountains()[0])
    }
}
