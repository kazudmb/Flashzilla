//
//  ContentView.swift
//  Flashzilla
//
//  Created by KazukiNakano on 2020/08/05.
//  Copyright © 2020 dmb. All rights reserved.
//

import SwiftUI
import CoreHaptics

struct ContentView: View {
    
//    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
//    @State private var counter = 0
    
//    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var scale: CGFloat = 1
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency

    var body: some View {
//        Text("Hello, World!")
//            .onReceive(timer) { time in
//                if self.counter == 5 {
//                    self.timer.upstream.connect().cancel()
//                } else {
//                    print("The time is now \(time)")
//                }
//
//                self.counter += 1
//            }
        
//        Text("Hello, World!")
//        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
//            print("Moving to the background!")
//        }
//        Text("Hello, World!")
//        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
//            print("Moving back to the foreground!")
//        }
        
//        HStack {
//            if differentiateWithoutColor {
//                Image(systemName: "checkmark.circle")
//            }
//
//            Text("Success")
//        }
//        .padding()
//        .background(differentiateWithoutColor ? Color.black : Color.green)
//        .foregroundColor(Color.white)
//        .clipShape(Capsule())
//        Text("Hello, World!")
//        .scaleEffect(scale)
//        .onTapGesture {
//            if self.reduceMotion {
//                self.scale *= 1.5
//            } else {
//                withAnimation {
//                    self.scale *= 1.5
//                }
//            }
//        }
//        Text("Hello, World!")
//        .scaleEffect(scale)
//        .onTapGesture {
//            self.withOptionalAnimation {
//                self.scale *= 1.5
//            }
//        }
        Text("Hello, World!")
        .padding()
        .background(reduceTransparency ? Color.black : Color.black.opacity(0.5))
        .foregroundColor(Color.white)
        .clipShape(Capsule())
    }
    func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
        if UIAccessibility.isReduceMotionEnabled {
            return try body()
        } else {
            return try withAnimation(animation, body)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
