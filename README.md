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
entity window = CreateWindow([100, 100], [200, 150], W_NONE, "Main Window");
```

### Handling Window Input

```md
float HandleWindowInput(float evtype, float scanx, float chary)
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
