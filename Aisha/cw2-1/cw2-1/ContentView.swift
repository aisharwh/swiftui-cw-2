//
//  ContentView.swift
//  cw2-1
//
//  Created by MacBook` on 25/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var number = 0
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                TextField("اكتب اسمك هنا", text: $name).padding()
                
                HStack{
                   
                    Stepper("كم بطلا من الماء تريد ان تتعهد بأن تشرب ؟ ", value: $number, in: 0...100).padding()
                }
                
                Spacer()
                
                VStack{
                    Spacer()
                Text("اتعهد انا") .font(.headline)
                    Text(name) .font(.headline)
                    Text("ان اشرب") .font(.headline)
                    Text("\(number)").font(.headline)
                    Text("كوبا من الماء يوميا") .font(.headline)
                    Text("والله على ما اقول شهيد").font(.headline)
                    Spacer()
                    
                }
            }
            
            .padding()
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
            
    }
}
