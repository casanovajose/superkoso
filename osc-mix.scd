(
{
	PinkNoise.ar(0.2) +
	SinOsc.ar(220, 0, 0.2) +
	Saw.ar(222, 0.2)
	}.play
)


{Mix([SinOsc.ar(440, 0, 0.2), SinOsc.ar(430, 0, 0.2)]).postln }.play;

(
{
	var a, b;
	a = [SinOsc.ar(440, 0, 0.2), Saw.ar(338, 0.2)];
	b = [SinOsc.ar(440, 0, 0.2), Saw.ar(338, 0.1)];
	Mix([a, b]).postln;
}.play;
)

// sin osc clusters
(
var n = 80;
{ Mix.fill(n, {SinOsc.ar(50 + 1800.0.rand, 0, 0.8/n )})}.play;
)

//

(
var n = 100;
{
	Mix.fill(n,
		{
		arg index;
		var freq;
		index.postln;
		freq = 840 + index*1.05;
		//freq.postln;
		SinOsc.ar(freq, 0, 0.8/n )})
}.play;
)