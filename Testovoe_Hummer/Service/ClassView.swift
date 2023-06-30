//
//  ClassView.swift
//  Testovoe_Hummer
//
//  Created by Danila Kardashevkii on 30.06.2023.
//
import SwiftUI

struct CategoriesBtn: View {
    let nameCategorie: String
    var isActivities: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(nameCategorie)
                .foregroundColor(isActivities ? Color("TextColorSecondOn") : Color("TextColorSecondOff"))
                .fontWeight(.bold)
                .font(.system(size: 13))
        }
        .frame(width: 88, height: 32)
        .background(isActivities ? Color("BackgroundForCategoriesOn") : Color.clear)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(isActivities ? Color("TextColorSecondOn") : Color("BackgroundForCategoriesOff"), lineWidth: 2)
        )
    }
}




