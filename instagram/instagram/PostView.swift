//
//  PostView.swift
//  instagram
//
//  Created by Maya McPartland on 9/17/24.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("capybara").resizable().scaledToFit().frame(width: 30).clipShape(Circle())
                Text("mayamcp").font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            Image("naked").resizable()
                .scaledToFit()
            VStack (alignment: .leading){
                HStack(spacing: 16) {
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                    Spacer()
                    Image(systemName: "bookmark")
                }
                .font(.title2)
                
                Text("0 likes").font(.footnote).fontWeight(.semibold)
                Text("**mayamcp** random stuff").font(.footnote)
                Text("September 17").font(.caption).foregroundStyle(.secondary)
            }
            .padding(.horizontal, 8)
        }
    }
}

#Preview {
    PostView()
}
