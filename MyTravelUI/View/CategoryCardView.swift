//
//  CategoryCardView.swift
//  MyTravelUI
//
//  Created by Iqbal Alhadad on 30/10/25.
//

import SwiftUI

struct CategoryCardView: View {
    let category: Category
    var body: some View {
        HStack {
            category.image
                .frame(width: 18, height: 20)
            
            Text(category.name)
                .font(.system(size: 12,weight: .medium))
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.appGrayColor)
        .cornerRadius(10)
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(category: MockDataService.instance.getCategories()[0])
    }
}
