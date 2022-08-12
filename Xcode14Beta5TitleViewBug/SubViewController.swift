//
//  SubViewController.swift
//  Xcode14Beta5TitleViewBug
//
//  Created by trickart on 2022/08/12.
//

import UIKit

class SubViewController: UIViewController {
    var subTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        // set title and subtitle view
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = .preferredFont(forTextStyle: .headline)
        let subTitleLabel = UILabel()
        subTitleLabel.text = subTitle
        subTitleLabel.font = .preferredFont(forTextStyle: .caption1)
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subTitleLabel])
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        
        navigationItem.titleView = stackView
    }
}
