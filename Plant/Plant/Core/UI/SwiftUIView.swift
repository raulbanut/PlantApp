//
//  SwiftUIView.swift
//  Plant
//
//  Created by Raul Banut on 31.12.2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Buttons.DefaultButton(title: "Press me", enabled: true, isLoading: false, fillColor: .darkJungleGreen, action: {})
            Buttons.BorderedButton(title: "Press me", action: { })
        }
    }
}

struct Buttons {
    struct DefaultButton<ImageView: View>: View {
        let title: String
        var enabled: Bool = true
        var isLoading: Bool = false
        var fillColor: Color = .black
        var textColor: Color = .white
        
        var cornerRadius: CGFloat = 16
        var paddingBottom: CGFloat = 16
        var paddingHorizontal: CGFloat = 24
        
        let action: () -> Void
        
        @ViewBuilder var imageView: ImageView
        
        var body: some View {
            Button {
                action()
            } label: {
                if isLoading {
                    ActivityIndicator()
                } else {
                    HStack(spacing: 16) {
                        imageView
                        Text(title)
                            .font(.Secondary.h1SemiBold)
                    }
                }
            }
            .buttonStyle(
                ButtonStyles.BorderedFillRounded(
                    enabled: enabled, cornerRadius: cornerRadius, fillColor: fillColor, textColor: textColor
                )
            )
            .disabled(!enabled)
            .padding(.bottom, paddingBottom)
            .padding(.horizontal, paddingHorizontal)
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
    }
    
    struct BorderedButton: View {
        let title: String
        var isLoading = false
        var foregroundColor: Color = .darkJungleGreen
        var backgroundColor: Color = .black
        var borderColor: Color = .black
        var cornerRadius: CGFloat = 16
        var paddingBottom: CGFloat = 16
        var paddingHorizontal: CGFloat = 24
        let action: () -> Void
        
        var body: some View {
            Button {
                action()
            } label: {
                ZStack(alignment: .trailing) {
                    Text(title)
                        .font(.Secondary.semiBold(18))
                        .foregroundColor(foregroundColor)
                        .frame(height: 48)
                        .padding(.horizontal,12)
                        .frame(idealWidth: 150, maxWidth: .infinity)
                        .background(backgroundColor.opacity(0.01))
                        .roundedBorder(borderColor, cornerRadius: cornerRadius, lineWidth: 1.5)
                    if isLoading {
                        ActivityIndicator(tint: .gray, scale: 1.1)
                            .padding(.trailing, 16)
                    }
                }
            }
            .padding(.bottom, paddingBottom)
            .padding(.horizontal, paddingHorizontal)
            .buttonStyle(.plain)
            .disabled(isLoading)
        }
    }
}

extension Buttons.DefaultButton where ImageView == EmptyView {
    init(title: String, enabled: Bool = true, isLoading: Bool = false, fillColor: Color = .red, textColor: Color = .white, action: @escaping () -> Void) {
        self.title = title
        self.enabled = enabled
        self.isLoading = isLoading
        self.fillColor = fillColor
        self.textColor = textColor
        self.action = action
        self.imageView = EmptyView()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
