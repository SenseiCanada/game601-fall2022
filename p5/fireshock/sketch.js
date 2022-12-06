let skeImage;
let wizard;
let wX;
let wY;
let fire;
let skeletons = [];
let firebolts = [];

function preload() {
	skeImage = loadImage('skeleton.png');
	wizard = loadImage('wizard.png');
	fire = loadImage('firebolt.png');

}

function setup() {
	createCanvas(windowWidth, windowHeight);
	background(0);
	imageMode(CENTER);
	skeImage.resize(75, 75);
	wizard.resize(75, 75);
	fire.resize(75, 75);


}

function draw() {
	background(0);
	wiz(width - 100, mouseY);

	if (frameCount % 30 === 0) {
		let skeleton = new Skeleton()
		skeletons.push(skeleton);

	}

	for (let i = 0; i < skeletons.length; i = i + 1) {
		skeletons[i].update();
		if (skeletons[i].y >= height || skeletons[i].y <= 0) { // needs to be before splice, otherwise the array here will look for an index that isn't there
			skeletons[i].velY = skeletons[i].velY * -1;
		}

		if (skeletons[i].x >= width || skeletons[i].hit == true) {
			skeletons.splice(i, 1);
			i = i - 1;
		}


	}
	for (let i = 0; i < firebolts.length; i = i + 1) {
		firebolts[i].update();
		if (firebolts[i].y <= 0) {
			firebolts.splice(i, 1);
			i = i - 1;
		}
	}
}

function mousePressed() {
	let firebolt = new Firebolt(wX, wY);
	firebolts.push(firebolt);
}
class Skeleton {
	constructor() {
		this.x = 0;
		this.y = random(height);
		this.velX = random(1, 3);
		this.velY = random(-3, 3);
		this.hit = false;

	}
	update() {
		this.x = this.x + this.velX;
		this.y = this.y + this.velY;
		image(skeImage, this.x, this.y);
		for (let i = 0; i < firebolts.length; i = i + 1) {
			let d = dist(this.x, this.y, firebolts[i].x, firebolts[i].y);
			if (d < 25) {
				this.hit = true;
			}
		}
	}
}

class Firebolt {
	constructor() {
		this.x = width - 100;
		this.y = mouseY;
		this.velX = -10;
	}
	update() {
		this.x = this.x + this.velX;
		image(fire, this.x, this.y);
	}
}

function wiz(wX, wY) {
	image(wizard, wX, wY);
}