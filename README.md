# NovaBeacon-iOS

Classic **Objective-C** UIKit demo: a dark beacon console that “hears” a virtual iBeacon UUID and live RSSI.

Drop the `NovaBeacon/` sources into a new Xcode iOS App target (Objective-C). No CocoaPods.

## Files
| File | Role |
|------|------|
| `AppDelegate.*` | Window bootstrap |
| `BeaconViewController.*` | HUD |
| `PulseEngine.*` | Simulated ranging (swap for `CLLocationManager` + `CLBeaconRegion`) |

When you have a device, replace `PulseEngine` ticks with Core Location beacon callbacks — the view contract stays identical.
