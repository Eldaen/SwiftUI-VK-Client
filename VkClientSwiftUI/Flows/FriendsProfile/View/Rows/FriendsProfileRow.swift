//
//  FriendsProfileRow.swift
//  New-Login-Screen
//
//  Created by Денис Сизов on 24.03.2022.
//

import SwiftUI
import Kingfisher

/// Ячейка для отображения фотографии пользователя в галарее
struct FriendsProfileRow: View {
	
	let image: FriendImage
	
    var body: some View {
		GeometryReader { proxy in
			KFImage(image.imageUrl)
				.resizable()
				.frame(height: proxy.size.width)
		}
    }
}

struct FriendsProfileRow_Previews: PreviewProvider {
	
	static var image: FriendImage = FriendImage(link: "")
	
    static var previews: some View {
        FriendsProfileRow(image: image)
    }
}
