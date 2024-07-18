import SwiftUI

struct ImagesStack : View {
    var body: some View {
        VStack(spacing: 17, content: {
            Image("agent")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: UIScreen.main.bounds.width - 60, maxHeight: 370)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .clipped()
            LilImagesStack()
        })
    }
}

#Preview {
    ImagesStack()
}

struct LilImagesStack: View {
    var body: some View {
        HStack(spacing: 14) {
            LilImage(name: "street", size: 114, cornerRadius: 10)
            LilImage(name: "laptop", size: 114, cornerRadius: 10)
            LilImage(name: "zeon", size: 114, cornerRadius: 10)
        }
    }
}

struct LilImage : View {
    var name : String
    var size : CGFloat
    var cornerRadius : CGFloat
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .clipped()
    }
}
