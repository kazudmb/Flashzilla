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
    //    // how far the circle has been dragged
    //    @State private var offset = CGSize.zero
    //
    //    // whether it is currently being dragged or not
    //    @State private var isDragging = false
    //
    //    var body: some View {
    //        // a drag gesture that updates offset and isDragging as it moves around
    //        let dragGesture = DragGesture()
    //            .onChanged { value in self.offset = value.translation }
    //            .onEnded { _ in
    //                withAnimation {
    //                    self.offset = .zero
    //                    self.isDragging = false
    //                }
    //            }
    //
    //        // a long press gesture that enables isDragging
    //        let pressGesture = LongPressGesture()
    //            .onEnded { value in
    //                withAnimation {
    //                    self.isDragging = true
    //                }
    //            }
    //
    //        // a combined gesture that forces the user to long press then drag
    //        let combined = pressGesture.sequenced(before: dragGesture)
    //
    //        // a 64x64 circle that scales up when it's dragged, sets its offset to whatever we had back from the drag gesture, and uses our combined gesture
    //        return Circle()
    //            .fill(Color.red)
    //            .frame(width: 64, height: 64)
    //            .scaleEffect(isDragging ? 1.5 : 1)
    //            .offset(offset)
    //            .gesture(combined)
    //    }
    
    //    @State private var engine: CHHapticEngine?
    //
    //    var body: some View {
    //        Text("Hello, World!")
    //        .onAppear(perform: prepareHaptics)
    //        .onTapGesture(perform: complexSuccess)
    //    }
    //
    //    func simpleSuccess() {
    //        let generator = UINotificationFeedbackGenerator()
    //        generator.notificationOccurred(.success)
    //    }
    //
    //    func prepareHaptics() {
    //        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
    //
    //        do {
    //            self.engine = try CHHapticEngine()
    //            try engine?.start()
    //        } catch {
    //            print("There was an error creating the engine: \(error.localizedDescription)")
    //        }
    //    }
    //
    //    func complexSuccess() {
    //        // make sure that the device supports haptics
    //        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
    //        var events = [CHHapticEvent]()
    //
    //        // create one intense, sharp tap
    //        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
    //        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
    //        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
    //        events.append(event)
    //
    //        // convert those events into a pattern and play it immediately
    //        do {
    //            let pattern = try CHHapticPattern(events: events, parameters: [])
    //            let player = try engine?.makePlayer(with: pattern)
    //            try player?.start(atTime: 0)
    //        } catch {
    //            print("Failed to play pattern: \(error.localizedDescription).")
    //        }
    //      }
    var body: some View {
//        ZStack {
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 300, height: 300)
//                .onTapGesture {
//                    print("Rectangle tapped!")
//            }
//
//            Circle()
//            .fill(Color.red)
//            .frame(width: 300, height: 300)
//            .contentShape(Rectangle())
//            .onTapGesture {
//                print("Circle tapped!")
//            }
//        }
        
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("VStack tapped!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
