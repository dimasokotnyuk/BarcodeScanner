//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Дмитро Сокотнюк on 09.07.2025.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButtonText: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"), message: Text("Someting is worng with the camera. We are unable to capture the input"), dismissButtonText: .default(Text("Ok")))
    static let invalidScannedType = AlertItem(title: Text("Invalid Scan Type"), message: Text("The value scanned is not vallid. This app scans EAN-8 and EAN-13 barcodes"), dismissButtonText: .default(Text("Ok")))
}
