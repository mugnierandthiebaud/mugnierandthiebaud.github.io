"use strict";

class Svg2canvas {
  /////////////////////
  constructor(canvas) {
    this.canvas = canvas;
    this.ctx = canvas.getContext("2d");
    this.stop = undefined;
    this.mode = "cover";
    this.svgImage = new Image();
    this.imgImage = new Image();
  }

  /////////////////////
  render(start) {
    const currentTime = new Date().getTime();

    // rotation and scale
    {
      const rotation = ((Math.PI / 180) * (currentTime - start)) / 15;
      const center = {
        x: canvas.width / 2,
        y: canvas.height / 2,
      };

      this.ctx.translate(center.x, center.y);
      const coverOrContain = this.mode === "cover" ? Math.max : Math.min;
      const scale = coverOrContain(
        canvas.width / this.svgImage.width,
        canvas.height / this.svgImage.height
      );
      this.ctx.scale(scale, scale);
      this.ctx.rotate(rotation);
      this.ctx.translate(-center.x, -center.y);
    }

    // imgImage
    {
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
        x: (this.imgImage.width - this.imgImage.width * reduc) / 2,
        y: (this.imgImage.height - this.imgImage.height * reduc) / 2,
      };

      this.ctx.drawImage(
        this.imgImage,
        offset.x + (canvas.width - this.imgImage.width) / 2,
        offset.y + (canvas.height - this.imgImage.height) / 2,
        this.imgImage.width * reduc,
        this.imgImage.height * reduc
      );
      this.ctx.restore();

      this.ctx.beginPath();
      this.ctx.arc(canvas.width / 2, canvas.height / 2, 5, 0, Math.PI * 2);
      this.ctx.closePath();
      this.ctx.stroke();
    }

    // svgImage
    {
      this.ctx.drawImage(
        this.svgImage,
        (canvas.width - this.svgImage.width) / 2,
        (canvas.height - this.svgImage.height) / 2
      );
    }
  }

  /////////////////////
  init(svgString, imgUrl, mode) {
    const _this = this;
    _this.stop = false;
    _this.mode = mode || _this.mode;

    return new Promise(function (resolve, reject) {
      if (!svgString || !imgUrl) {
        reject({
          error: "Svg2canvas.init: wrong arguments",
          arg1: svgString, arg2: imgUrl
        });
      }
      _this.imgImage.onload = () => {
        const DOMURL = self.URL || self.webkitURL || self;
        const svg = new Blob([svgString], {
          type: "image/svg+xml;charset=utf-8",
        });
        const svgUrl = DOMURL.createObjectURL(svg);
        _this.svgImage.onload = () => {
          resolve(new Date().getTime());
        };
        _this.svgImage.onerror = (e) => {
          reject(e);
        };
        _this.svgImage.src = svgUrl;
      };
      _this.imgImage.onerror = (e) => {
        reject(e);
      };
      _this.imgImage.src = imgUrl;
    });
  }
}

export default (canvas) => {
  return new Svg2canvas(canvas);
};
