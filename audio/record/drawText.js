class DT {
  constructor(ctx) {
    this.ctx = ctx;
  }

  drawStrokedText(text, x, y) {
    // using the solutions from @Simon Sarris and @Jackalope from
    // https://stackoverflow.com/questions/7814398/a-glow-effect-on-html5-canvas
    this.ctx.save();
    //this.ctx.strokeStyle = "black";
    this.ctx.lineWidth = 1;
    this.ctx.lineJoin = "miter"; // ctx.lineJoin = "bevel" || "round" || "miter";
    this.ctx.miterLimit = 1;
    this.ctx.strokeText(text, x, y);
    this.ctx.fillText(text, x, y);
    this.ctx.restore();
  }

  drawShadowedText(text, x, y, shadowBlur = 3, shadowColor = "black") {
    this.ctx.save();
    this.ctx.shadowBlur = shadowBlur;
    this.ctx.shadowColor = shadowColor;
    this.ctx.shadowOffsetX = 4;
    this.ctx.shadowOffsetY = 4;
    this.ctx.fillText(text, x, y);
    this.ctx.restore();
  }

  drawGlowingText(text, x, y, glowColorHexString, glowDistance = 10) {
    this.ctx.save();
    this.ctx.shadowBlur = glowDistance;
    this.ctx.shadowColor = glowColorHexString;
    this.ctx.strokeText(text, x, y);

    for (let i = 0; i < 3; i++) this.ctx.fillText(text, x, y); //seems to be washed out without 3 fills

    this.ctx.restore();
  }

  drawBlurredText(text, x, y, blur = 5) {
    //using technique from https://www.html5rocks.com/en/tutorials/canvas/texteffects/
    this.ctx.save();
    let width = this.ctx.measureText(text).width + blur * 2;
    this.ctx.shadowColor = this.ctx.fillStyle;
    this.ctx.shadowOffsetX = width + x + this.ctx.canvas.width;
    this.ctx.shadowOffsetY = 0;
    this.ctx.shadowBlur = blur;
    this.ctx.fillText(text, -width + -this.ctx.canvas.width, y);
    this.ctx.restore();
  }

  drawReflectedText(text, x, y, reflectionScale = 0.2, reflectionAlpha = 0.1) {
    this.ctx.save();
    this.ctx.fillText(text, x, y);
    this.ctx.scale(1, -reflectionScale);
    this.ctx.globalAlpha = reflectionAlpha;
    this.ctx.shadowColor = this.ctx.fillStyle;
    this.ctx.shadowBlur = 15;
    this.ctx.fillText(text, x, -(y * (1 / reflectionScale)));
    this.ctx.restore();
  }

  /* for (let i = 0; i < 4; i++) {
  drawStrokedText("MVW", 20 + i * 250, 80 * 1);
  drawShadowedText("MVW", 20 + i * 250, 80 * 2, 3);
  drawGlowingText("MVW", 20 + i * 250, 80 * 3, "#FF0000", 10);
  drawBlurredText("MVW", 20 + i * 250, 80 * 4, 5);
  drawReflectedText("MVW", 20 + i * 250, 80 * 5, 0.5, 0.5);
}
 */
}

export default (ctx) => {
  return new DT(ctx);
};
