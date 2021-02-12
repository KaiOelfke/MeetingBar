//
//  DefaultsKeys.swift
//  MeetingBar
//
//  Created by Andrii Leitsius on 12.06.2020.
//  Copyright © 2020 Andrii Leitsius. All rights reserved.
//
import Defaults
import Foundation

extension Defaults.Keys {
    // General
    static let appVersion = Key<String>("appVersion", default: "2.0.5")
    static let isInstalledFromAppStore = Key<Bool>("isInstalledFromAppStore", default: false)
    static let patronageDuration = Key<Int>("patronageDuration", default: 0)

    static let calendarTitle = Key<String>("calendarTitle", default: "") // Backward compatibility
    static let selectedCalendars = Key<[String]>("selectedCalendars", default: []) // Backward compatibility
    static let selectedCalendarIDs = Key<[String]>("selectedCalendarIDs", default: [])

    static let onboardingCompleted = Key<Bool>("onboardingCompleted", default: false)

    static let showEventsForPeriod = Key<ShowEventsForPeriod>("showEventsForPeriod", default: .today)
    static let joinEventNotification = Key<Bool>("joinEventNotification", default: true)
    static let joinEventNotificationTime = Key<JoinEventNotificationTime>("joinEventNotificationTime", default: .atStart)
    static let launchAtLogin = Key<Bool>("launchAtLogin", default: false)

    // Status Bar Appearance
    static let showEventTitleInStatusBar = Key<Bool?>("showEventTitleInStatusBar") // Backward compatibility
    static let eventTitleFormat = Key<EventTitleFormat>("eventTitleFormat", default: .show)
    static let eventTimeFormat = Key<EventTimeFormat>("eventTimeFormat", default: .show)

    static let eventTitleIconFormat = Key<EventTitleIconFormat>("eventTitleIconFormat", default: .none)
    static let titleLength = Key<Double?>("titleLength", default: nil) // Backward compatibility
    static let statusbarEventTitleLength = Key<Int>("statusbarEventTitleLength", default: statusbarEventTitleLengthLimits.max)

    // Menu Appearance
    // if the event title in the menu should be shortened or not -> the length will be stored in field menuEventTitleLength
    static let shortenEventTitle = Key<Bool>("shortenEventTitle", default: false)
    static let menuEventTitleLength = Key<Int>("menuEventTitleLength", default: 50)

    static let showEventDetails = Key<Bool>("showEventDetails", default: false)
    static let showMeetingServiceIcon = Key<Bool>("showMeetingServiceIcon", default: true)

    static let declinedEventsAppereance = Key<DeclinedEventsAppereance>("declinedEventsAppereance", default: .strikethrough)
    static let pastEventsAppereance = Key<PastEventsAppereance>("pastEventsAppereance", default: .show_inactive)
    static let personalEventsAppereance = Key<PastEventsAppereance>("personalEventsAppereance", default: .show_active)
    static let disablePastEvents = Key<Bool?>("disablePastEvents")
    static let hidePastEvents = Key<Bool>("hidePastEvents", default: false)

    static let showEventMaxTimeUntilEventThreshold = Key<Int>("showEventMaxTimeUntilEventThreshold", default: 60)
    static let showEventMaxTimeUntilEventEnabled = Key<Bool>("showEventMaxTimeUntilEventEnabled", default: false)

    // appearance of pending events should be shown in the statusbar and menu
    static let showPendingEvents = Key<PendingEventsAppereance>("showPendingEvents", default: PendingEventsAppereance.show)

    static let timeFormat = Key<TimeFormat>("timeFormat", default: .military)

    // Bookmarks
    static let bookmarks = Key<[Bookmark]>("bookmarks", default: [])


    // show all day events - by default true
    static let allDayEvents = Key<AlldayEventsAppereance>("allDayEvents", default: AlldayEventsAppereance.show)

    // show the end time of a meeting in the meetingbar for each event entry
    static let showEventEndTime = Key<Bool>("showEventEndTime", default: true)

    // Integrations
    static let createMeetingService = Key<CreateMeetingServices>("createMeetingService", default: .zoom)

    // custom url to create meetings
    static let createMeetingServiceUrl = Key<String>("createMeetingServiceUrl", default: "")

    static let browserForMeetLinks = Key<Browser>("browserForMeetLinks", default: .defaultBrowser)

    static let useChromeForMeetLinks = Key<Bool?>("useChromeForMeetLinks") // Backward compatibility
    static let useAppForZoomLinks = Key<Bool>("useAppForZoomLinks", default: false)
    static let useAppForTeamsLinks = Key<Bool>("useAppForTeamsLinks", default: false)

    // Advanced
    static let joinEventScriptLocation = Key<URL?>("joinEventScriptLocation", default: nil)
    static let runJoinEventScript = Key<Bool>("runAppleScriptWhenJoiningEvent", default: false)
    static let joinEventScript = Key<String>("joinEventScript", default: "# write your script here\ntell application \"Music\" to pause")
    static let customRegexes = Key<[String]>("customRegexes", default: [])
}
