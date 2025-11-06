// The Swift Programming Language
// https://docs.swift.org/swift-book

import ArgumentParser
import Foundation

@main
struct tm_isdst: ParsableCommand {
    @Flag(help: "Do not print text. Returns a successful status code if the current timezone is Daylight Saving Time, otherwise a non-zero status code is returned.")
    var quiet = false

    func run() throws {
        let isDst = TimeZone.current.isDaylightSavingTime()

        switch (quiet, isDst) {
            case (true, true):
                throw ExitCode.success
            case (true, false):
                throw ExitCode(1)
            case (false, true):
                print("true")
                throw ExitCode.success
            case (false, false):
                print("false")
                throw ExitCode(1)
        }
    }
}
