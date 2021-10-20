//
//  Files.swift
//  SwiftLearn
//
//  Created by Alessio Saltarin on 08/06/16.
//  Copyright © 2016 Alessio Saltarin. All rights reserved.
//

import Foundation


open class XFiles
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
        let fileManager = FileManager.default
        
        do
        {
            try fileManager.removeItem(at: self.getFileURL())
        }
        catch let error as NSError
        {
            print("Ooops! Something went wrong in deleting file: \(error)")
        }
        catch
        {
            print("Critical generic error.")
        }
    }
    
    func read() -> String?
    {
        let path = self.getFileURL()
        var text: NSString = ""

        do
        {
            text = try NSString(contentsOf: path, encoding: String.Encoding.utf8.rawValue)
        }
        catch let error as NSError
        {
            print("error reading from url \(self.path)")
            print(error.localizedDescription)
        }
        catch
        {
            print("Critical generic error.")
        }
        
        return text as String
    }
    
    func write(_ contents: String)
    {
        
        let path = self.getFileURL()
        
        do
        {
            try contents.write(to: path, atomically: false, encoding: String.Encoding.utf8)
        }
        catch let error as NSError
        {
            print("error writing to url \(path)")
            print(error.localizedDescription)
        }
        catch
        {
            print("Critical generic error.")
        }
        
    }
    
    fileprivate func getFileURL() -> URL
    {
        URL(fileURLWithPath: self.path).appendingPathComponent(self.name)
    }
}


