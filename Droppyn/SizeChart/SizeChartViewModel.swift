import Foundation
import Combine


class SizeChartViewModel: ObservableObject {
    @Published public var sizeChartModel: [SizeChart] = []
    
    private var sizeChartSubscriber: AnyCancellable?
    
    
    
    func fetchSizeChart() {
        sizeChartSubscriber = APIController().sizeChartPublisher
            .sink(receiveCompletion: {_ in }, receiveValue: { (sizeChartDTO) in
                self.sizeChartModel = SizeChartMapper.toDomain(sizeChartsDTO: sizeChartDTO)
                print(self.sizeChartModel)
            })
    }
    
    init() {
//        sizeChartModel = PreviewData.SizeCharts
        
        fetchSizeChart()
    }
    


}
