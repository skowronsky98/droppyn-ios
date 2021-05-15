//
//  SizeChartDTO.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 15/05/2021.
//

import Foundation

struct SizeChartDTO: Codable, Identifiable {
    var id: String
    var eu: String
    var type: String
    var uk: Double
    var us: Double
    var brandId: String
    

}

class SizeChartMapper {
    
    static func toDomain(sizeChartDTO: SizeChartDTO) -> SizeChart{
        return SizeChart(id: sizeChartDTO.id, eu: sizeChartDTO.eu, type: sizeChartDTO.type, uk: sizeChartDTO.uk, us: sizeChartDTO.us, brandID: sizeChartDTO.brandId)
    }
    
    static func toDomain(sizeChartsDTO: [SizeChartDTO]) -> [SizeChart]{
        var sizeCharts:[SizeChart] = []
        for item in sizeChartsDTO {
            sizeCharts.append(SizeChart(id: item.id, eu: item.eu, type: item.type, uk: item.uk, us: item.us, brandID: item.brandId))
        }
        
        return sizeCharts
    }
}
