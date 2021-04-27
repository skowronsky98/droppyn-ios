import SwiftUI


struct SizeChartView: View {
    @ObservedObject var sizeChartVM: SizeChartViewModel
    
    @State private var authPath = 1
    
    @Binding var sizeIndex: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker("Size", selection: $authPath) {
                Text("EU").tag(0)
                Text("US").tag(1)
                Text("UK").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            
            switch authPath {
            case 0:
                Picker("US", selection: $sizeIndex){
                    ForEach(0..<sizeChartVM.sizeChartModel.count) {
                        Text("\(sizeChartVM.sizeChartModel[$0].eu)").tag($0)
                    }
                }
                .frame(height: 120)
                .pickerStyle(WheelPickerStyle())
                .clipped()
                
            case 1:
                Picker("US", selection: $sizeIndex){
                    ForEach(0..<sizeChartVM.sizeChartModel.count) {
                        Text("\(String(sizeChartVM.sizeChartModel[$0].us))").tag($0)
                    }
                }
                .frame(height: 120)
                .pickerStyle(WheelPickerStyle())
                .clipped()
                           
                
            case 2:
                Picker("US", selection: $sizeIndex){
                    ForEach(0..<sizeChartVM.sizeChartModel.count) {
                        Text("\(String(sizeChartVM.sizeChartModel[$0].uk))").tag($0)
                    }
                }
                .frame(height: 120)
                .pickerStyle(WheelPickerStyle())
                .clipped()
                
                
            default:
                Text("ERR")
            }
            
         
        }
        .background(Color("Color.Background").edgesIgnoringSafeArea(.all))
        
    }
}
struct SizeChartView_Previews: PreviewProvider {
    static var previews: some View {
        SizeChartView(sizeChartVM: SizeChartViewModel(), sizeIndex: .constant(0))
    }
}


