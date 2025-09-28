//
//  MvvmDemoXCTests.swift
//  MvvmDemoXCTests
//
//  Created by Bennett Lee on 9/27/25.
//

import XCTest

// Tests against an object
final class MvvmDemoXCTests: XCTestCase {
    var studentManager = StudentManager()

    // Executed once before any of the the test methods are invoked
    override class func setUp() {
        print("setup - class")
    }

    // Execute each time before each test
    override func setUp() async throws {
        print("setup - instance")
        studentManager = StudentManager()
    }

    // Executed once after all of the the test methods are invoked
    override class func tearDown() {

    }

    // Execute each time after each test
    override func tearDown() {

    }

    // Tests against an individual meth
    func testStudentInsert() {
        // 1. Set up the context
        let student = Student(name: "Alice")

        // 2. Execute the operation
        studentManager.insert(student: student, at: 0)

        // 3. Perform the assertion
        XCTAssertEqual(studentManager.numberOfStudents, 1)

        let studentInManager = studentManager.student(at: 0)
        XCTAssertEqual(studentInManager.name, "Alice")
    }

    // Remove
    func testStudentRemove() {
        // 1. Set up context
        let student = Student(name: "John")
        studentManager.insert(student: student, at: 0)

        // 2. Execute the operation
        studentManager.remove(at: 0)

        // 3. Perform the assertion
        XCTAssertTrue(studentManager.numberOfStudents == 0)
    }

    // at


}
