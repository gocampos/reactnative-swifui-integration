//
//  SwiftUIButton.swift
//  ReactNativeWithSwiftUITutorial
//

import SwiftUI

class ButtonProps : ObservableObject {
  @Published var count: Int = 0
  @Published var onCountChange: RCTDirectEventBlock = { _ in }
}

struct SwiftUIButton : View {
  @ObservedObject var props = ButtonProps()
  
  var body: some View {
    VStack {
      Text("Count \(props.count)")
        .padding()
      
      Button(action: {
        self.props.onCountChange(["count": self.props.count + 1])
      }) {
        HStack {
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                Text("Increase")
                    .fontWeight(.semibold)
                    .font(.title)
            }
    }
    .buttonStyle(GradientBackgroundStyle())
  }
}
}


struct GradientBackgroundStyle: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
          .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.gray]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
          .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}
