//
//  CustomKeyboard+vowels.swift
//  CustomKeyboardKit_TextFieldAxis_BugDemo
//
//  Created by Brandon Fraune on 2/15/24.
//

import SwiftUI
import CustomKeyboardKit

extension CustomKeyboard {
    static var vowels: CustomKeyboard {
        let keyWidth = 20.0
        let keyHeight = 34.0
        return CustomKeyboardBuilder { textDocumentProxy, submit, playSystemFeedback in
            VStack {
                HStack {
                    Button {
                        textDocumentProxy.insertText("A")
                        playSystemFeedback?()
                    } label: {
                        Text("A")
                            .frame(minWidth: keyWidth, minHeight: keyHeight)
                    }
                    Button {
                        textDocumentProxy.insertText("E")
                        playSystemFeedback?()
                    } label: {
                        Text("E")
                            .frame(minWidth: keyWidth, minHeight: keyHeight)
                    }
                    Button {
                        textDocumentProxy.insertText("I")
                        playSystemFeedback?()
                    } label: {
                        Text("I")
                            .frame(minWidth: keyWidth, minHeight: keyHeight)
                    }
                    Button {
                        textDocumentProxy.insertText("O")
                        playSystemFeedback?()
                    } label: {
                        Text("O")
                            .frame(minWidth: keyWidth, minHeight: keyHeight)
                    }
                    Button {
                        textDocumentProxy.insertText("U")
                        playSystemFeedback?()
                    } label: {
                        Text("U")
                            .frame(minWidth: keyWidth, minHeight: keyHeight)
                    }
                }
                
                Button {
                    playSystemFeedback?()
                    submit?()
                } label: {
                    Text("Dismiss")
                        .frame(minWidth: keyWidth, minHeight: keyHeight)
                }
            }
            .font(.title)
            .buttonStyle(.bordered)
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
        }
    }
}
