//
//  ViewController.swift
//  TestPodSpecDemo
//
//  Created by Xin Ge  on 20/11/2017.
//  Copyright © 2017 Xin Ge . All rights reserved.
//

import UIKit
import GXNote

class ViewController: UIViewController,GXNoteWorkDeleagte {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "swfit4.0"
        let creatNote = UITapGestureRecognizer(target: self, action: #selector(createNewNote(sender:)))
        self.view.addGestureRecognizer(creatNote)
    }
    
    @objc func createNewNote(sender:UITapGestureRecognizer){
        self.view.endEditing(true)
        let center = sender.location(in: self.view)
        
        let noteStyle = GXNoteStyle()
        noteStyle.noteContentViewPlaceholder = "aaaaaaaaa"
        let note = GXNoteView(frame: CGRect(x: 100, y: 100, width: 200, height: 200), style: noteStyle)
        
        note.delegate = self
        note.center = center
        self.view.addSubview(note)
    }
    
    func noteTextDidChange(text: String, note: GXNoteView) {
        print("\(note) ------ \(text)")
    }
}

