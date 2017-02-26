public class Qif {
    public convenience init(fromFile filename : String) {
        self.init(fromFile : filename, streamReader : StreamReaderImpl())
    }
    
    public init(fromFile filename : String, streamReader : StreamReader) {
        streamReader.open(path: filename, delimiter: "\n")
    }
}
