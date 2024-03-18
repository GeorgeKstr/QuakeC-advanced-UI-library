# QuakeC UI Library

The QuakeC UI Library enables developers to create advanced user interfaces for games or applications built on the QuakeC engine. It provides functionality to manage windows, handle input, draw UI elements, and more.

## Features

- **Window Management:** Create, manage, and delete windows with various configurations.
- **Input Handling:** Easily handle window input for interactive user experiences.
- **Drawing UI Elements:** Draw windows and UI elements on the screen with customizable styles.
- **Easy Integration:** Integrate the library into your QuakeC projects with minimal effort.

## Usage

### Creating a Window

```md
float headersize;
const float headersize_percent = 3;
const float scrollsize = 2;
const float edgesize = 1;
const float closesize = 0.6;
const float W_NONE = 0;
const float W_NOMOVE = 1;
const float W_NORESIZE = 2;
const float W_NOHEADER = 4;
const float W_RELATIVETOSCREEN = 8;
const float W_NOHEAD = 16;
const float W_NOSCROLLBAR = 32;
const float W_BLOCKINPUT = 64;
const float RESIZE_NONE = 0;
const float RESIZE_LEFT = 1;
const float RESIZE_RIGHT = 2;
const float RESIZE_BOTTOM = 4;
const float DPAD_SCROLL_LEVEL = 0.05;
float comicfont;
float titlefont;
float csdisconnected;

entity current_animation;
const float ANIMATION_NONE = 0;
const float ANIMATION_FADEIN = 1;
const float ANIMATION_FADEOUT = 2;

// Other variables and constants...

entity(vector pos, vector sz, float wflags, string wname) CreateWindow
{
    // Implementation...
}

void(vector pos, string text, float sz, vector col, float alph) drawaspectstring
{
    // Implementation...
}

// More functions and implementations...
```

### Handling Window Input

```md
float(float evtype, float scanx, float chary) HandleWindowInput
{
    // Implementation...
}
```

### Getting a Window by Name

```md
entity getWindowByName(string n)
{
    // Implementation...
}
```

### Drawing Windows

```md
void DrawWindows()
{
    // Implementation...
}
```

### Deleting Windows

```md
void deleteWindow(entity window)
{
    // Implementation...
}
```

### Deleting All Windows

```md
void deleteAllWindows()
{
    // Implementation...
}
```

## Getting Started

1. Clone or download the QuakeC UI Library repository.
2. Include the library in your QuakeC project.
3. Use the provided functions to create and manage windows and UI elements.

For detailed usage instructions and examples, refer to the documentation and code provided with the library.
