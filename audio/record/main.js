/*
 *  Copyright (c) 2016 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree.
 */

"use strict";

/* globals main */

// This code is adapted from
// https://rawgit.com/Miguelao/demos/master/mediarecorder.html

/* globals main, MediaRecorder */

let mediaRecorder;
let recordedBlobs;
let sourceBuffer;
let canvas2;
let video2;
let stream; 

const recordButton = document.querySelector("button#record");
const playButton = document.querySelector("button#play");
const downloadButton = document.querySelector("button#download");
const videoMimeType = "video/webm";
const mediaSource = new MediaSource();

function main() {
  mediaSource.addEventListener("sourceopen", handleSourceOpen, false);

  if (navigator.mediaDevices) {
    console.log("getUserMedia supported.");

    var constraints = { audio: true, video: true };
    var chunks = [];

    navigator.mediaDevices
      .getUserMedia(constraints)
      .then(function (stream) {
        var options = {
          audioBitsPerSecond: 128000,
          videoBitsPerSecond: 2500000,
          mimeType: videoMimeType,
        };
        var mediaRecorder = new MediaRecorder(stream, options);

        // console.log(mediaRecorder.mimeType); // would return 'video/mp4'
      })
      .catch(function (error) {
        console.log(error.message);
      });
  }

  canvas2 = document.querySelector("canvas#canvas");
  video2 = document.querySelector("video#playback");
  recordButton.onclick = toggleRecording;
  playButton.onclick = play;
  downloadButton.onclick = download;

  stream = canvas2.captureStream(60); // frames per second
  console.log("Started stream capture from canvas element: ", stream);
}
function handleSourceOpen(event) {
  console.log("MediaSource opened");
  sourceBuffer = mediaSource.addSourceBuffer(videoMimeType + '; codecs="vp9"');
  console.log("Source buffer: ", sourceBuffer);
}

function handleDataAvailable(event) {
  if (event.data && event.data.size > 0) {
    recordedBlobs.push(event.data);
  }
}

function handleStop(event) {
  console.log("Recorder stopped: ", event);
  const superBuffer = new Blob(recordedBlobs, { type: videoMimeType });
  video2.src = window.URL.createObjectURL(superBuffer);
}

function toggleRecording() {
  if (recordButton.textContent === "Start Recording") {
    startRecording();
  } else {
    stopRecording();
    recordButton.textContent = "Start Recording";
    playButton.disabled = false;
    downloadButton.disabled = false;
  }
}

// The nested try blocks will be simplified when Chrome 47 moves to Stable
function startRecording() {
  let options = {
    mimeType: videoMimeType,
    videoBitsPerSecond: 100000000,
  };
  recordedBlobs = [];
  try {
    mediaRecorder = new MediaRecorder(stream, options);
  } catch (e0) {
    console.log("Unable to create MediaRecorder with options Object: ", e0);
    try {
      options = { mimeType: "video/webm,codecs=vp9" };
      mediaRecorder = new MediaRecorder(stream, options);
    } catch (e1) {
      console.log("Unable to create MediaRecorder with options Object: ", e1);
      try {
        options = "video/vp8"; // Chrome 47
        mediaRecorder = new MediaRecorder(stream, options);
      } catch (e2) {
        alert(
          "MediaRecorder is not supported by this browser.\n\n" +
            "Try Firefox 29 or later, or Chrome 47 or later, " +
            "with Enable experimental Web Platform features enabled from chrome://flags."
        );
        console.error("Exception while creating MediaRecorder:", e2);
        return;
      }
    }
  }
  /*
  mediaRecorder.setVideoSize(1280, 720);
 
  mediaRecorder.setVideoFrameRate(25); //might be auto-determined due to lighting
  mediaRecorder.setVideoEncodingBitRate(3000000);
  mediaRecorder.setVideoEncoder(MediaRecorder.VideoEncoder.H264);// MPEG_4_SP
  mediaRecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);
   */
  console.log("Created MediaRecorder", mediaRecorder, "with options", options);
  recordButton.textContent = "Stop Recording";
  playButton.disabled = true;
  downloadButton.disabled = true;
  mediaRecorder.onstop = handleStop;
  mediaRecorder.ondataavailable = handleDataAvailable;
  mediaRecorder.start(100); // collect 100ms of data
  console.log("MediaRecorder started", mediaRecorder);
}

function stopRecording() {
  mediaRecorder.stop();
  console.log("Recorded Blobs: ", recordedBlobs);
  video2.controls = true;
}

function play() {
  video2.play();
}

function download() {
  const blob = new Blob(recordedBlobs, { type: videoMimeType });
  const url = window.URL.createObjectURL(blob);
  const a = document.createElement("a");
  a.style.display = "none";
  a.href = url;
  a.download = "test.webm";
  document.body.appendChild(a);
  a.click();
  setTimeout(() => {
    document.body.removeChild(a);
    window.URL.revokeObjectURL(url);
  }, 100);
}

export { main };
