//
//  PostView.swift
//  instagram
//
//  Created by Maya McPartland on 9/17/24.
//

import SwiftUI

struct PostView: View {
    @State private var likes = 0
    @State private var liked = 0
    @State private var marked = 0
    @State private var likeButton: String = "heart"
    @State private var bookmarkButton: String = "bookmark"
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
                    Button {
                        if liked == 0 {
                            likeButton = "heart.fill"
                            likes += 1
                            liked = 1
                        } else {
                            likeButton = "heart"
                            likes -= 1
                            liked = 0
                        }
                    } label: {
                        Image(systemName: likeButton).foregroundStyle(.black)
                    }
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                    Spacer()
                    Button {
                        if marked == 0 {
                            bookmarkButton = "bookmark.fill"
                            marked = 1
                        } else {
                            bookmarkButton = "bookmark"
                            marked = 0
                        }
                    } label: {
                        Image(systemName: bookmarkButton).foregroundStyle(.black)
                    }
                }
                .font(.title2)
                
                Text("\(likes) likes").font(.footnote).fontWeight(.semibold)
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
