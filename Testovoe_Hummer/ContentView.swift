import SwiftUI

struct ContentView: View {
    @State private var isPizzaSelected = true
       @State private var isComboSelected = false
       @State private var isDessertsSelected = false
       @State private var isDrinksSelected = false

    @State private var selectedCity = "Москва"
      let cities = ["Москва", "Санкт-Петербург", "Новосибирск", "Екатеринбург"] // Ваши города
    
    var body: some View {
        VStack {
            // set location
            HStack {
                HStack {
                    Picker("", selection: $selectedCity) {
                                    ForEach(cities, id: \.self) { city in
                                        Text(city)
                                            .foregroundColor(.black) 
                                    }
                                }
                                .pickerStyle(MenuPickerStyle()) // Стиль раскрывающегося списка
                                .foregroundColor(.black)
                                .font(.system(size: 17))
                    Spacer()
                }
                .padding()
            }
            
            //scrollView for Banners
            VStack {
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        Image("Banner1")
                            .resizable()
                            .frame(width: 300, height: 112)
                        Image("Banner2")
                            .resizable()
                            .frame(width: 300, height: 112)
                    }
                }
                
                //scroll view for pizza
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        CategoriesBtn(nameCategorie: "Пицца", isActivities: isPizzaSelected) {
                            isPizzaSelected = true
                            isComboSelected = false
                            isDessertsSelected = false
                            isDrinksSelected = false
                        }
                        
                        CategoriesBtn(nameCategorie: "Комбо", isActivities: isComboSelected) {
                            isPizzaSelected = false
                            isComboSelected = true
                            isDessertsSelected = false
                            isDrinksSelected = false
                        }
                        
                        CategoriesBtn(nameCategorie: "Десерты", isActivities: isDessertsSelected) {
                            isPizzaSelected = false
                            isComboSelected = false
                            isDessertsSelected = true
                            isDrinksSelected = false
                        }
                        
                        CategoriesBtn(nameCategorie: "Напитки", isActivities: isDrinksSelected) {
                            isPizzaSelected = false
                            isComboSelected = false
                            isDessertsSelected = false
                            isDrinksSelected = true
                        }
                    }
                    .padding() // Remove the spacing between scroll views
                }

            }
            //pizza columns
            ScrollView(.vertical,showsIndicators: false){
                VStack{
                    VStack{
                        PizzaView(Imagename: "PizzaVetchina", namepizza: "Ветчина и сыр", descpizza: "Ветчина,шампиньоны, увеличинная порция моцареллы, томатный соус", pricepizza: 345)
                        PizzaView(Imagename: "PizzaKolbaski", namepizza: "Баварские колбаски", descpizza: "Баварски колбаски,ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус", pricepizza: 345)
                        PizzaView(Imagename: "PizzaLosos", namepizza: "Нежный лосось", descpizza: "Лосось, томаты черри, моцарелла, соус песто", pricepizza: 345)
                        PizzaView(Imagename: "Pizza4Sir", namepizza: "Пицца четыре сыра", descpizza: "Соус Карбонара, Сыр Моцарелла, Сыр Пармезан, Сыр Роккфорти, Сыр Чеддер (тёртый)", pricepizza: 345)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(15)
            }
   
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("background"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
