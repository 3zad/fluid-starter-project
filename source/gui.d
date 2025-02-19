module gui;

import std.stdio;
import std.conv;

import fluid;
import raylib;

import shared_data;
import gui_components;

private Space root;

static this() {
    refreshCounter();
}

void refreshCounter() {
    root = rootScreen(&refreshCounter);
}

void draw() {
    ClearBackground(color!"#fff");
    root.draw();
}