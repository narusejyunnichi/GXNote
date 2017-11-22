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
    
    var iskeyBoardShow : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "swfit4.0"
        let center = NotificationCenter.default
        center.addObserver(self, selector: #selector(keyBoardShow), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        center.addObserver(self, selector: #selector(keyBoardhide), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
        let creatNote = UITapGestureRecognizer(target: self, action: #selector(createNewNote(sender:)))
        self.view.addGestureRecognizer(creatNote)
    }
    
    @objc func createNewNote(sender:UITapGestureRecognizer){
        if iskeyBoardShow {
            self.view.endEditing(true)
            return
        }
        let center = sender.location(in: self.view)
        
        let noteStyle = GXNoteStyle()
        noteStyle.noteContentViewPlaceholder = "bbbbbb"
        let note = GXNoteView(frame: CGRect(x: 100, y: 100, width: 200, height: 200), style: noteStyle)
        
        note.delegate = self
        note.center = center
        self.view.addSubview(note)
    }
    
    @objc func keyBoardShow(){
        iskeyBoardShow = true
    }
    
    @objc func keyBoardhide(){
        iskeyBoardShow = false
    }
    
    //noteView Delegate
    func noteTextDidChange(text: String, note: GXNoteView) {
        print("\(note) ------ \(text)")
    }
}

