-   ✨ New Features
    -   `Open config folder` button has been added into Preferences.<br>
        The feature provides [an easy way exporting configuration](https://pqrs.org/osx/karabiner/document.html#export).
-   ⚡️ Improvements
    -   Added a workaround for non-dismissible `Device is ignored temporarily` alert
        which is caused by some devices that sends abnormal input events.
-   🐛 Bug Fixes
    -   Fixed `Add {key_code} to Karabiner-Elements` button on EventViewer for unnamed keys (raw number key codes).
    -   Fixed an issue that modifier flag events are not dispatched when changing pointing button while other character keys are pressed.<br>
        (e.g., when changing pointing_button::button3 -> command+pointing_button::button1, command modifier is not sent when button1 is pressed while `t` key is also pressed.)
