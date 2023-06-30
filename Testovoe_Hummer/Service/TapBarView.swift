

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Меню")
                }
            ContactsView()
                .tabItem {
                    Image(systemName: "location.fill")
                    Text("Контакты")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
          CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
        }
        .accentColor(Color("TextColorSecondOn"))
        .background(.white)
    }
}


