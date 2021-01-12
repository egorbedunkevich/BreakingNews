//
//  Source.swift
//  BreakingNews
//
//  Created by Egor A. Bedunkevich on 12/01/2021.
//

import UIKit

public protocol BreakingDelegate {
    func didPressAlert()
}

public class Breaking: UINavigationController {
    
    // MARK: - Properties
    private let offset:CGFloat = -10000
    
    public var text: String?
    public var backgroundColor: UIColor?
    public var textColor: UIColor?
    
    public var breakingNewsDelegate: BreakingDelegate?
        
    lazy var alert: UILabel = {
        
        let alert = UILabel()
        alert.text = self.text ?? "↑ New posts"
        alert.layer.cornerRadius = 14
        alert.clipsToBounds = true
        alert.textAlignment = .center
        alert.translatesAutoresizingMaskIntoConstraints = false
        alert.isUserInteractionEnabled = true
        alert.font = alert.font.withSize(13)
        
        return alert
    }()
    
    // MARK: - Methods
    public func news(_ text: String?, _ colors: UIColor...) {
        
        self.text = text
        self.alert.backgroundColor = colors[0]
        self.alert.textColor = colors[1]

        self.alert.transform = CGAffineTransform(translationX: 0, y: offset)
        
        UIView.animate(withDuration: 2.0) {
            self.alert.transform = .identity
            self.view.addSubview(self.alert)
        }
                        
        alert.topAnchor.constraint(equalTo: navigationBar.safeAreaLayoutGuide.topAnchor, constant: navigationBar.frame.height + 30).isActive = true
        alert.heightAnchor.constraint(equalToConstant: 30).isActive = true
        alert.widthAnchor.constraint(equalToConstant: 110).isActive = true
        alert.centerXAnchor.constraint(equalTo: navigationBar.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        alert.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didPressView)))

    }

    @objc func didPressView() {
        
        self.breakingNewsDelegate?.didPressAlert()

        UIView.animate(withDuration: 2.0) {
            self.alert.transform = CGAffineTransform(translationX: 0, y:  self.offset)
        } completion: { completed in
            self.alert.removeFromSuperview()
        }
    }
    
    public func removeAlert() {
        self.alert.removeFromSuperview()
    }
}

