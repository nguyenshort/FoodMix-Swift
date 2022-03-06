//
//  RecipeItemView.swift
//  FoodMix
//
//  Created by Yuan on 26/02/2022.
//

import SwiftUI

struct RecipeItemView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            RecipeAvatar(avatar: recipe.avatar)
                .scaledToFill()
                .frame(height: 150)
                .clipped()
                .overlay(
                
                    Circle()
                        .fill(Color.white)
                        .frame(width: 50, height: 50)
                        .overlay(
                            
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color("Flickr Pink"))
                                .frame(width: 25, height: 25)
                            
                        )
                        .offset(x: -25, y: 25)
                        .shadow(color: .black.opacity(0.05), radius: 10, x: 0.0, y: 0.0)
                    
                    , alignment: .bottomTrailing
                    
                )
            
            VStack(alignment: .leading, spacing: 10) {
                
                StarRating(rating: 3.5, size: 18)
                
                Text(recipe.name)
                    .font(.custom(.customFont, size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Trypan Blue"))
                    .lineLimit(2)
                
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 15)
            .padding(.top, 10)
            
        }
        .background(Color.white)
        .frame(width: 250)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0.0, y: 0.0)
        .padding(.bottom)
        
    }
    
}

struct RecipeItemPreview: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Image("food")
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
                .overlay(
                
                    Circle()
                        .fill(Color.white)
                        .frame(width: 50, height: 50)
                        .overlay(
                            
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color("Flickr Pink"))
                                .frame(width: 25, height: 25)
                            
                        )
                        .offset(x: -25, y: 25)
                        .shadow(color: .black.opacity(0.05), radius: 10, x: 0.0, y: 0.0)
                    
                    , alignment: .bottomTrailing
                    
                )
            
            VStack(alignment: .leading, spacing: 10) {
                
                StarRating(rating: 3.5, size: 18)
                
                Text("Lợn Xào Sả Ớt")
                    .font(.custom(.customFont, size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Trypan Blue"))
                    .lineLimit(2)
                
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 15)
            .padding(.top, 10)
            
        }
        .background(Color.white)
        .frame(width: 250)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0.0, y: 0.0)
        .padding(.bottom)
        
    }
}

struct RecipeItemView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItemPreview()
    }
}
