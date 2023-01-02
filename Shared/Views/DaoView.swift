//
//  DaoView.swift
//  mfers
//
//  Created by HeresMySwift on 12/26/22.
//

import Foundation
import SwiftUI
import ZoraAPI
import ZoraUI

struct DaoView: View {
    @StateObject var collection = NFTCollectionLoader(.collectionAddress("0x795d300855069f602862c5e23814bdeeb25dca6b"))
    @State var tokens: [NFT] = []
    var body: some View {
      NavigationStack {
        ScrollView {
          VStack {
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach(collection.tokens) { token in
                NavigationLink(value: token) {
                  NFTCard(token)
                }
              }
            }
            if collection.nextPageInfo.hasNextPage {
              Button(collection.isLoading ? "Loading..." : "Load More") {
                Task(priority: .userInitiated) {
                  await collection.loadNextPage()
                }
              }
              .padding(10)
              .frame(maxWidth: .infinity)
              .background(.thinMaterial)
              .opacity(collection.isLoading ? 0.5 : 1)
              .disabled(collection.isLoading)
            }
          }.padding(20)
          .navigationDestination(for: NFT.self) { token in
            DetailView(token: token)
          }
        }.navigationTitle("mferbuilderDAO")
          .background(Color(uiColor: SartoshiOrange))
      }
    }
}

struct DetailView: View {
  let token: NFT
  
  var body: some View {
    ScrollView {
      VStack(spacing: 20) {
        NFTImage(token)
          .frame(maxWidth: 200)
        Text(token.name ?? "")
        Text(token.description ?? "")
        if let attributes = token.attributes {
          VStack(spacing: 20) {
            Divider()
            ForEach(attributes) { attribute in
              HStack {
                Text(attribute.traitType).font(.headline)
                Spacer()
                Text(attribute.value)
              }
            }
          }
          
        }
      }.padding(20)
    }
    .navigationTitle(token.name ?? "Token")
    .background(Color(uiColor: SartoshiOrange))
  }
}
