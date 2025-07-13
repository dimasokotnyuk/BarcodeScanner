//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Дмитро Сокотнюк on 08.07.2025.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BaracodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                 
                Spacer().frame(height: 50)
                
                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle(Text("Barcode Scanner"))
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: (alertItem.title),
                      message: (alertItem.message),
                      dismissButton: alertItem.dismissButtonText)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
