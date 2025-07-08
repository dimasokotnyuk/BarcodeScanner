//
//  BaracodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Дмитро Сокотнюк on 09.07.2025.
//

import SwiftUI

final class BaracodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
       scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red  : .green
    }
}
