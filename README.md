# PIPSwiftUI
Sample project showing SwiftUI Picture in Picture issue

## Steps to reproduce issue

1. Tap the "Play test video" button
2. A video should begin playing in a modal full cover sheet
3. Once the video begins to play, tap the PiP button on the top left
4. The modal sheet will be dismissed and the video will continue to play in PiP mode
5. Press the PiP button in the video window.
6. The PiP window disappears, but the modal sheet is not restored and the video stops playing
