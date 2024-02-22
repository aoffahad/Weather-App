//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Fahad on 19/2/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Welcome to the Weather APP")
                    .bold()
                    .font(.title)
                
            Text("Please Share your current Location to get the weather in your area")
                    .padding()
                
                LocationButton(.shareCurrentLocation) {
                                locationManager.requestLocation()
                        }
                        .cornerRadius(30)
                        .symbolVariant(.fill)
                        .foregroundColor(.white)
                        
                
            }
            .multilineTextAlignment(.center)
            .padding()
            
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
