//
//  HomeView.swift
//  MyTravelUI
//
//  Created by Iqbal Alhadad on 29/10/25.
//

import SwiftUI

struct HomeView : View {
    var body: some View {
        VStack (alignment: .leading) {
          headerView
            
            categoryRow
                .padding(.top,10)
            
            categoryContent
            popularRow
            
      
            Spacer()
           
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

private extension HomeView {
    var headerView: some View {
        HStack {
            Image.menu
                .padding()
                .frame(width: 36, height: 36)
                .background(Color.appGrayColor)
                .cornerRadius(10)
            Spacer()
            VStack {
                Text("Current Location")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(Color.gray)
                HStack {
                    Image.location
                        .frame(width: 14, height: 14)
                        .foregroundStyle(Color.appBlueColor)
                    Text("Denpasar, Bali")
                        .font(.system(size: 14, weight: .semibold))
                }
                
            }
            Spacer()
            Image.user
                .frame(width: 36, height: 36)
        }
    }
    
    var categoryRow: some View {
        HStack {
            Text("Category")
                .font(.system(size: 18, weight: .bold))
            Spacer()
            Text("View All")
                .font(.system(size: 12, weight: .medium))
                .foregroundStyle(Color.appBlueColor)
            Image.right_arrow
                .foregroundStyle(Color.appBlueColor)
        }
    }
    
    var categoryContent: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(MockDataService.instance.getCategories(), id: \.name) {
                        category in
                        CategoryCardView(category: category)
                    }
                }
            }
            
            .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(MockDataService.instance.getMountains(), id:\.title){
                        mountain in
                        MountainCardView(mountain: mountain)
                    }
                }
            }
            
            .padding(.top, 5)
           }
        }
    
    var popularRow: some View {
        HStack {
            Text("Popular Destination")
                .font(.system(size: 18, weight: .bold))
            Spacer()
            Text("View All")
                .font(.system(size: 12, weight: .medium))
                .foregroundStyle(Color.appBlueColor)
            Image.right_arrow
                .foregroundStyle(Color.appBlueColor)
        }
    }
}
