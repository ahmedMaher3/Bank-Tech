//
//  GetTopInsets.swift
//  Bank Tech
//
//  Created by ahmed maher on 15/12/2024.
//

import Foundation

/// Helper to get the top safe area inset
private func getSafeAreaTopInset() -> CGFloat {
    UIApplication.shared.connectedScenes
        .compactMap { $0 as? UIWindowScene }
        .first?
        .windows
        .first(where: { $0.isKeyWindow })?
        .safeAreaInsets.top ?? 0
}
