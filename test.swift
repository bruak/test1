import SwiftUI

struct ContentView: View {
    // TextField’dan alınan metni tutmak için bir @State değişkeni
    @State private var userInput: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            // Başlık metni
            Text("SwiftUI Arayüz Örneği")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
            
            // TextField: Kullanıcıdan metin almak için
            TextField("Metin giriniz...", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            // Button: Tıklandığında bir aksiyon gerçekleştirir
            Button(action: {
                // Burada butona tıklandığında yapılacak işlem tanımlanır
                print("Girilen metin: \(userInput)")
            }) {
                Text("Butona Tıkla")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

// SwiftUI uygulaması için giriş noktası
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

