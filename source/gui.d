module gui;

import std.stdio;
import std.conv;

import fluid;
import raylib;

import shared_data;

private Space root;

Space rootScreen() {
    return vspace(
        .layout!"center",
        label(.layout!"center", "Button has been clicked " ~ to!string(counter) ~ " times."),
        button(.layout!"center", "Click me!", delegate () @trusted { counter++; }),
    );
}

static this() {
    root = rootScreen();
}

void draw() {
    ClearBackground(color!"#fff");
    root.draw();
}