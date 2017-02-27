import Qif

class FakeStreamReader : StreamReader {
    var openCallCounter = 0
    var nextLineCounter = 0

    public var linesPerRecord : Int = 4
    public var numberOfRecords : Int = 9

    func open(path: String, delimiter: String = "\n") -> Bool {
        openCallCounter += 1
        return true
    }

    func nextLine() -> String? {
        nextLineCounter += 1

        if(nextLineCounter % linesPerRecord == 0) {
            return "^"
        } else if(nextLineCounter < linesPerRecord * numberOfRecords) {
            return "any string"
        }

        return nil
    }

    func rewind() -> Void {

    }

    func close() {

    }

    func openWasCalled() -> Bool {
        return openCallCounter > 0;
    }
}
