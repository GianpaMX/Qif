import Foundation
import Qif

if (CommandLine.arguments.count < 2) {
    print("Usage " + CommandLine.arguments[0] + ": filename")
    exit(1)
}

let qif = Qif(fromFile:CommandLine.arguments[1])
