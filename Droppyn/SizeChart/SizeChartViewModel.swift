import Foundation

class SizeChartViewModel: ObservableObject {
    @Published public var sizeChartModel: [SizeChart]
    
    init() {
        sizeChartModel = PreviewData.SizeCharts
    }
    

}
