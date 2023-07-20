import SwiftUI
import UIKit 

struct ContentView: View {
    @State private var isPickedPresented = false
    @State private var documentURL: URL?

    var body: some View {
        ZStack {
            Button {
                isPickedPresented.toggle()
            } label: {
                Text("Select your PDF")
            }
            .sheet(isPresented: $isPickedPresented) {
                DocumentPicker(url: $documentURL)
            }
            EmptyView()
            .sheet(item: $documentURL) { url in
                PDFComponent(url:url)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension URL:Identifiable {
    public var id: String{
        return self.absoluteString
    }
}
