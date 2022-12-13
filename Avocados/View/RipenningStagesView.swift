//
//  RipenningStagesView.swift
//  Avocados
//
//  Created by Sabir's MacBook on 11/15/22.
//

import SwiftUI

struct RipenningStagesView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipenningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipenningStagesView(ripeningStages: ripeningData)
    }
}
