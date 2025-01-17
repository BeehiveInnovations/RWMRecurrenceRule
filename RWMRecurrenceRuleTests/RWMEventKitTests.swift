//
//  RWMEventKitTests.swift
//  RWMRecurrenceRuleTests
//
//  Created by Richard W Maddy on 5/21/18.
//  Copyright © 2018 Maddysoft. All rights reserved.
//

import XCTest
import RWMRecurrenceRule

class RWMEventKitTests: RWMRecurrenceRuleBase {
    /*
     A - RRULE FREQ=DAILY;INTERVAL=1;UNTIL=20180629T055959Z
     B - RRULE FREQ=WEEKLY;INTERVAL=1;UNTIL=20180822T055959Z
     C - RRULE FREQ=WEEKLY;INTERVAL=2;UNTIL=20180922T055959Z
     D - RRULE FREQ=MONTHLY;INTERVAL=1;UNTIL=20200522T055959Z
     E - RRULE FREQ=YEARLY;INTERVAL=1;UNTIL=20230521T180000Z
     F - RRULE FREQ=DAILY;INTERVAL=3;UNTIL=20180722T055959Z
     G - RRULE FREQ=WEEKLY;INTERVAL=2;UNTIL=20180822T055959Z;BYDAY=SU,WE,SA;WKST=SU
     H - RRULE FREQ=MONTHLY;INTERVAL=2;UNTIL=20190622T055959Z;BYMONTHDAY=10,15,20
     I - RRULE FREQ=MONTHLY;INTERVAL=3;UNTIL=20190622T055959Z;BYDAY=TU;BYSETPOS=2
     J - RRULE FREQ=MONTHLY;INTERVAL=1;BYDAY=SU,MO,TU,WE,TH,FR,SA;BYSETPOS=-1
     K - RRULE FREQ=MONTHLY;INTERVAL=1;UNTIL=20190622T055959Z;BYDAY=SU,SA;BYSETPOS=3
     L - RRULE FREQ=YEARLY;INTERVAL=2;UNTIL=20230622T055959Z;BYMONTH=9,10,11
     M - RRULE FREQ=YEARLY;INTERVAL=1;UNTIL=20190622T055959Z;BYMONTH=5,7;BYDAY=1WE
     */

    lazy var start = calendar.date(from: DateComponents(year: 2018, month: 5, day: 21, hour: 9))!

