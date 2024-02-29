//
//  ContentView.swift
//  visionTest
//
//  Created by SMSoftLab on 2/26/24.
//

import SwiftUI
import RealityKit
import RealityKitContent


struct ContentView: View {
    
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
        
    @State private var myStateVar = 3;

    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
            
                
            //체이닝 구조 view 메서드를 순서대로 실행시켜 가공함
            Image(systemName: "iphone")
                .resizable()
                .frame(width: 50, height: 70)
                .cornerRadius(30)
            
            Text("Hello, world!")
                .padding([.bottom], 10)
            
            
//            //커스텀 뷰
//            VStack{
//                Text("1")
//                    .fontWeight(.bold)
//                    .font(.system(size: 20))
//            }

//            HStack{
//                myView()
//                myView()
//            }

            

            

//            //커스텀 모디파이어
//            Text("Vision Pro Test Project")
//                .myModifirer()
//            
//            
            
            
//            //순서 예 시
            Text("text1")
            //1. 텍스트 크기 만큼의 색상을 입힌 텍스트뷰를 반환
                .background(.blue)
            //2. 전달받은 뷰를 바탕으로 frame 크기를 반영한 텍스트뷰를 반환
                .frame(width: 100, height: 50) // 2

            Text("text2")
            //1. 텍스트뷰의 frame을 100, 50으로 수정 후 뷰를 반환함
                .frame(width: 100, height: 50)
            //2. 전달받은 텍스트 뷰(100, 50)의 배경색을 변경
                .background(.blue)
            
            
            //새로운 윈도우 열기
            //1.App에 Window 선언
            //2. Window에 들어갈 View 정의
            //3. @Environment(\.openWindow)  어노테이션 선언
            Button("Open new Window") {
                openWindow(id: "SecondWindow")
                
            }
        }
    }
}



//커스텀 뷰
struct myVStackView : View{
    var body: some View{
        VStack{
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 20))
            Text("2")
                .fontWeight(.bold)
                .font(.system(size: 20))
            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 20))
        }
    }
}




//-- 커스텀 모디파이어 --// 
struct MyTitle: ViewModifier {
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            HStack {
                content
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            
            
            Spacer()
        }
    }
}


//extension: 이미 정의된 class, struct, protocol에 추가적으로 속성, 메서드를 추가할 수 있는 기능
extension View{
    func myModifirer() -> some View{
        self.modifier(MyTitle())
    }
}





//-- 두번째 window --//
struct SecondWindow: View {
    @Environment(\.dismissWindow) private var dismissWindow

    var body: some View{
        VStack {
            Button("Close"){
                dismissWindow(id: "SecondWindow")
            }
        }
    }
    
}




#Preview(windowStyle: .automatic) {
    ContentView()
}
