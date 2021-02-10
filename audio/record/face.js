export function detectFace() {
    const canvas = document.querySelector("canvas#face");
    const context = canvas.getContext("2d");

    if (isShapeDetectionApiSupported()) {
        runShapeDetectionApiDemo();
    } else {
        displayFallbackMessage();
    }

    function isShapeDetectionApiSupported() {
        return window.FaceDetector && window.TextDetector && window.BarcodeDetector;
    }

    async function runShapeDetectionApiDemo() {
        const video = document.querySelector("video#live");

        canvas.width = video.videoWidth;
        canvas.height = video.videoHeight;

        let renderLocked = false;
        const faceDetector = new FaceDetector({ fastMode: true });

        function render() {
            if (!video.paused) {
                renderLocked = true;

                Promise.all([
                    faceDetector.detect(video).catch((error) => console.error(error)),
                ]).then(
                    ([detectedFaces = []]) => {
                        context.clearRect(0, 0, canvas.width, canvas.height);
                        context.drawImage(video, 0, 0, video.videoWidth, video.videoHeight);

                        context.strokeStyle = "#ffeb3b";
                        context.fillStyle = "#ffeb3b";
                        context.font = "16px Mononoki";
                        context.lineWidth = 5;

                        detectedFaces.forEach((detectedFace) => {
                            const { top, left, width, height } = detectedFace.boundingBox;
                            context.beginPath();
                            context.rect(left, top, width, height);
                            context.stroke();
                            context.fillText("face detected", left + 5, top - 8);

                            if (detectedFace.landmarks) {
                                detectedFace.landmarks.forEach((landmark) => {
                                    context.beginPath();
                                    context.arc(
                                        landmark.locations.x,
                                        landmark.locations.y,
                                        5,
                                        0,
                                        Math.PI * 2
                                    );
                                    context.fill();
                                    context.fillText(
                                        landmark.type,
                                        landmark.locations.x + 10,
                                        landmark.locations.y + 4
                                    );
                                });
                            }
                        });

                        renderLocked = false;
                    }
                );
            }
        }

        (function renderLoop() {
            requestAnimationFrame(renderLoop);
            if (!renderLocked) {
                render();
            }
        })();
    }

    function displayFallbackMessage() {
        console.log("error!");
    }
}