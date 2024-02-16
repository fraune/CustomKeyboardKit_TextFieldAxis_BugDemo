//
//  ContentView.swift
//  CustomKeyboardKit_TextFieldAxis_BugDemo
//
//  Created by Brandon Fraune on 2/15/24.
//

import SwiftUI

struct ContentView: View {
    @FocusState var focusedField: FocusableField?
    
    @State var text1: String = ""
    @State var text2: String = ""
    
    var body: some View {
        VStack {
            Text("Axis Bug Demo")
                .font(.title)
            Form {
                TextField("No Axis", text: $text1)
                    .customKeyboard(.vowels)
                    .onSubmitCustomKeyboard {
                        focusedField = nil
                    }
                    .focused($focusedField, equals: .noAxis)
                
                TextField("With Axis", text: $text2, axis: .vertical)
                    .customKeyboard(.vowels)
                    .onSubmitCustomKeyboard {
                        focusedField = nil
                    }
                    .focused($focusedField, equals: .withAxis)
            }
        }
    }
}

enum FocusableField {
    case noAxis
    case withAxis
}

#Preview {
    ContentView()
}
