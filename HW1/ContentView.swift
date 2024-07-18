import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 238, content: {
            ProfileStack()
            ProfileButton()
        })
        .padding(EdgeInsets(top: 80, leading: 30, bottom: 60, trailing: 30))
    }
}

#Preview {
    ContentView()
}

struct ProfileStack : View {
    var body: some View {
        VStack(spacing: 43, content: {
            ImagesStack()
            UserInfoStack()
        })
    }
}

struct ProfileButton : View {
    var body: some View {
        Button {
            print("Change profile action")
        } label: {
            Text("Change profile")
                .frame(maxWidth: .infinity, maxHeight: 60)
                .foregroundStyle(.white)
                .fontWeight(.medium)
                .background(.blue)
                
        }
        .clipShape(Capsule())
    }
}
