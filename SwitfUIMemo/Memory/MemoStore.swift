//
//  MemoStore.swift
//  SwitfUIMemo
//
//  Created by KimRin on 10/4/24.
//

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]//뷰에 바로 변함
    
    init () {
        list = [
            Memo(content: "test1", insertDate: Date.now),
            Memo(content: "test2", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "test3", insertDate: Date.now.addingTimeInterval(3600 * -48))
        ]
    }
    
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        
        memo.content = content
    }
    
    func delete(memo: Memo) {
        list.removeAll {
            $0.id == memo.id
        }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
    
    
}
