//
//  ContentView.swift
//  bmi
//
//  Created by bibi on 28/12/2020.
//

import SwiftUI

struct ContentView: View {
   func bmiStatus(bmi: Double) -> String{
       switch bmi {
       case ..<20: return "thin"
       case 20..<25: return "normal"
       case 25...: return "fat"
       default: return ""
       }
   }
    @State var hight : String = ""
    @State var weight : String = ""
    @State var bmi :String = ""
    var body: some View {
        ZStack(){
         
            VStack(){
            
            Image("hf")
                .resizable()
                .frame(width: 400, height: 170)
                HStack(){
                    Text("إحباط!")
                     .font(.system(size: 30))
                        .bold()
                     .foregroundColor(.pink)
Text(" مرحبا بك بحاسبة ال")
   .font(.system(size: 30))
    .bold()
               
                }
        
            TextField("الطول بالمتر", text: $hight)
                .multilineTextAlignment(.trailing)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("الوزن بالكيلو جرام", text: $weight)
                .multilineTextAlignment(.trailing)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action : {
                let h = Double(hight)  ?? 1
                
                let w = Double(weight)  ?? 1
                
                bmi = String(w / (h * h))
                
                
            }, label: {
                
                Text("احسب")
                    .foregroundColor(.black)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 40)
                    .background(Color.yellow)
                    .clipShape(Capsule())
            })
Text(bmi)
        
               let bmi1 = bmiStatus(bmi: Double(bmi) ?? 0.0)
               Image(bmi1)
                  .resizable()
                  .frame(width: 300, height: 300)
               Text(bmi1)
               
               
               //switch bmi1 {
              // case "thin":
                 // Image
               
              // case "normal":
               //case  "fat":
                  
              //default: return ""
               
               
               
               
    }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
