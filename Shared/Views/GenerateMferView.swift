//
//  GenerateMferView.swift
//  mfers
//
//  Created by HeresMySwift on 12/24/22.
//

import Foundation
import SwiftUI
import ImageViewer

struct GenerateMferView: View {
    @State var mferImages: [MferImage] = []
    @State var selectedImage: Image?
    @State var viewerShown = false
    let backgroundColor = SartoshiOrange

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(mferImages) { mferImage in
                        Button {
                            selectedImage = mferImage.image
                            viewerShown = true
                        } label: {
                            mferImage.image
                                .resizable()
                        }
                        .frame(width: UIScreen.main.bounds.size.width / 4, height: UIScreen.main.bounds.size.width / 4, alignment: .center)
                    }
                }
            }
            .navigationTitle("Generate")
            .overlay(ImageViewer(image: $selectedImage, viewerShown: $viewerShown))
            .background(Color(uiColor: backgroundColor))
            .onAppear {
                if mferImages.isEmpty {
                    getImage()
                }
            }
            .refreshable {
                getImage()
            }
        }
    }
    
    func getImage() {
        DispatchQueue.global(qos: .userInitiated).async {
            let generator = MferGenerator(baseProject: "random")
            let uiImages = generator.generateMfers(mfers: 18, seedinput: MferGenerator.baseSeed)
            let images: [MferImage] = uiImages.map { MferImage(image: Image(uiImage: $0)) }
            mferImages = images
        }
    }
}
