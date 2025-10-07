//
//  LoadStateView.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 06/10/25.
//

import UIKit
import SnapKit

final class LoadStateView: UIView {
    private let activity = UIActivityIndicatorView(style: .large)

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(activity)
        activity.startAnimating()
        activity.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    required init?(coder: NSCoder) { fatalError() }
}
