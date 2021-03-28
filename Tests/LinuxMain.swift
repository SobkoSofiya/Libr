import XCTest

import PakageTests

var tests = [XCTestCaseEntry]()
tests += PakageTests.allTests()
XCTMain(tests)
