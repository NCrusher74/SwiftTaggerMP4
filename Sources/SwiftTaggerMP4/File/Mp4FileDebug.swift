/*
 Mp4File.Debug.swift
 
 
 Created by Nolaine Crusher on 8/30/20.
 */

import Foundation

@available(OSX 11.0,  iOS 14.0, *)
extension Mp4File {
    // MARK: - Debug Description
    // gives a visual representation of the nesting of the actual atoms
    var debugDescription: String {
        var atomString = String()
        var offset = Int()
        for atom in rootAtoms { // top level
            let actualSize = calculateActualSize(atomSize: atom.encode.count, childArray: atom.children)
            atomString.append("\(atom.identifier) (\(atom.encode.count) @ \(offset))\n")
            offset += actualSize
            
            let children1 = atom.children
            for child in children1 { // level 1
                let actualSize1 = calculateActualSize(atomSize: child.encode.count, childArray: child.children)
                atomString.append("  \(child.identifier) (\(child.encode.count) @ \(offset))\n")
                offset += actualSize1
                
                let children2 = child.children
                for child in children2 {// level 2
                    let actualSize2 = calculateActualSize(atomSize: child.encode.count, childArray: child.children)
                    atomString.append("      \(child.identifier) (\(child.encode.count) @ \(offset))\n")
                    offset += actualSize2
                    
                    let children3 = child.children
                    for child in children3 {
                        let actualSize3 = calculateActualSize(atomSize: child.encode.count, childArray: child.children)
                        atomString.append("          \(child.identifier) (\(child.encode.count) @ \(offset))\n")
                        offset += actualSize3
                        
                        let children4 = child.children
                        for child in children4 {
                            let actualSize4 = calculateActualSize(atomSize: child.encode.count, childArray: child.children)
                            atomString.append("              \(child.identifier) (\(child.encode.count) @ \(offset))\n")
                            offset += actualSize4
                            
                            let children5 = child.children
                            for child in children5 {
                                let actualSize5 = calculateActualSize(atomSize: child.encode.count, childArray: child.children)
                                atomString.append("                  \(child.identifier) (\(child.encode.count) @ \(offset))\n")
                                offset += actualSize5
                                
                                let children6 = child.children
                                for child in children6 {
                                    let actualSize6 = calculateActualSize(atomSize: child.encode.count, childArray: child.children)
                                    atomString.append("                      \(child.identifier) (\(child.encode.count) @ \(offset))\n")
                                    offset += actualSize6
                                    
                                    let children7 = child.children
                                    for child in children7 {
                                        let actualSize7 = calculateActualSize(atomSize: child.encode.count, childArray: child.children)
                                        atomString.append("                          \(child.identifier) (\(child.encode.count) @ \(offset))\n")
                                        offset += actualSize7
                                        
                                        let children8 = child.children
                                        for child in children8 {
                                            let actualSize8 = calculateActualSize(atomSize: child.encode.count, childArray: child.children)
                                            atomString.append("                              \(child.identifier) (\(child.encode.count) @ \(offset))\n")
                                            offset += actualSize8
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return atomString
    }
    
    private func calculateActualSize(atomSize: Int, childArray: [Atom]) -> Int {
        var childrenSize = Int()
        for child in childArray {
            childrenSize += child.encode.count
        }
        return atomSize - childrenSize
    }    
}
