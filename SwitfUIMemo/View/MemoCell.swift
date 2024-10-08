//
//  MemoCell.swift
//  SwitfUIMemo
//
//  Created by KimRin on 10/9/24.
//

import SwiftUI

struct MemoCell: View {
    @ObservedObject var memo: Memo
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text(memo.insertDate, style: .date)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    MemoCell(memo: Memo(content: "Test"))
}
