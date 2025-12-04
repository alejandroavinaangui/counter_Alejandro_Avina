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
                HStack{
                    Button(action: increment ){
                        Text("Increment")
                            .font(.headline)
                            .overlay{
                                RoundedRectangle(cornerRadius:5)
                                    .stroke(Color.blue,lineWidth:2)
                                    .padding(.horizontal,-2)
                            }
                    }
                    Button(action:decrement){
                        Text("Decrement")
                            .font(.headline)
                            .overlay{
                                RoundedRectangle(cornerRadius:5)
                                    .stroke(Color.blue,lineWidth:2)
                                    .padding(.horizontal,-2)
                            }
                    }
                    .padding()
                }
                Button(action:reset){
                    Text("Reset")
                        .font(.headline)
                        .overlay{
                            RoundedRectangle(cornerRadius:5)
                                .stroke(Color.blue,lineWidth:2)
                                .padding(.horizontal,-2)
                        }
                }
                
            }
            .padding()
        }
        
    }
       
}

#Preview {
    ContentView()
}
