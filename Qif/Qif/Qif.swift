public class Qif {
    var streamReader : StreamReader

    public convenience init(fromFile filename : String) {
        self.init(fromFile : filename, streamReader : StreamReaderImpl())
    }

    public init(fromFile filename : String, streamReader : StreamReader) {
        self.streamReader = streamReader
        streamReader.open(path: filename, delimiter: "\n")
    }

    public func next() -> String? {
        while (streamReader.nextLine()) != nil {
        }

        return nil
    }
}
