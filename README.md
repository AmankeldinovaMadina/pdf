# PDF Viewer SwiftUI App

This SwiftUI app allows users to select a PDF file from their device and view its content using the PDFKit framework.

## Getting Started

### Prerequisites

- Xcode 12 or later
- iOS 13 or later

### Installing

1. Clone or download the repository.
2. Open the Xcode project (`.xcodeproj`) in Xcode.

### How to Use

1. Open the app in Xcode and build and run it on a simulator or a physical device.
2. Tap the "Select your PDF" button to bring up the document picker.
3. Select a PDF file from the device's documents.

## Code Overview

### DocumentPicker

- `DocumentPicker` is a SwiftUI view representing a document picker that allows users to select a PDF file.
- The selected PDF file's URL is stored in the `documentURL` property using a `Binding<URL?>`.

### ContentView

- `ContentView` is the main SwiftUI view that displays the user interface.
- It contains a button labeled "Select your PDF" which, when tapped, presents the document picker as a sheet.
- The selected PDF file's URL is displayed as text below the button, if available.
- The `PDFComponent` view is used to display the content of the selected PDF file.

### PDFComponent

- `PDFComponent` is a SwiftUI view that displays the content of a selected PDF file using the `PDFView` from the PDFKit framework.
- The URL of the PDF file to be displayed is provided as a parameter.


