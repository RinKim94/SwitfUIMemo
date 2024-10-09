//
//  MainListView.swift
//  SwitfUIMemo
//
//  Created by KimRin on 10/4/24.
/*
 학습해야할 keyword modifier, environmentObject
 */



import SwiftUI

struct MainListView: View {
    //뷰가 생성되기 직전에 공유데이터 목록을 확인하고 스토어의 타입과 동일한 타입의 인스턴스가 등록되어 있다면 속성을 해당 인스턴스로 자동으로 초기화함
    //하나의 데이터를 여러 view에서 공유하고싶을때
    @EnvironmentObject var store: MemoStore
    @State private var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                MemoCell(memo: memo)
                
                
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
            .toolbar {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeView()
            }
        }
    }
}

#Preview {
    MainListView()
        .environmentObject(MemoStore())
        
}

//seperate view

