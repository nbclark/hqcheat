# Brief overview
I know this is not a great how-to, but this was a 15-min hack project. Feel free to email with questions.

0. Change index.js to point to your desktop path https://github.com/nbclark/hqcheat/blob/master/index.js#L108
0a. Modify the cropping to account for different screen resolutions https://github.com/nbclark/hqcheat/blob/master/index.js#L108
0b. Install tesseract
0c. yarn install

1. Open quicktime
2. File->New Movie Recording
3. Choose your iphone and put the window somewhere convenient
4. Make an application out of the screen grab script and put in dock (or just drag Window-Snapshot-Prompt.app to your dock)
5. Open terminal and node index.js
6. Wait for a question and screenshot when the options are shown (to screenshot, click the snapshot app in your dock. Then when ready, click the mirrored window.)
7. The terminal will watch new images on the desktop, run OCR and google answers
8. Choose the answer recommended (and/or) use your best judgement

# Troubleshooting
## I run the script and nothing happens
You will need to follow all of the steps above to make sure to screenshot the Quicktime window to trigger the script to do anything. It has a watcher for png files saved to the desktop.

NOTE: Make sure to change the path to your desktop in code https://github.com/nbclark/hqcheat/blob/master/index.js#L108

## The question / options are wrong
This is likely due to different iPhone or Mac resolutions. You should modify the cropping of the screenshot here: https://github.com/nbclark/hqcheat/blob/master/index.js#L108 .

To see the result of the cropped image, comment out the line that deletes the cropped image https://github.com/nbclark/hqcheat/blob/master/index.js#L38
