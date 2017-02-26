import Qif

class FakeStreamReader : StreamReader {
    var openCallCounter = 0
    
    func open(path: String, delimiter: String = "\n") -> Bool {
        openCallCounter += 1
        return true
    }
    
    func nextLine() -> String? {
        return ""
    }
    
    func rewind() -> Void {
        
    }
    
    func close() {
        
    }
    
    func openWasCalled() -> Bool {
        return openCallCounter > 0;
    }
}
