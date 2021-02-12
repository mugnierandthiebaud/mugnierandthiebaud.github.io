"use strict";

class Svg2canvas {
  /////////////////////
  constructor(canvas) {
    this.canvas = canvas;
    this.ctx = canvas.getContext("2d");
    this.stop = undefined;
    this.img = new Image();
    this.mugnierAndThiebaud = new Image();
  }

  /////////////////////
  render(start) {
    const rotate = true;
    const image = true;
    const currentTime = new Date().getTime();

    if (rotate) {
      const rotation = ((Math.PI / 180) * (currentTime - start)) / 15;
      const center = {
        x: canvas.width / 2,
        y: canvas.height / 2,
      };

        this.ctx.translate(center.x, center.y);
        const scale = Math.max(
          (canvas.width/this.img.width),
          (canvas.height/this.img.height)
        );
      this.ctx.scale(scale, scale);
      this.ctx.rotate(rotation);
      this.ctx.translate(-center.x, -center.y);
    }

    if (image) {
      this.ctx.save();
      this.ctx.beginPath();
      this.ctx.arc(canvas.width / 2, canvas.height / 2, 54, 0, Math.PI * 2);
      this.ctx.arc(canvas.width / 2, canvas.height / 2, 5, 0, Math.PI * 2);
      this.ctx.closePath();
      this.ctx.clip("evenodd");

      const amplitude = 0.15;
      const lenteur = 1500;
      let reduc =
        amplitude +
        0.26 +
        amplitude * Math.cos((currentTime - start) / lenteur);

      const offset = {
        x:
          (this.mugnierAndThiebaud.width -
            this.mugnierAndThiebaud.width * reduc) /
          2,
        y:
          (this.mugnierAndThiebaud.height -
            this.mugnierAndThiebaud.height * reduc) /
          2,
      };
      this.ctx.drawImage(
        this.mugnierAndThiebaud,
        offset.x + (canvas.width - this.mugnierAndThiebaud.width) / 2,
        offset.y + (canvas.height - this.mugnierAndThiebaud.height) / 2,
        this.mugnierAndThiebaud.width * reduc,
        this.mugnierAndThiebaud.height * reduc
      );
      this.ctx.restore();
      this.ctx.beginPath();
      this.ctx.arc(canvas.width / 2, canvas.height / 2, 5, 0, Math.PI * 2);
      this.ctx.closePath();
      this.ctx.stroke();
    }

    this.ctx.drawImage(
      this.img,
      (canvas.width - this.img.width) / 2,
      (canvas.height - this.img.height) / 2
    );

    /*     if (!this.stop) {
      requestAnimationFrame(this.step.bind(this));
    }
 */
  }

  /////////////////////
  init(svgString) {
    this.stop = false;

    const _this = this;
    return new Promise(function (resolve, reject) {
      _this.mugnierAndThiebaud.onload = () => {
        const DOMURL = self.URL || self.webkitURL || self;
        const svg = new Blob([svgString], {
          type: "image/svg+xml;charset=utf-8",
        });
        const url = DOMURL.createObjectURL(svg);
        _this.img.onload = () => {
          resolve(new Date().getTime());
        };
        _this.img.src = url;
      };

      _this.mugnierAndThiebaud.src = "/mugnierAndThiebaud0_cropped.jpg"; // Set source path
    });
  }
}

export default (canvas) => {
  return new Svg2canvas(canvas);
};
