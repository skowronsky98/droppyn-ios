import SwiftUI

struct ProfileView: View {
    @ObservedObject private var profileVM = ProfileViewModel()
    
    @State var rValue: Double = 0.5
       @State var gValue: Double = 0.5
       @State var bValue: Double = 0.5

       @State var isPresented = false
       var SliderModalPresentation: some View {
           NavigationView {
               Form {
                   Section(header: Text("Header Background Color")) {
                       colorSlider(value: $rValue, textColor: .red)
                       colorSlider(value: $gValue, textColor: .green)
                       colorSlider(value: $bValue, textColor: .blue)
                       HStack {
                           VStack {
                               RoundedRectangle(cornerRadius: 5)
                                   .frame(width: 100)
                                   .foregroundColor(Color(red: rValue, green: gValue, blue: bValue, opacity: 1.0))
                           }
                           VStack {
                               Text("R: \(Int(rValue * 255.0))")
                               Text("G: \(Int(gValue * 255.0))")
                               Text("B: \(Int(bValue * 255.0))")
                           }
                       }
                   }
               }

               .navigationBarTitle(Text("Settings"))
                   .navigationBarItems(
                       trailing: Button (action: { self.isPresented = false } ) { Text("Done")
                           .foregroundColor(.blue)
                       }
               )
           }
       }

       var body: some View {
           VStack {
               VStack {
                   Header()
                       .foregroundColor(Color(red: rValue, green: gValue, blue: bValue, opacity: 1.0))
                       .edgesIgnoringSafeArea(.top)
                       .frame(height: 250)
                ProfileImage("\(profileVM.user.photoURL)")
                       
                        .offset(y: -120)
                        .padding(.bottom, -130)
                    
                   VStack {
                    Text("\(profileVM.user.firstname) \(profileVM.user.surname)")
                           .bold()
                           .font(.title)
                       Text("\(profileVM.user.email)")
                           .font(.subheadline)
                           .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "phone.fill")
                        Text("\(profileVM.user.phone)")
                               .bold()
                            .font(.headline)
                            
                    }.padding(.top,6)
                   }.padding()
               }
               Spacer()
               Button (action: { self.isPresented = true }, label: {
                   HStack {
                       Image(systemName: "slider.horizontal.3")
                           .imageScale(.large)
                       Text("Settings")
                           .bold()
                           .accessibility(label: Text("Settings"))
                   }
                   .padding()
               })
           }.sheet(isPresented: $isPresented, content: {
               self.SliderModalPresentation
           })
       }
    
    
    struct ProfileImage: View {
        var url: String
        
        init(_ url: String) {
            self.url = url
        }
        
        var body: some View {
            VStack {
                Image("\(url)")
                    .resizable()
                    .frame(width: 270, height: 270)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    
            }
        }
    }


}

struct Header: View {
    var body: some View {
        Rectangle()
            .frame(width: 500)
    }
}

struct colorSlider: View {
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        HStack {
            Text(verbatim: "0")
                .foregroundColor(textColor)
            Slider(value: $value, in: 0.0...1.0)
            Text(verbatim: "255")
                .foregroundColor(textColor)
            
        }
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


