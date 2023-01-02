//
//  CreateMferView.swift
//  mfers
//
//  Created by HeresMySwift on 9/20/22.
//

import SwiftUI

struct ActivityView: UIViewControllerRepresentable {

    let activityItems: [Any]
    let applicationActivities: [UIActivity]?

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
        return UIActivityViewController(activityItems: activityItems,
                                        applicationActivities: applicationActivities)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController,
                                context: UIViewControllerRepresentableContext<ActivityView>) {

    }
}

struct CreateMferView: View {
    @State var currentTrait: MferTrait = .background
    @State var mfer = Mfer()
    @State var showingSheet = false
    @State var backgroundColor = SartoshiOrange
    var generator = MferGenerator(baseProject: "mfers")
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Color(uiColor: backgroundColor)
                        .ignoresSafeArea()
                    creatorView
                }
            }
            .background(Color(uiColor: backgroundColor))
            .toolbar(content: { shareButton })
            .navigationTitle("Create")
        }
    }
    
    var shareButton: some View {
        let image = Image(uiImage: generator.generate(from: mfer))
        return ShareLink(item: image, subject: Text("gm mfer"), message: Text("we jus getting started"), preview: SharePreview("gm mfer", image: image))
    }
    
    var creatorView: some View {
        VStack {
            mferImage
            traitSelector
        }
    }
    
    var mferImage: some View {
        VStack {
            mferTraitImages
            Spacer()
        }
    }
    
    var mferTraitImages: some View {
        ZStack {
            ForEach(mfer.traits, id: \.self) { trait in
                let sideSize = UIScreen.main.bounds.size.width
                Image(trait)
                    .resizable()
                    .frame(width: sideSize, height: sideSize, alignment: .center)
            }
        }
    }
    
    var traitSelector: some View {
        VStack(spacing: 0) {
            Spacer()
            traitItemSelector
            ScrollView(.horizontal) {
                Picker(selection: $currentTrait) {
                    ForEach(MferTrait.allCases, id: \.self) { trait in
                        let traitString = trait.rawValue
                        Text(traitString).tag(traitString)
                            .frame(width: 100)
                    }
                } label: {
                    Text("Choose trait")
                }
                .frame(width: CGFloat(MferTrait.allCases.count) * 100)
                .pickerStyle(.segmented)
                .padding(20)
            }
            .background(Color.white.opacity(0.5))
            .padding(.bottom, 20)
        }
    }
    
    var traitItemSelector: some View {
        VStack {
            Spacer()
            ScrollView(.horizontal) {
                LazyHGrid(rows: [GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0)], spacing: 0) {
                    if currentTrait != .background {
                        Button {
                            mfer.set(imageName: "none", for: currentTrait)
                        } label: {
                            Color.clear
                                .frame(width: 125, height: 125, alignment: .center)
                                .border(.gray, width: 1)
                        }
                    }
                    let imageNames = images(for: currentTrait)
                    ForEach(imageNames, id: \.self) { name in
                        Button {
                            mfer.set(imageName: name, for: currentTrait)
                            if currentTrait == .background {
                                setBackgroundColor()
                            }
                        } label: {
                            Image(name)
                                .resizable().frame(width: 125, height: 125, alignment: .center)
                                .border(.gray, width: 1)
                        }
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.size.width - 40, height: 250
                   , alignment: .center)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 5))
            .cornerRadius(20)
            .clipped()
            .padding(.bottom, 20)
        }
    }
    
    func images(for trait: MferTrait) -> [String] {
        switch trait {
        case .background:
            return generator.background
        case .beard:
            return generator.beard
//        case .chain:
//            return generator.chain
        case .eyes:
            return generator.eyes
        case .hatOverHeadphones:
            return generator.hatsOver
        case .hatUnderHeadphones:
            return generator.hatsUnder
        case .headphones:
            return generator.headphones
        case .hoodie:
            return generator.hoodies
        case .longHair:
            return generator.longHair
        case .mouth:
            return generator.mouth
        case .shirt:
            return generator.shirt
        case .shortHair:
            return generator.shortHair
        case .smoke:
            return generator.smoke
        case .type:
            return generator.type
        case .watch:
            return generator.watch420
        }
    }
    
    func setBackgroundColor() {
        let image = UIImage(named: mfer.background)
        backgroundColor = image?.backgroundColor() ?? .white
    }
}
