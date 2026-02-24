# Roblox Animation Project

## Description

A library of Lua modules and tooling for creating, publishing, and driving curve-based animations in Roblox, along with two Studio plugins for profiling and interactive playback control.

## Components

### 1. Curve Animation Library
Lua modules for defining and evaluating curve animations — keyframed value sequences that can drive arbitrary properties over time. Handles interpolation, looping, and playback state.

### 2. Roblox Cloud Animation Asset Creation
Modules for creating and publishing animation assets to the Roblox cloud via the Open Cloud API, so animations can be authored programmatically rather than through the Studio animation editor.

### 3. Animation-to-Property Wiring
A system for binding animation curves to instance properties — connecting playback output to things like part positions, sizes, colors, transparencies, UI properties, etc.

### 4. Animation Profiler Plugin
A Studio plugin for analyzing the memory footprint and playback performance of animations — surfacing metrics like memory usage per animation, estimated playback cost, and potential bottlenecks.

### 5. Trigger Plugin
A Studio plugin for placing interactive triggers in the scene that start and stop animation playback — configuring which animations play, under what conditions, and with what parameters (delay, loop, reverse, etc.).

## Notes

<!-- Additional notes, open questions, links to references -->
