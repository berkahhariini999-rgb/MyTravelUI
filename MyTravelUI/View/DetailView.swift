//
//  DetailView.swift
//  MyTravelUI
//
//  Created by Iqbal Alhadad on 01/11/25.
//

import SwiftUI

struct DetailView: View {
    let destination: Destination
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        GeometryReader {
            reader in
            VStack (alignment: .leading, spacing: 0) {
                destination.image
                    .resizable()
                    .scaledToFill()
                    .frame(height: reader.size.height * 0.5)
                    .frame(maxWidth: .infinity)
                
                ScrollView {
                    VStack {
                        HStack {
                            VStack {
                                Text (destination.title)
                                    .font(.system(size: 18, weight: .bold))
                                HStack {
                                    Image.location
                                        .frame(width: 10, height: 10)
                                    Text(destination.location)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .foregroundStyle(Color.appBlueColor)
                            }
                            Spacer()
                            Text(destination.amount)
                                .font(.system(size: 24, weight: .bold))
                            Text("/Person")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundStyle(Color.gray)
                        }
                        Text (destination.description)
                            .font(.system(size: 14, weight: .regular))
                        HStack {
                         Text ("Preview")
                            Spacer()
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(Color.yellow)
                                Text("4.8")
                            }
                            .padding(4)
                            .background(
                                Color.appGrayColor
                            )
                        }
                        ScrollView{
                            HStack {
                                ForEach(MockDataService.instance.getPreviewImages()) { preview in
                                    preview.image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 90, height: 90)
                                    
                                }
                            }
                            
                        }
                        Button {
                            
                        } label : {
                            Text("Book Now")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.appBlueColor)
                                .cornerRadius(8)
                        }
                        
                    //    Spacer()
                    }
                }
                .padding()
                .frame(height: reader.size.height * 0.5)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.whiteBlack)
                )
                .offset(y: -20)
            }
            .ignoresSafeArea()
            .overlay(alignment: .top) {
                HStack {
                    Image.left_arrow
                        .padding()
                        .frame(width: 36, height: 36)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.appGrayColor)
                        ).onTapGesture {
                            dismiss()
                        }
                    Spacer()
                    Image.heart
                        .padding()
                        .frame(width: 36, height: 36)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.appGrayColor)
                        )
                }
            }
            .padding()
            
            
        }
      
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(destination: MockDataService.instance.getPopularDestination()[0])
    }
}
