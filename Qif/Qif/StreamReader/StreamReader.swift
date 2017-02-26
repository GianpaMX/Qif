public protocol StreamReader {
    func open(path: String, delimiter: String) -> Bool
    func nextLine() -> String?
    func rewind() -> Void
    func close()
}