    func testA() {
        run(rule: "RRULE:FREQ=DAILY;INTERVAL=1;UNTIL=20180602T055959Z", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-05-22T09:00:00", "2018-05-23T09:00:00", "2018-05-24T09:00:00",
             "2018-05-25T09:00:00", "2018-05-26T09:00:00", "2018-05-27T09:00:00", "2018-05-28T09:00:00",
             "2018-05-29T09:00:00", "2018-05-30T09:00:00", "2018-05-31T09:00:00", "2018-06-01T09:00:00", "2018-06-02T09:00:00"]
        )
    }

    func testB() {
        run(rule: "RRULE:FREQ=WEEKLY;INTERVAL=1;UNTIL=20180722T055959Z", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-05-28T09:00:00", "2018-06-04T09:00:00", "2018-06-11T09:00:00",
             "2018-06-18T09:00:00", "2018-06-25T09:00:00", "2018-07-02T09:00:00", "2018-07-09T09:00:00",
             "2018-07-16T09:00:00"]
        )
    }

    func testC() {
        run(rule: "RRULE:FREQ=WEEKLY;INTERVAL=2;UNTIL=20180822T055959Z", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-06-04T09:00:00", "2018-06-18T09:00:00", "2018-07-02T09:00:00",
             "2018-07-16T09:00:00", "2018-07-30T09:00:00", "2018-08-13T09:00:00"]
        )
    }

    func testD() {
        run(rule: "RRULE:FREQ=MONTHLY;INTERVAL=1;UNTIL=20190522T055959Z", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-06-21T09:00:00", "2018-07-21T09:00:00", "2018-08-21T09:00:00",
             "2018-09-21T09:00:00", "2018-10-21T09:00:00", "2018-11-21T09:00:00", "2018-12-21T09:00:00",
             "2019-01-21T09:00:00", "2019-02-21T09:00:00", "2019-03-21T09:00:00", "2019-04-21T09:00:00",
             "2019-05-21T09:00:00"]
        )
    }

    func testE() {
        run(rule: "RRULE:FREQ=YEARLY;INTERVAL=1;UNTIL=20230521T180000Z", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2019-05-21T09:00:00", "2020-05-21T09:00:00", "2021-05-21T09:00:00",
             "2022-05-21T09:00:00", "2023-05-21T09:00:00"]
        )
    }

    func testF() {
        run(rule: "RRULE:FREQ=DAILY;INTERVAL=3;UNTIL=20180722T055959Z", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-05-24T09:00:00", "2018-05-27T09:00:00", "2018-05-30T09:00:00",
             "2018-06-02T09:00:00", "2018-06-05T09:00:00", "2018-06-08T09:00:00", "2018-06-11T09:00:00",
             "2018-06-14T09:00:00", "2018-06-17T09:00:00", "2018-06-20T09:00:00", "2018-06-23T09:00:00",
             "2018-06-26T09:00:00", "2018-06-29T09:00:00", "2018-07-02T09:00:00", "2018-07-05T09:00:00",
             "2018-07-08T09:00:00", "2018-07-11T09:00:00", "2018-07-14T09:00:00", "2018-07-17T09:00:00",
             "2018-07-20T09:00:00"]
        )
    }

    func testG() {
        run(rule: "RRULE:FREQ=WEEKLY;INTERVAL=2;UNTIL=20180822T055959Z;BYDAY=SU,WE,SA;WKST=SU", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-05-23T09:00:00", "2018-05-26T09:00:00", "2018-05-27T09:00:00",
             "2018-06-06T09:00:00", "2018-06-09T09:00:00", "2018-06-10T09:00:00", "2018-06-20T09:00:00", "2018-06-23T09:00:00",
             "2018-06-24T09:00:00", "2018-07-04T09:00:00", "2018-07-07T09:00:00", "2018-07-08T09:00:00",
             "2018-07-18T09:00:00", "2018-07-21T09:00:00", "2018-07-22T09:00:00", "2018-08-01T09:00:00",
             "2018-08-04T09:00:00", "2018-08-05T09:00:00", "2018-08-15T09:00:00", "2018-08-18T09:00:00",
             "2018-08-19T09:00:00"]
        )
    }

    func testH() {
        run(rule: "RRULE:FREQ=MONTHLY;INTERVAL=2;UNTIL=20190622T055959Z;BYMONTHDAY=10,15,20", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-07-10T09:00:00", "2018-07-15T09:00:00", "2018-07-20T09:00:00",
             "2018-09-10T09:00:00", "2018-09-15T09:00:00", "2018-09-20T09:00:00", "2018-11-10T09:00:00",
             "2018-11-15T09:00:00", "2018-11-20T09:00:00", "2019-01-10T09:00:00", "2019-01-15T09:00:00",
             "2019-01-20T09:00:00", "2019-03-10T09:00:00", "2019-03-15T09:00:00", "2019-03-20T09:00:00",
             "2019-05-10T09:00:00", "2019-05-15T09:00:00", "2019-05-20T09:00:00"]
        )
    }

    func testI() {
        run(rule: "RRULE:FREQ=MONTHLY;INTERVAL=3;UNTIL=20190622T055959Z;BYDAY=TU;BYSETPOS=2", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-08-14T09:00:00", "2018-11-13T09:00:00", "2019-02-12T09:00:00",
             "2019-05-14T09:00:00"]
        )
    }

    func testJ() {
        run(rule: "RRULE:FREQ=MONTHLY;INTERVAL=1;BYDAY=SU,MO,TU,WE,TH,FR,SA;BYSETPOS=-1;COUNT=20", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-05-31T09:00:00", "2018-06-30T09:00:00", "2018-07-31T09:00:00",
             "2018-08-31T09:00:00", "2018-09-30T09:00:00", "2018-10-31T09:00:00", "2018-11-30T09:00:00",
             "2018-12-31T09:00:00", "2019-01-31T09:00:00", "2019-02-28T09:00:00", "2019-03-31T09:00:00",
             "2019-04-30T09:00:00", "2019-05-31T09:00:00", "2019-06-30T09:00:00", "2019-07-31T09:00:00",
             "2019-08-31T09:00:00", "2019-09-30T09:00:00", "2019-10-31T09:00:00", "2019-11-30T09:00:00"]
        )
    }

    func testK() {
        run(rule: "RRULE:FREQ=MONTHLY;INTERVAL=1;UNTIL=20190622T055959Z;BYDAY=SU,SA;BYSETPOS=3", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-06-09T09:00:00", "2018-07-08T09:00:00", "2018-08-11T09:00:00",
             "2018-09-08T09:00:00", "2018-10-13T09:00:00", "2018-11-10T09:00:00", "2018-12-08T09:00:00",
             "2019-01-12T09:00:00", "2019-02-09T09:00:00", "2019-03-09T09:00:00", "2019-04-13T09:00:00",
             "2019-05-11T09:00:00", "2019-06-08T09:00:00"]
        )
    }

    func testL() {
        run(rule: "RRULE:FREQ=YEARLY;INTERVAL=2;UNTIL=20230622T055959Z;BYMONTH=9,10,11", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-09-21T09:00:00", "2018-10-21T09:00:00", "2018-11-21T09:00:00",
             "2020-09-21T09:00:00", "2020-10-21T09:00:00", "2020-11-21T09:00:00", "2022-09-21T09:00:00",
             "2022-10-21T09:00:00", "2022-11-21T09:00:00"]
        )
    }

    func testM() {
        run(rule: "RRULE:FREQ=YEARLY;INTERVAL=1;UNTIL=20190622T055959Z;BYMONTH=5,7;BYDAY=1WE", mode: .eventKit, start: start, results:
            ["2018-05-21T09:00:00", "2018-07-04T09:00:00", "2019-05-01T09:00:00"]
        )
    }

    func testWeekly1() {
        // Start 20181117T090000
        // Weekly with with exdates.
        let start = calendar.date(from: DateComponents(year: 2018, month: 11, day: 17, hour: 9))!
        run(rule: "RRULE:FREQ=WEEKLY;COUNT=10", mode: .eventKit, start: start, results:
            ["2018-11-17T09:00:00", "2018-11-24T09:00:00", "2018-12-01T09:00:00", "2018-12-08T09:00:00",
             "2018-12-15T09:00:00", "2018-12-22T09:00:00", "2018-12-29T09:00:00", "2019-01-05T09:00:00",
             "2019-01-12T09:00:00", "2019-01-19T09:00:00"]
        )
    }

}
