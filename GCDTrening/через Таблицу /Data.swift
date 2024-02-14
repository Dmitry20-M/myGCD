//
//  Data.swift
//  GCDTrening
//
//  Created by Mac on 14.02.2024.
//

import UIKit

struct ModelData {
    var labelData: String
    var imageData: String
    
    // какие еще есть вариаты позже разобрать
    static func modelData() -> [ModelData] {
        return [
            ModelData(labelData: "veselo", imageData: "1")
        ]

    }
}
