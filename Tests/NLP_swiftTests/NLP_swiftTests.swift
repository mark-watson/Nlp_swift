import XCTest
@testable import NLP_swift

final class NLP_swiftTests: XCTestCase {
    func testExample() {
        let quote = "President George Bush went to Mexico with IBM representatives. Here's to the crazy ones. The misfits. The rebels. The troublemakers. The round pegs in the square holes. The ones who see things differently. They're not fond of rules. And they have no respect for the status quo. You can quote them, disagree with them, glorify or vilify them. About the only thing you can't do is ignore them. Because they change things. They push the human race forward. And while some may see them as the crazy ones, we see genius. Because the people who are crazy enough to think they can change the world, are the ones who do. - Steve Jobs (Founder of Apple Inc.)"
        if #available(OSX 10.13, *) {
            print("\nEntities:\n")
            print(getEntities(for: quote))
            print("\nLemmas:\n")
            print(getLemmas(for: quote))
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
