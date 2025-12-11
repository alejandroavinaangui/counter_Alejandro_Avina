//
//  ContentView.swift
//  counter_Alejandro_Avina
//
//  Created by Alejandro Avina on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0;
    @State var pressed = false;
    
    func increment(){
        counter += 1;
    }
    
    func decrement(){
        counter -= 1;
    }
    
    func reset(){
        counter = 0;
    }
    
    var body: some View {
        ZStack{
            Color.gray
            VStack {
                Text("The counter is : \(counter)")
                    .font(.system(size:40,weight:.light))
                Spacer().frame(height: 80)
                HStack{
                    Button(action: increment ){
                        Text("Increment")
                            .font(.headline)
                            .padding(10)
                            .background(Color.blue)
                            .cornerRadius(100)
                            .foregroundColor(.black)
                          
                    }
                    Button(action:decrement){
                        Text("Decrement")
                            .font(.headline)
                            .padding(10)
                            .background(Color.blue)
                            .cornerRadius(100)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                Button(action:reset){
                    Text("Reset")
                        .font(.headline)
                        .padding(10)
                        .background(Color.blue)
                        .cornerRadius(100)
                        .foregroundColor(.black)
                }
                
            }
            .padding()
        }
        
    }
       
}

#Preview {
    ContentView()
}
