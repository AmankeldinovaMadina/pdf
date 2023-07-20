import UIKit
import SwiftUI

struct DocumentPicker: UIViewControllerRepresentable {
    @Binding var url: URL?

    func makeUIViewController(context: Context) -> some UIViewController {
        let viewController = UIDocumentPickerViewController(forOpeningContentTypes: [.pdf])
        viewController.delegate = context.coordinator
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        print("SwiftUI updated")
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
}

extension DocumentPicker {
    class Coordinator: NSObject, UIDocumentPickerDelegate {
        let parent: DocumentPicker

        init(parent: DocumentPicker) {
            self.parent = parent
        }

        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            guard let url = urls.first else { return }
            parent.url = url
        }
    }
}
