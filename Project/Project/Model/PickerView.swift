//
//  PickerView.swift
//  Project
//
//  Created by Guole YANG on 03/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

enum CategoryType: String {
    case interets = "Intérêts"
    case lieux = "Lieux"
}
struct PickerView: View {
    
    @Binding var favorite: CategoryType
    
    var body: some View {
        // BEGIN PICKER
        Picker(selection: $favorite, label: Text("")) {
            Text("Intérêts").tag(CategoryType.interets)
            Text("Lieux").tag(CategoryType.lieux)
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding(.horizontal, 60.0)
        .padding(.top, 30.0)
        .padding(.bottom, 10.0)
        // END PICKER
    }
    

}

//struct PickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickerView(favorite:CategoryType.interets)
//    }
//}
