import std.stdio;
import std.conv;

import raylib;

import core.stdc.stdio;

import gui;


void main()
{
	// Setup
	SetConfigFlags(ConfigFlags.FLAG_WINDOW_RESIZABLE);
	SetConfigFlags(ConfigFlags.FLAG_WINDOW_ALWAYS_RUN);
	InitWindow(512, 512, "Fluid Sample Project");
    SetTargetFPS(30);
	SetWindowIcon(LoadImage("./source/resources/icon.png"));

    scope (exit) CloseWindow();

	// Main drawing loop
	while (!WindowShouldClose)
	{

		BeginDrawing();

		draw();

		EndDrawing();

	}
}
