import SwiftUI

struct UserInfoStack : View {
    var body: some View {
        VStack(spacing: 28) {
            NameAgeStack()
            TextStack()
        }
    }
}

#Preview {
    UserInfoStack()
}

struct NameAgeStack : View {
    var body: some View {
        HStack {
            UserStack()
            Spacer()
            AgeStack()
        }
    }
}

struct UserStack : View {
    var body: some View {
        HStack(spacing: 10) {
            LilImage(name: "man", size: 27, cornerRadius: 0)
            CustomText(text: "Agent Smith", fontSize: 20, fontWeight: .bold)
        }
    }
}

struct AgeStack : View {
    var body: some View {
        HStack(spacing: 8) {
            LilImage(name: "age", size: 27, cornerRadius: 0)
            CustomText(text: "?", fontSize: 20, fontWeight: .bold)
        }
    }
}

struct TextStack : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("About")
                .font(.system(size: 13, weight: .medium))
                .foregroundStyle(Color.appText)
            Text("Evolution, Morpheus. Evolution! Like The Dinosaur. Look Out That Window. You've Had Your Time. The Future Is OUR World, Morpheus. The Future Is OUR Time")
                .font(.system(size: 16, weight: .medium))
        }
    }
}

struct CustomText : View {
    var text : String
    var fontSize : CGFloat
    var fontWeight : Font.Weight
    var body: some View {
        Text(text)
            .font(.system(size: fontSize, weight: fontWeight))
    }
}
