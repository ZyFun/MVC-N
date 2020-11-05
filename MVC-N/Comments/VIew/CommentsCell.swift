//
//  CommentsCell.swift
//  MVC-N
//
//  Created by Дмитрий Данилин on 05.11.2020.
//

import UIKit

class CommentsCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
