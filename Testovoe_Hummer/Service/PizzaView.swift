//
//  ClassView.swift
//  Testovoe_Hummer
//
//  Created by Danila Kardashevkii on 30.06.2023.
//
import SwiftUI

struct PizzaView: View {

    let ImageName: String 
    let namePizza: String
    let descPizza: String
    let pricePizza: Int
    
    init(Imagename: String ,namepizza: String ,descpizza: String ,pricepizza: Int){
     
        ImageName = Imagename
        namePizza = namepizza
        descPizza = descpizza
        pricePizza = pricepizza
    }
    
    var body: some View {
        VStack{
            Button {
                
            } label: {
                    HStack{
                        VStack{
                            Image(ImageName)
                        }
                        Spacer()
                        VStack{
                    
                            Spacer()
                            VStack{
                                Text(namePizza)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .font(.system(size: 17))
                                Text(descPizza)
                                    .foregroundColor(.gray)
                                    .fontWeight(.regular)
                                    .font(.system(size: 13))
                                    .padding(.top,1)
                                
                            }
                            HStack {
                                Spacer()
                                
                                Button {
                                    // Действия при нажатии на кнопку
                                } label: {
                                    HStack {
                                        Text("от " + String(pricePizza) + " р")
                                            .foregroundColor(Color("TextColorSecondOn"))
                                            .fontWeight(.bold)
                                            .font(.system(size: 13))
                                    }
                                    .frame(width: 88, height: 32)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color("TextColorSecondOn"), lineWidth: 2) // Применяем границу
                                    )
                                    .cornerRadius(6)
                                }
                                
                            }

                            Spacer()
            
                        }
                     
                     

                    }
                    .cornerRadius(20)
                    .padding()
                
            }

    }
    .background(Color("background"))

  }
}

struct PizzaView_Prewiev: PreviewProvider {
    static var previews: some View {
        PizzaView(Imagename: "PizzaVetchina", namepizza: "Ветчина и сыр", descpizza: "Ветчина и сыр", pricepizza: 345)
    }
}

