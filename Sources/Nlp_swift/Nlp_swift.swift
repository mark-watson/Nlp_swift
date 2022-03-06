
import Foundation
import NaturalLanguage


let tagger = NSLinguisticTagger(tagSchemes:[.tokenType, .language, .lexicalClass, .nameType, .lemma], options: 0) 
let options: NSLinguisticTagger.Options = [.omitPunctuation, .omitWhitespace, .joinNames]

@available(OSX 10.13, *)
public func getEntities(for text: String) -> [(String, String)] {
    var words: [(String, String)] = []
    tagger.string = text
    let range = NSRange(location: 0, length: text.utf16.count)
    tagger.enumerateTags(in: range, unit: .word, scheme: .nameType, options: options) { tag, tokenRange, stop in
        let word = (text as NSString).substring(with: tokenRange)
        words.append((word, tag?.rawValue ?? "unkown"))
    }
    return words
}

@available(OSX 10.13, *)
public func getLemmas(for text: String) -> [(String, String)] {
    var words: [(String, String)] = []
    tagger.string = text
    let range = NSRange(location: 0, length: text.utf16.count)
    tagger.enumerateTags(in: range, unit: .word, scheme: .lemma, options: options) { tag, tokenRange, stop in
        let word = (text as NSString).substring(with: tokenRange)
        words.append((word, tag?.rawValue ?? "unkown"))
    }
    return words
}
