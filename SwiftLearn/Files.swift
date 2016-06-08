//
//  Files.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 08/06/16.
//  Copyright © 2016 Alessio Saltarin. All rights reserved.
//

import Foundation


public class Files
{
    
    var name: String
    var path: String
    
    // Constructor
    public init(filename: String, filepath: String)
    {
        self.name = filename
        self.path = filepath
    }
    
    func delete()
    {
        let fileManager = NSFileManager.defaultManager()
        
        do
        {
            try fileManager.removeItemAtURL(self.getFileURL())
        }
        catch let error as NSError
        {
            print("Ooops! Something went wrong in deleting file: \(error)")
        }
    }
    
    func read() -> String?
    {
        let path = self.getFileURL()
        var text: NSString = ""

        do
        {
            text = try NSString(contentsOfURL: path, encoding: NSUTF8StringEncoding)
        }
        catch let error as NSError
        {
            print("error reading from url \(self.path)")
            print(error.localizedDescription)
        }
        
        return text as String
    }
    
    func write(contents: String)
    {
        
        let path = self.getFileURL()
        
        do
        {
            try contents.writeToURL(path, atomically: false, encoding: NSUTF8StringEncoding)
        }
        catch let error as NSError
        {
            print("error writing to url \(path)")
            print(error.localizedDescription)
        }
        
    }
    
    private func getFileURL() -> NSURL
    {
        return NSURL(fileURLWithPath: self.path).URLByAppendingPathComponent(self.name)
    }
}

func testFiles()
{
    
    let path = NSTemporaryDirectory() as String
    let contents = "Prova File - Prova File"
    
    let files = Files(filename: "prova.txt", filepath: path)
    files.write(contents)
    
    let readFile = files.read()
    
    if (contents == readFile)
    {
        print ("Ok, file write and read successful")
    }
    else
    {
        print ("Error in reading/writing file")
    }
    
    files.delete()
    
}
