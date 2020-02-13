//
//  RWMDailyTests.swift
//  RWMRecurrenceRuleTests
//
//  Created by Richard W Maddy on 5/17/18.
//  Copyright © 2018 Maddysoft. All rights reserved.
//

import XCTest
import RWMRecurrenceRule

class RWMDailyTests: RWMRecurrenceRuleBase {
    // ----------- DAILY ------------

    // Daily can use BYMONTH, BYMONTHDAY, BYDAY, BYSETPOS

    func testDaily01() {
        // Start 20180517T090000
        // Daily with no BYxxx clauses. Should give several consecutive days at the same time
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;COUNT=10", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-18T09:00:00", "2018-05-19T09:00:00", "2018-05-20T09:00:00",
             "2018-05-21T09:00:00", "2018-05-22T09:00:00", "2018-05-23T09:00:00", "2018-05-24T09:00:00",
             "2018-05-25T09:00:00", "2018-05-26T09:00:00"]
        )
    }

    func testDaily02() {
        // Start 20180517T090000
        // Daily every four days
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;INTERVAL=4;COUNT=10", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-21T09:00:00", "2018-05-25T09:00:00", "2018-05-29T09:00:00",
             "2018-06-02T09:00:00", "2018-06-06T09:00:00", "2018-06-10T09:00:00", "2018-06-14T09:00:00",
             "2018-06-18T09:00:00", "2018-06-22T09:00:00"]
        )
    }

    func testDaily03() {
        // Start 20180517T090000
        // Daily in May and June
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=5,6;COUNT=50", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-18T09:00:00", "2018-05-19T09:00:00", "2018-05-20T09:00:00",
             "2018-05-21T09:00:00", "2018-05-22T09:00:00", "2018-05-23T09:00:00", "2018-05-24T09:00:00",
             "2018-05-25T09:00:00", "2018-05-26T09:00:00", "2018-05-27T09:00:00", "2018-05-28T09:00:00",
             "2018-05-29T09:00:00", "2018-05-30T09:00:00", "2018-05-31T09:00:00", "2018-06-01T09:00:00",
             "2018-06-02T09:00:00", "2018-06-03T09:00:00", "2018-06-04T09:00:00", "2018-06-05T09:00:00",
             "2018-06-06T09:00:00", "2018-06-07T09:00:00", "2018-06-08T09:00:00", "2018-06-09T09:00:00",
             "2018-06-10T09:00:00", "2018-06-11T09:00:00", "2018-06-12T09:00:00", "2018-06-13T09:00:00",
             "2018-06-14T09:00:00", "2018-06-15T09:00:00", "2018-06-16T09:00:00", "2018-06-17T09:00:00",
             "2018-06-18T09:00:00", "2018-06-19T09:00:00", "2018-06-20T09:00:00", "2018-06-21T09:00:00",
             "2018-06-22T09:00:00", "2018-06-23T09:00:00", "2018-06-24T09:00:00", "2018-06-25T09:00:00",
             "2018-06-26T09:00:00", "2018-06-27T09:00:00", "2018-06-28T09:00:00", "2018-06-29T09:00:00",
             "2018-06-30T09:00:00", "2019-05-01T09:00:00", "2019-05-02T09:00:00", "2019-05-03T09:00:00",
             "2019-05-04T09:00:00", "2019-05-05T09:00:00"]
        )
    }

    func testDaily04() {
        // Start 20180517T090000
        // Daily in July
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=7;COUNT=50", start: start, results:
            ["2018-05-17T09:00:00", "2018-07-01T09:00:00", "2018-07-02T09:00:00", "2018-07-03T09:00:00",
             "2018-07-04T09:00:00", "2018-07-05T09:00:00", "2018-07-06T09:00:00", "2018-07-07T09:00:00",
             "2018-07-08T09:00:00", "2018-07-09T09:00:00", "2018-07-10T09:00:00", "2018-07-11T09:00:00",
             "2018-07-12T09:00:00", "2018-07-13T09:00:00", "2018-07-14T09:00:00", "2018-07-15T09:00:00",
             "2018-07-16T09:00:00", "2018-07-17T09:00:00", "2018-07-18T09:00:00", "2018-07-19T09:00:00",
             "2018-07-20T09:00:00", "2018-07-21T09:00:00", "2018-07-22T09:00:00", "2018-07-23T09:00:00",
             "2018-07-24T09:00:00", "2018-07-25T09:00:00", "2018-07-26T09:00:00", "2018-07-27T09:00:00",
             "2018-07-28T09:00:00", "2018-07-29T09:00:00", "2018-07-30T09:00:00", "2018-07-31T09:00:00",
             "2019-07-01T09:00:00", "2019-07-02T09:00:00", "2019-07-03T09:00:00", "2019-07-04T09:00:00",
             "2019-07-05T09:00:00", "2019-07-06T09:00:00", "2019-07-07T09:00:00", "2019-07-08T09:00:00",
             "2019-07-09T09:00:00", "2019-07-10T09:00:00", "2019-07-11T09:00:00", "2019-07-12T09:00:00",
             "2019-07-13T09:00:00", "2019-07-14T09:00:00", "2019-07-15T09:00:00", "2019-07-16T09:00:00",
             "2019-07-17T09:00:00", "2019-07-18T09:00:00"]
        )
    }

    func testDaily05() {
        // Start 20180517T090000
        // Every 3 days in May and June
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=5,6;INTERVAL=3;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-20T09:00:00", "2018-05-23T09:00:00", "2018-05-26T09:00:00",
             "2018-05-29T09:00:00", "2018-06-01T09:00:00", "2018-06-04T09:00:00", "2018-06-07T09:00:00",
             "2018-06-10T09:00:00", "2018-06-13T09:00:00", "2018-06-16T09:00:00", "2018-06-19T09:00:00",
             "2018-06-22T09:00:00", "2018-06-25T09:00:00", "2018-06-28T09:00:00", "2019-05-03T09:00:00",
             "2019-05-06T09:00:00", "2019-05-09T09:00:00", "2019-05-12T09:00:00", "2019-05-15T09:00:00"]
        )
    }

    func testDaily06() {
        // Start 20180517T090000
        // Every other day in July
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=7;INTERVAL=2;COUNT=30", start: start, results:
            ["2018-05-17T09:00:00", "2018-07-02T09:00:00", "2018-07-04T09:00:00", "2018-07-06T09:00:00",
             "2018-07-08T09:00:00", "2018-07-10T09:00:00", "2018-07-12T09:00:00", "2018-07-14T09:00:00",
             "2018-07-16T09:00:00", "2018-07-18T09:00:00", "2018-07-20T09:00:00", "2018-07-22T09:00:00",
             "2018-07-24T09:00:00", "2018-07-26T09:00:00", "2018-07-28T09:00:00", "2018-07-30T09:00:00",
             "2019-07-01T09:00:00", "2019-07-03T09:00:00", "2019-07-05T09:00:00", "2019-07-07T09:00:00",
             "2019-07-09T09:00:00", "2019-07-11T09:00:00", "2019-07-13T09:00:00", "2019-07-15T09:00:00",
             "2019-07-17T09:00:00", "2019-07-19T09:00:00", "2019-07-21T09:00:00", "2019-07-23T09:00:00",
             "2019-07-25T09:00:00", "2019-07-27T09:00:00"]
        )
    }

    func testDaily07() {
        // Start 20180517T090000
        // The 3rd and 23rd of each month
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTHDAY=3,23;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-23T09:00:00", "2018-06-03T09:00:00", "2018-06-23T09:00:00",
             "2018-07-03T09:00:00", "2018-07-23T09:00:00", "2018-08-03T09:00:00", "2018-08-23T09:00:00",
             "2018-09-03T09:00:00", "2018-09-23T09:00:00", "2018-10-03T09:00:00", "2018-10-23T09:00:00",
             "2018-11-03T09:00:00", "2018-11-23T09:00:00", "2018-12-03T09:00:00", "2018-12-23T09:00:00",
             "2019-01-03T09:00:00", "2019-01-23T09:00:00", "2019-02-03T09:00:00", "2019-02-23T09:00:00"]
        )
    }

    func testDaily08() {
        // Start 20180517T090000
        // The 2nd and 2nd-to-last of each month
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTHDAY=2,-2;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-30T09:00:00", "2018-06-02T09:00:00", "2018-06-29T09:00:00",
             "2018-07-02T09:00:00", "2018-07-30T09:00:00", "2018-08-02T09:00:00", "2018-08-30T09:00:00",
             "2018-09-02T09:00:00", "2018-09-29T09:00:00", "2018-10-02T09:00:00", "2018-10-30T09:00:00",
             "2018-11-02T09:00:00", "2018-11-29T09:00:00", "2018-12-02T09:00:00", "2018-12-30T09:00:00",
             "2019-01-02T09:00:00", "2019-01-30T09:00:00", "2019-02-02T09:00:00", "2019-02-27T09:00:00"]
        )
    }

    func testDaily09() {
        // Start 20180517T090000
        // Every Monday, Tuesday, and Friday
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYDAY=MO,TU,FR;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-18T09:00:00", "2018-05-21T09:00:00", "2018-05-22T09:00:00",
             "2018-05-25T09:00:00", "2018-05-28T09:00:00", "2018-05-29T09:00:00", "2018-06-01T09:00:00",
             "2018-06-04T09:00:00", "2018-06-05T09:00:00", "2018-06-08T09:00:00", "2018-06-11T09:00:00",
             "2018-06-12T09:00:00", "2018-06-15T09:00:00", "2018-06-18T09:00:00", "2018-06-19T09:00:00",
             "2018-06-22T09:00:00", "2018-06-25T09:00:00", "2018-06-26T09:00:00", "2018-06-29T09:00:00"]
        )
    }

    func testDaily10() {
        // Start 20180517T090000
        // Every Tuesday and Wednesday
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYDAY=WE,TU;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-22T09:00:00", "2018-05-23T09:00:00", "2018-05-29T09:00:00",
             "2018-05-30T09:00:00", "2018-06-05T09:00:00", "2018-06-06T09:00:00", "2018-06-12T09:00:00",
             "2018-06-13T09:00:00", "2018-06-19T09:00:00", "2018-06-20T09:00:00", "2018-06-26T09:00:00",
             "2018-06-27T09:00:00", "2018-07-03T09:00:00", "2018-07-04T09:00:00", "2018-07-10T09:00:00",
             "2018-07-11T09:00:00", "2018-07-17T09:00:00", "2018-07-18T09:00:00", "2018-07-24T09:00:00"]
        )
    }

    func testDaily11() {
        // Start 20180517T090000
        // The 1st, 2nd, 3rd, 4th, and 5th of May and June
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=5,6;BYMONTHDAY=1,2,3,4,5;COUNT=50", start: start, results:
            ["2018-05-17T09:00:00", "2018-06-01T09:00:00", "2018-06-02T09:00:00", "2018-06-03T09:00:00",
             "2018-06-04T09:00:00", "2018-06-05T09:00:00", "2019-05-01T09:00:00", "2019-05-02T09:00:00",
             "2019-05-03T09:00:00", "2019-05-04T09:00:00", "2019-05-05T09:00:00", "2019-06-01T09:00:00",
             "2019-06-02T09:00:00", "2019-06-03T09:00:00", "2019-06-04T09:00:00", "2019-06-05T09:00:00",
             "2020-05-01T09:00:00", "2020-05-02T09:00:00", "2020-05-03T09:00:00", "2020-05-04T09:00:00",
             "2020-05-05T09:00:00", "2020-06-01T09:00:00", "2020-06-02T09:00:00", "2020-06-03T09:00:00",
             "2020-06-04T09:00:00", "2020-06-05T09:00:00", "2021-05-01T09:00:00", "2021-05-02T09:00:00",
             "2021-05-03T09:00:00", "2021-05-04T09:00:00", "2021-05-05T09:00:00", "2021-06-01T09:00:00",
             "2021-06-02T09:00:00", "2021-06-03T09:00:00", "2021-06-04T09:00:00", "2021-06-05T09:00:00",
             "2022-05-01T09:00:00", "2022-05-02T09:00:00", "2022-05-03T09:00:00", "2022-05-04T09:00:00",
             "2022-05-05T09:00:00", "2022-06-01T09:00:00", "2022-06-02T09:00:00", "2022-06-03T09:00:00",
             "2022-06-04T09:00:00", "2022-06-05T09:00:00", "2023-05-01T09:00:00", "2023-05-02T09:00:00",
             "2023-05-03T09:00:00", "2023-05-04T09:00:00"]
        )
    }

    func testDaily12() {
        // Start 20180517T090000
        // The 2nd, 4th, 6th, 2nd-to-last, and 4th-to-last days of July
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=7;BYMONTHDAY=2,4,6,-2,-4;COUNT=50", start: start, results:
            ["2018-05-17T09:00:00", "2018-07-02T09:00:00", "2018-07-04T09:00:00", "2018-07-06T09:00:00",
             "2018-07-28T09:00:00", "2018-07-30T09:00:00", "2019-07-02T09:00:00", "2019-07-04T09:00:00",
             "2019-07-06T09:00:00", "2019-07-28T09:00:00", "2019-07-30T09:00:00", "2020-07-02T09:00:00",
             "2020-07-04T09:00:00", "2020-07-06T09:00:00", "2020-07-28T09:00:00", "2020-07-30T09:00:00",
             "2021-07-02T09:00:00", "2021-07-04T09:00:00", "2021-07-06T09:00:00", "2021-07-28T09:00:00",
             "2021-07-30T09:00:00", "2022-07-02T09:00:00", "2022-07-04T09:00:00", "2022-07-06T09:00:00",
             "2022-07-28T09:00:00", "2022-07-30T09:00:00", "2023-07-02T09:00:00", "2023-07-04T09:00:00",
             "2023-07-06T09:00:00", "2023-07-28T09:00:00", "2023-07-30T09:00:00", "2024-07-02T09:00:00",
             "2024-07-04T09:00:00", "2024-07-06T09:00:00", "2024-07-28T09:00:00", "2024-07-30T09:00:00",
             "2025-07-02T09:00:00", "2025-07-04T09:00:00", "2025-07-06T09:00:00", "2025-07-28T09:00:00",
             "2025-07-30T09:00:00", "2026-07-02T09:00:00", "2026-07-04T09:00:00", "2026-07-06T09:00:00",
             "2026-07-28T09:00:00", "2026-07-30T09:00:00", "2027-07-02T09:00:00", "2027-07-04T09:00:00",
             "2027-07-06T09:00:00", "2027-07-28T09:00:00"]
        )
    }

    func testDaily13() {
        // Start 20180517T090000
        // Every Monday and Friday of May and June
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=5,6;BYDAY=MO,FR;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-18T09:00:00", "2018-05-21T09:00:00", "2018-05-25T09:00:00",
             "2018-05-28T09:00:00", "2018-06-01T09:00:00", "2018-06-04T09:00:00", "2018-06-08T09:00:00",
             "2018-06-11T09:00:00", "2018-06-15T09:00:00", "2018-06-18T09:00:00", "2018-06-22T09:00:00",
             "2018-06-25T09:00:00", "2018-06-29T09:00:00", "2019-05-03T09:00:00", "2019-05-06T09:00:00",
             "2019-05-10T09:00:00", "2019-05-13T09:00:00", "2019-05-17T09:00:00", "2019-05-20T09:00:00"]
        )
    }

    func testDaily14() {
        // Start 20180517T090000
        // Every Saturday and Sunday of July
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=7;BYDAY=SU,SA;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-07-01T09:00:00", "2018-07-07T09:00:00", "2018-07-08T09:00:00",
             "2018-07-14T09:00:00", "2018-07-15T09:00:00", "2018-07-21T09:00:00", "2018-07-22T09:00:00",
             "2018-07-28T09:00:00", "2018-07-29T09:00:00", "2019-07-06T09:00:00", "2019-07-07T09:00:00",
             "2019-07-13T09:00:00", "2019-07-14T09:00:00", "2019-07-20T09:00:00", "2019-07-21T09:00:00",
             "2019-07-27T09:00:00", "2019-07-28T09:00:00", "2020-07-04T09:00:00", "2020-07-05T09:00:00"]
        )
    }

    func testDaily15() {
        // Start 20180517T090000
        // Every Monday and Friday falling on the 5th, 6th, 7th, 8th, 9th, or 10th
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTHDAY=5,6,7,8,9,10;BYDAY=MO,FR;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-06-08T09:00:00", "2018-07-06T09:00:00", "2018-07-09T09:00:00",
             "2018-08-06T09:00:00", "2018-08-10T09:00:00", "2018-09-07T09:00:00", "2018-09-10T09:00:00",
             "2018-10-05T09:00:00", "2018-10-08T09:00:00", "2018-11-05T09:00:00", "2018-11-09T09:00:00",
             "2018-12-07T09:00:00", "2018-12-10T09:00:00", "2019-01-07T09:00:00", "2019-02-08T09:00:00",
             "2019-03-08T09:00:00", "2019-04-05T09:00:00", "2019-04-08T09:00:00", "2019-05-06T09:00:00"]
        )
    }

    func testDaily16() {
        // Start 20180517T090000
        // Every Saturday and Sunday falling on the last, 2nd-to-last, 3rd-to-last, 4th-to-last, or 5th-to-last of the month
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTHDAY=-1,-2,-3,-4,-5;BYDAY=SU,SA;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-05-27T09:00:00", "2018-06-30T09:00:00", "2018-07-28T09:00:00",
             "2018-07-29T09:00:00", "2018-09-29T09:00:00", "2018-09-30T09:00:00", "2018-10-27T09:00:00",
             "2018-10-28T09:00:00", "2018-12-29T09:00:00", "2018-12-30T09:00:00", "2019-01-27T09:00:00",
             "2019-02-24T09:00:00", "2019-03-30T09:00:00", "2019-03-31T09:00:00", "2019-04-27T09:00:00",
             "2019-04-28T09:00:00", "2019-06-29T09:00:00", "2019-06-30T09:00:00", "2019-07-27T09:00:00"]
        )
    }

    func testDaily17() {
        // Start 20180517T090000
        // Every Monday and Friday in August, September, or October falling on the 5th, 6th, 7th, 8th, 9th, or 10th
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=8,9,10;BYMONTHDAY=5,6,7,8,9,10;BYDAY=MO,FR;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2018-08-06T09:00:00", "2018-08-10T09:00:00", "2018-09-07T09:00:00",
             "2018-09-10T09:00:00", "2018-10-05T09:00:00", "2018-10-08T09:00:00", "2019-08-05T09:00:00",
             "2019-08-09T09:00:00", "2019-09-06T09:00:00", "2019-09-09T09:00:00", "2019-10-07T09:00:00",
             "2020-08-07T09:00:00", "2020-08-10T09:00:00", "2020-09-07T09:00:00", "2020-10-05T09:00:00",
             "2020-10-09T09:00:00", "2021-08-06T09:00:00", "2021-08-09T09:00:00", "2021-09-06T09:00:00"]
        )
    }

    func testDaily18() {
        // Start 20180517T090000
        // Every Saturday and Sunday in January or February falling on the last, 2nd-to-last, 3rd-to-last, 4th-to-last, or 5th-to-last of the month
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=1,2;BYMONTHDAY=-1,-2,-3,-4,-5;BYDAY=SU,SA;COUNT=20", start: start, results:
            ["2018-05-17T09:00:00", "2019-01-27T09:00:00", "2019-02-24T09:00:00", "2020-02-29T09:00:00",
             "2021-01-30T09:00:00", "2021-01-31T09:00:00", "2021-02-27T09:00:00", "2021-02-28T09:00:00",
             "2022-01-29T09:00:00", "2022-01-30T09:00:00", "2022-02-26T09:00:00", "2022-02-27T09:00:00",
             "2023-01-28T09:00:00", "2023-01-29T09:00:00", "2023-02-25T09:00:00", "2023-02-26T09:00:00",
             "2024-01-27T09:00:00", "2024-01-28T09:00:00", "2024-02-25T09:00:00", "2026-01-31T09:00:00"]
        )
    }

    // MARK: - EXDATEs

    func testDaily19() {
        // Start 20180517T090000
        // Daily with with exdates. Should give several consecutive days at the same time
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDate = calendar.date(from: DateComponents(year: 2018, month: 5, day: 18, hour: 9))!
        run(rule: "RRULE:FREQ=DAILY", start: start, max: 10, exclusionDates: [exclusionDate], results:
            ["2018-05-17T09:00:00", "2018-05-19T09:00:00", "2018-05-20T09:00:00", "2018-05-21T09:00:00",
             "2018-05-22T09:00:00", "2018-05-23T09:00:00", "2018-05-24T09:00:00", "2018-05-25T09:00:00",
             "2018-05-26T09:00:00", "2018-05-27T09:00:00"]
        )
    }

    func testDaily20() {
        // Start 20180517T090000
        // Daily with with exdates. Should give several consecutive days at the same time
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDate = start
        run(rule: "RRULE:FREQ=DAILY;COUNT=10", start: start, exclusionDates: [exclusionDate], results:
            ["2018-05-18T09:00:00", "2018-05-19T09:00:00", "2018-05-20T09:00:00", "2018-05-21T09:00:00",
             "2018-05-22T09:00:00", "2018-05-23T09:00:00", "2018-05-24T09:00:00", "2018-05-25T09:00:00",
             "2018-05-26T09:00:00", "2018-05-27T09:00:00"]
        )
    }

    func testDaily02e() {
        // Start 20180517T090000
        // Daily every four days
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 5, day: 25, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 5, day: 29, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;INTERVAL=4;COUNT=8", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-21T09:00:00",
             "2018-06-02T09:00:00", "2018-06-06T09:00:00", "2018-06-10T09:00:00", "2018-06-14T09:00:00",
             "2018-06-18T09:00:00", "2018-06-22T09:00:00"]
        )
    }

    func testDaily03e() {
        // Start 20180517T090000
        // Daily in May and June
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 5, day: 25, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 5, day: 29, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=5,6;COUNT=48", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-18T09:00:00", "2018-05-19T09:00:00", "2018-05-20T09:00:00",
             "2018-05-21T09:00:00", "2018-05-22T09:00:00", "2018-05-23T09:00:00", "2018-05-24T09:00:00",
             "2018-05-26T09:00:00", "2018-05-27T09:00:00", "2018-05-28T09:00:00",
             "2018-05-30T09:00:00", "2018-05-31T09:00:00", "2018-06-01T09:00:00",
             "2018-06-02T09:00:00", "2018-06-03T09:00:00", "2018-06-04T09:00:00", "2018-06-05T09:00:00",
             "2018-06-06T09:00:00", "2018-06-07T09:00:00", "2018-06-08T09:00:00", "2018-06-09T09:00:00",
             "2018-06-10T09:00:00", "2018-06-11T09:00:00", "2018-06-12T09:00:00", "2018-06-13T09:00:00",
             "2018-06-14T09:00:00", "2018-06-15T09:00:00", "2018-06-16T09:00:00", "2018-06-17T09:00:00",
             "2018-06-18T09:00:00", "2018-06-19T09:00:00", "2018-06-20T09:00:00", "2018-06-21T09:00:00",
             "2018-06-22T09:00:00", "2018-06-23T09:00:00", "2018-06-24T09:00:00", "2018-06-25T09:00:00",
             "2018-06-26T09:00:00", "2018-06-27T09:00:00", "2018-06-28T09:00:00", "2018-06-29T09:00:00",
             "2018-06-30T09:00:00", "2019-05-01T09:00:00", "2019-05-02T09:00:00", "2019-05-03T09:00:00",
             "2019-05-04T09:00:00", "2019-05-05T09:00:00"]
        )
    }

    func testDaily04e() {
        // Start 20180517T090000
        // Daily in July
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 7, day: 1, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 7, day: 18, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=7;COUNT=48", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-07-02T09:00:00", "2018-07-03T09:00:00",
             "2018-07-04T09:00:00", "2018-07-05T09:00:00", "2018-07-06T09:00:00", "2018-07-07T09:00:00",
             "2018-07-08T09:00:00", "2018-07-09T09:00:00", "2018-07-10T09:00:00", "2018-07-11T09:00:00",
             "2018-07-12T09:00:00", "2018-07-13T09:00:00", "2018-07-14T09:00:00", "2018-07-15T09:00:00",
             "2018-07-16T09:00:00", "2018-07-17T09:00:00", "2018-07-19T09:00:00",
             "2018-07-20T09:00:00", "2018-07-21T09:00:00", "2018-07-22T09:00:00", "2018-07-23T09:00:00",
             "2018-07-24T09:00:00", "2018-07-25T09:00:00", "2018-07-26T09:00:00", "2018-07-27T09:00:00",
             "2018-07-28T09:00:00", "2018-07-29T09:00:00", "2018-07-30T09:00:00", "2018-07-31T09:00:00",
             "2019-07-01T09:00:00", "2019-07-02T09:00:00", "2019-07-03T09:00:00", "2019-07-04T09:00:00",
             "2019-07-05T09:00:00", "2019-07-06T09:00:00", "2019-07-07T09:00:00", "2019-07-08T09:00:00",
             "2019-07-09T09:00:00", "2019-07-10T09:00:00", "2019-07-11T09:00:00", "2019-07-12T09:00:00",
             "2019-07-13T09:00:00", "2019-07-14T09:00:00", "2019-07-15T09:00:00", "2019-07-16T09:00:00",
             "2019-07-17T09:00:00", "2019-07-18T09:00:00"]
        )
    }

    func testDaily05e() {
        // Start 20180517T090000
        // Every 3 days in May and June
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 5, day: 23, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 6, day: 16, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=5,6;INTERVAL=3;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-20T09:00:00", "2018-05-26T09:00:00",
             "2018-05-29T09:00:00", "2018-06-01T09:00:00", "2018-06-04T09:00:00", "2018-06-07T09:00:00",
             "2018-06-10T09:00:00", "2018-06-13T09:00:00", "2018-06-19T09:00:00",
             "2018-06-22T09:00:00", "2018-06-25T09:00:00", "2018-06-28T09:00:00", "2019-05-03T09:00:00",
             "2019-05-06T09:00:00", "2019-05-09T09:00:00", "2019-05-12T09:00:00", "2019-05-15T09:00:00"]
        )
    }

    func testDaily06e() {
        // Start 20180517T090000
        // Every other day in July
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 7, day: 4, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 7, day: 28, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=7;INTERVAL=2;COUNT=28", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-07-02T09:00:00", "2018-07-06T09:00:00",
             "2018-07-08T09:00:00", "2018-07-10T09:00:00", "2018-07-12T09:00:00", "2018-07-14T09:00:00",
             "2018-07-16T09:00:00", "2018-07-18T09:00:00", "2018-07-20T09:00:00", "2018-07-22T09:00:00",
             "2018-07-24T09:00:00", "2018-07-26T09:00:00", "2018-07-30T09:00:00",
             "2019-07-01T09:00:00", "2019-07-03T09:00:00", "2019-07-05T09:00:00", "2019-07-07T09:00:00",
             "2019-07-09T09:00:00", "2019-07-11T09:00:00", "2019-07-13T09:00:00", "2019-07-15T09:00:00",
             "2019-07-17T09:00:00", "2019-07-19T09:00:00", "2019-07-21T09:00:00", "2019-07-23T09:00:00",
             "2019-07-25T09:00:00", "2019-07-27T09:00:00"]
        )
    }

    func testDaily07e() {
        // Start 20180517T090000
        // The 3rd and 23rd of each month
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 6, day: 3, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 12, day: 3, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTHDAY=3,23;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-23T09:00:00", "2018-06-23T09:00:00",
             "2018-07-03T09:00:00", "2018-07-23T09:00:00", "2018-08-03T09:00:00", "2018-08-23T09:00:00",
             "2018-09-03T09:00:00", "2018-09-23T09:00:00", "2018-10-03T09:00:00", "2018-10-23T09:00:00",
             "2018-11-03T09:00:00", "2018-11-23T09:00:00", "2018-12-23T09:00:00",
             "2019-01-03T09:00:00", "2019-01-23T09:00:00", "2019-02-03T09:00:00", "2019-02-23T09:00:00"]
        )
    }

    func testDaily08e() {
        // Start 20180517T090000
        // The 2nd and 2nd-to-last of each month
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 6, day: 2, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 10, day: 2, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTHDAY=2,-2;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-30T09:00:00", "2018-06-29T09:00:00",
             "2018-07-02T09:00:00", "2018-07-30T09:00:00", "2018-08-02T09:00:00", "2018-08-30T09:00:00",
             "2018-09-02T09:00:00", "2018-09-29T09:00:00", "2018-10-30T09:00:00",
             "2018-11-02T09:00:00", "2018-11-29T09:00:00", "2018-12-02T09:00:00", "2018-12-30T09:00:00",
             "2019-01-02T09:00:00", "2019-01-30T09:00:00", "2019-02-02T09:00:00", "2019-02-27T09:00:00"]
        )
    }

    func testDaily09e() {
        // Start 20180517T090000
        // Every Monday, Tuesday, and Friday
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 5, day: 21, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 6, day: 18, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYDAY=MO,TU,FR;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-18T09:00:00", "2018-05-22T09:00:00",
             "2018-05-25T09:00:00", "2018-05-28T09:00:00", "2018-05-29T09:00:00", "2018-06-01T09:00:00",
             "2018-06-04T09:00:00", "2018-06-05T09:00:00", "2018-06-08T09:00:00", "2018-06-11T09:00:00",
             "2018-06-12T09:00:00", "2018-06-15T09:00:00", "2018-06-19T09:00:00",
             "2018-06-22T09:00:00", "2018-06-25T09:00:00", "2018-06-26T09:00:00", "2018-06-29T09:00:00"]
        )
    }

    func testDaily10e() {
        // Start 20180517T090000
        // Every Tuesday and Wednesday
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 5, day: 23, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 7, day: 4, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYDAY=WE,TU;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-22T09:00:00", "2018-05-29T09:00:00",
             "2018-05-30T09:00:00", "2018-06-05T09:00:00", "2018-06-06T09:00:00", "2018-06-12T09:00:00",
             "2018-06-13T09:00:00", "2018-06-19T09:00:00", "2018-06-20T09:00:00", "2018-06-26T09:00:00",
             "2018-06-27T09:00:00", "2018-07-03T09:00:00", "2018-07-10T09:00:00",
             "2018-07-11T09:00:00", "2018-07-17T09:00:00", "2018-07-18T09:00:00", "2018-07-24T09:00:00"]
        )
    }

    func testDaily11e() {
        // Start 20180517T090000
        // The 1st, 2nd, 3rd, 4th, and 5th of May and June
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 6, day: 2, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 5, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=5,6;BYMONTHDAY=1,2,3,4,5;COUNT=48", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-06-01T09:00:00", "2018-06-03T09:00:00",
             "2018-06-04T09:00:00", "2018-06-05T09:00:00", "2019-05-01T09:00:00", "2019-05-02T09:00:00",
             "2019-05-03T09:00:00", "2019-05-04T09:00:00", "2019-06-01T09:00:00",
             "2019-06-02T09:00:00", "2019-06-03T09:00:00", "2019-06-04T09:00:00", "2019-06-05T09:00:00",
             "2020-05-01T09:00:00", "2020-05-02T09:00:00", "2020-05-03T09:00:00", "2020-05-04T09:00:00",
             "2020-05-05T09:00:00", "2020-06-01T09:00:00", "2020-06-02T09:00:00", "2020-06-03T09:00:00",
             "2020-06-04T09:00:00", "2020-06-05T09:00:00", "2021-05-01T09:00:00", "2021-05-02T09:00:00",
             "2021-05-03T09:00:00", "2021-05-04T09:00:00", "2021-05-05T09:00:00", "2021-06-01T09:00:00",
             "2021-06-02T09:00:00", "2021-06-03T09:00:00", "2021-06-04T09:00:00", "2021-06-05T09:00:00",
             "2022-05-01T09:00:00", "2022-05-02T09:00:00", "2022-05-03T09:00:00", "2022-05-04T09:00:00",
             "2022-05-05T09:00:00", "2022-06-01T09:00:00", "2022-06-02T09:00:00", "2022-06-03T09:00:00",
             "2022-06-04T09:00:00", "2022-06-05T09:00:00", "2023-05-01T09:00:00", "2023-05-02T09:00:00",
             "2023-05-03T09:00:00", "2023-05-04T09:00:00"]
        )
    }

    func testDaily12e() {
        // Start 20180517T090000
        // The 2nd, 4th, 6th, 2nd-to-last, and 4th-to-last days of July
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 7, day: 4, hour: 9))!,
            calendar.date(from: DateComponents(year: 2022, month: 7, day: 4, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=7;BYMONTHDAY=2,4,6,-2,-4;COUNT=48", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-07-02T09:00:00", "2018-07-06T09:00:00",
             "2018-07-28T09:00:00", "2018-07-30T09:00:00", "2019-07-02T09:00:00", "2019-07-04T09:00:00",
             "2019-07-06T09:00:00", "2019-07-28T09:00:00", "2019-07-30T09:00:00", "2020-07-02T09:00:00",
             "2020-07-04T09:00:00", "2020-07-06T09:00:00", "2020-07-28T09:00:00", "2020-07-30T09:00:00",
             "2021-07-02T09:00:00", "2021-07-04T09:00:00", "2021-07-06T09:00:00", "2021-07-28T09:00:00",
             "2021-07-30T09:00:00", "2022-07-02T09:00:00", "2022-07-06T09:00:00",
             "2022-07-28T09:00:00", "2022-07-30T09:00:00", "2023-07-02T09:00:00", "2023-07-04T09:00:00",
             "2023-07-06T09:00:00", "2023-07-28T09:00:00", "2023-07-30T09:00:00", "2024-07-02T09:00:00",
             "2024-07-04T09:00:00", "2024-07-06T09:00:00", "2024-07-28T09:00:00", "2024-07-30T09:00:00",
             "2025-07-02T09:00:00", "2025-07-04T09:00:00", "2025-07-06T09:00:00", "2025-07-28T09:00:00",
             "2025-07-30T09:00:00", "2026-07-02T09:00:00", "2026-07-04T09:00:00", "2026-07-06T09:00:00",
             "2026-07-28T09:00:00", "2026-07-30T09:00:00", "2027-07-02T09:00:00", "2027-07-04T09:00:00",
             "2027-07-06T09:00:00", "2027-07-28T09:00:00"]
        )
    }

    func testDaily13e() {
        // Start 20180517T090000
        // Every Monday and Friday of May and June
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 5, day: 21, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 6, day: 18, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=5,6;BYDAY=MO,FR;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-18T09:00:00", "2018-05-25T09:00:00",
             "2018-05-28T09:00:00", "2018-06-01T09:00:00", "2018-06-04T09:00:00", "2018-06-08T09:00:00",
             "2018-06-11T09:00:00", "2018-06-15T09:00:00", "2018-06-22T09:00:00",
             "2018-06-25T09:00:00", "2018-06-29T09:00:00", "2019-05-03T09:00:00", "2019-05-06T09:00:00",
             "2019-05-10T09:00:00", "2019-05-13T09:00:00", "2019-05-17T09:00:00", "2019-05-20T09:00:00"]
        )
    }

    func testDaily14e() {
        // Start 20180517T090000
        // Every Saturday and Sunday of July
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 7, day: 7, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 7, day: 6, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=7;BYDAY=SU,SA;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-07-01T09:00:00", "2018-07-08T09:00:00",
             "2018-07-14T09:00:00", "2018-07-15T09:00:00", "2018-07-21T09:00:00", "2018-07-22T09:00:00",
             "2018-07-28T09:00:00", "2018-07-29T09:00:00", "2019-07-07T09:00:00",
             "2019-07-13T09:00:00", "2019-07-14T09:00:00", "2019-07-20T09:00:00", "2019-07-21T09:00:00",
             "2019-07-27T09:00:00", "2019-07-28T09:00:00", "2020-07-04T09:00:00", "2020-07-05T09:00:00"]
        )
    }

    func testDaily15e() {
        // Start 20180517T090000
        // Every Monday and Friday falling on the 5th, 6th, 7th, 8th, 9th, or 10th
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 7, day: 6, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 11, day: 5, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTHDAY=5,6,7,8,9,10;BYDAY=MO,FR;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-06-08T09:00:00", "2018-07-09T09:00:00",
             "2018-08-06T09:00:00", "2018-08-10T09:00:00", "2018-09-07T09:00:00", "2018-09-10T09:00:00",
             "2018-10-05T09:00:00", "2018-10-08T09:00:00", "2018-11-09T09:00:00",
             "2018-12-07T09:00:00", "2018-12-10T09:00:00", "2019-01-07T09:00:00", "2019-02-08T09:00:00",
             "2019-03-08T09:00:00", "2019-04-05T09:00:00", "2019-04-08T09:00:00", "2019-05-06T09:00:00"]
        )
    }

    func testDaily16e() {
        // Start 20180517T090000
        // Every Saturday and Sunday falling on the last, 2nd-to-last, 3rd-to-last, 4th-to-last, or 5th-to-last of the month
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 6, day: 30, hour: 9))!,
            calendar.date(from: DateComponents(year: 2018, month: 12, day: 30, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTHDAY=-1,-2,-3,-4,-5;BYDAY=SU,SA;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-05-27T09:00:00", "2018-07-28T09:00:00",
             "2018-07-29T09:00:00", "2018-09-29T09:00:00", "2018-09-30T09:00:00", "2018-10-27T09:00:00",
             "2018-10-28T09:00:00", "2018-12-29T09:00:00", "2019-01-27T09:00:00",
             "2019-02-24T09:00:00", "2019-03-30T09:00:00", "2019-03-31T09:00:00", "2019-04-27T09:00:00",
             "2019-04-28T09:00:00", "2019-06-29T09:00:00", "2019-06-30T09:00:00", "2019-07-27T09:00:00"]
        )
    }

    func testDaily17e() {
        // Start 20180517T090000
        // Every Monday and Friday in August, September, or October falling on the 5th, 6th, 7th, 8th, 9th, or 10th
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2018, month: 8, day: 10, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 9, day: 9, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=8,9,10;BYMONTHDAY=5,6,7,8,9,10;BYDAY=MO,FR;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2018-08-06T09:00:00", "2018-09-07T09:00:00",
             "2018-09-10T09:00:00", "2018-10-05T09:00:00", "2018-10-08T09:00:00", "2019-08-05T09:00:00",
             "2019-08-09T09:00:00", "2019-09-06T09:00:00", "2019-10-07T09:00:00",
             "2020-08-07T09:00:00", "2020-08-10T09:00:00", "2020-09-07T09:00:00", "2020-10-05T09:00:00",
             "2020-10-09T09:00:00", "2021-08-06T09:00:00", "2021-08-09T09:00:00", "2021-09-06T09:00:00"]
        )
    }

    func testDaily18e() {
        // Start 20180517T090000
        // Every Saturday and Sunday in January or February falling on the last, 2nd-to-last, 3rd-to-last, 4th-to-last, or 5th-to-last of the month
        let start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 17, hour: 9))!
        let exclusionDates = [
            calendar.date(from: DateComponents(year: 2019, month: 2, day: 24, hour: 9))!,
            calendar.date(from: DateComponents(year: 2022, month: 2, day: 26, hour: 9))!,
            calendar.date(from: DateComponents(year: 2019, month: 5, day: 25, hour: 9))! // not part of results
        ]
        run(rule: "RRULE:FREQ=DAILY;BYMONTH=1,2;BYMONTHDAY=-1,-2,-3,-4,-5;BYDAY=SU,SA;COUNT=18", start: start, exclusionDates: exclusionDates, results:
            ["2018-05-17T09:00:00", "2019-01-27T09:00:00", "2020-02-29T09:00:00",
             "2021-01-30T09:00:00", "2021-01-31T09:00:00", "2021-02-27T09:00:00", "2021-02-28T09:00:00",
             "2022-01-29T09:00:00", "2022-01-30T09:00:00", "2022-02-27T09:00:00",
             "2023-01-28T09:00:00", "2023-01-29T09:00:00", "2023-02-25T09:00:00", "2023-02-26T09:00:00",
             "2024-01-27T09:00:00", "2024-01-28T09:00:00", "2024-02-25T09:00:00", "2026-01-31T09:00:00"]
        )
    }

}
