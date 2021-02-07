const clockMod = (function () {
    // pad a value
    var pad = function (a) {
        return String('00' + a).slice(-2);
    };

    // return a public method that creates a clock object
    return {
        getTimeText: function () {
            const now = new Date();
            return pad(now.getMinutes() + (now.getHours() % 2) * 60) + ':' +
                pad(now.getSeconds());
        },
    }

}());

const clockText = function (canvas, ctx, timeRect) {
    ctx.lineWidth = 1;
    ctx.fillStyle = '#222';
    ctx.strokeStyle = '#333';
    ctx.font = '28px arial';
    ctx.textBaseline = 'middle';
    ctx.textAlign = 'center';
    // time
    var text = clockMod.getTimeText();
    ctx.fillText(text, timeRect.x, timeRect.y);
    ctx.strokeText(text, timeRect.x, timeRect.y);
};

const x = 10, y = 10, cx = 200, cy = 50;

const timeRect = {
    x: 130,
    y: 30,
    cx: 50,
    cy: 50
};

var img = new Image();
        img.onload = function () {
        }
        img.src = "media/drawing.svg";


const banner = {
    draw: function (canvas, ctx) {

        ctx.imageSmoothingEnabled = true;
        // Create a linear gradient
        // The start gradient point is at x=20, y=0
        // The end gradient point is at x=220, y=0
        var gradient = ctx.createLinearGradient(0, 0, 240, 0);

        // Add three color stops
        gradient.addColorStop(0, 'green');
        gradient.addColorStop(.5, 'cyan');
        gradient.addColorStop(1, 'green');

        // Set the fill style and draw a rectangle
        ctx.fillStyle = gradient;
        ctx.fillRect(x, y, cx, cy);
        ctx.fillStyle = "#FF0000";;

        clockText(canvas, ctx, timeRect);

        ctx.drawImage(img, 0, 0);
        
        // ctx.fillRect(10, 20, 20, 100);
    }
};

export { banner };