//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Дмитро Сокотнюк on 09.07.2025.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: String
    let message: String
    let dismissButtonText: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Someting is worng with the camera. We are unable to capture the input", dismissButtonText: .default(Text("Ok")))
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "The value scanned is not vallid. This app scans EAN-8 and EAN-13 barcodes", dismissButtonText: .default(Text("Ok")))
}
