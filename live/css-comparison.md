# CSS Comparison: LinoHaze 2024 vs Orpheus Haze 2026

## Color Differences

### Background Colors
- **LinoHaze 2024**: `#424242` (medium gray)
- **Orpheus Haze 2026**: `#1D1C1C` (very dark gray/black)

### Text Colors
- **LinoHaze 2024**: `#fff` (pure white) for most text
- **Orpheus Haze 2026**: `#a6afb2` (light blue-gray) for body text, `#879092` for headers

### Link Colors
- **LinoHaze 2024**: `rgba(255, 255, 255, 0.6)` (60% white)
- **Orpheus Haze 2026**: `#f2f9fc` (very light blue-white)

### Link Hover Colors
- **LinoHaze 2024**: `#fff` (pure white)
- **Orpheus Haze 2026**: `#9b9695` (medium gray)

### Box/Container Colors
- **LinoHaze 2024**: Uses transparent/rgba backgrounds
- **Orpheus Haze 2026**: `#222020` (dark gray) for boxes, `#252323` for headers

### Form Element Colors
- **LinoHaze 2024**: 
  - Background: `rgba(33, 33, 33, 0.32)`
  - Border: `rgba(255, 255, 255, 0.08)`
- **Orpheus Haze 2026**:
  - Background: `#252323` (dark gray)
  - Border: `rgba(255, 255, 255, 0.08)` (same)
  - Focus background: `#272424`

### Table Colors
- **LinoHaze 2024**: No specific table background
- **Orpheus Haze 2026**: 
  - Table: `#222020`
  - Even rows: `#242121`
  - Odd rows: `#272424`
  - Headers: `#2A2727`

### Button Colors
- **LinoHaze 2024**: Not defined in visible portion
- **Orpheus Haze 2026**: Linear gradient from `hsl(181, 3.5%, 62%)` to `hsl(183, 2.5%, 92%)`

## Margins and Spacing Differences

### Body Margins
- **LinoHaze 2024**: `padding: 0; margin: 0` (reset)
- **Orpheus Haze 2026**: `margin: 0 8px` (8px horizontal margin)

### Header Spacing
- **LinoHaze 2024**: 
  - Logo margin-top: `42px`
  - Header width: `900px` (fixed)
- **Orpheus Haze 2026**:
  - Logo padding: `24px 8px 16px`
  - Max-width: `1020px` (responsive)

### Content Layout
- **LinoHaze 2024**: Fixed `900px` width layout
- **Orpheus Haze 2026**: Flexbox layout with `max-width: 1020px`

### Padding Differences
- **LinoHaze 2024**: 
  - Input padding: `2px 3px`
  - Textarea padding: `2px 3px`
- **Orpheus Haze 2026**:
  - Input padding: `0 8px`
  - Textarea padding: `0 8px` + `padding-top: 6px`
  - General padding class: `12px`

### List Margins
- **LinoHaze 2024**: `margin: 5px 15px` for li elements
- **Orpheus Haze 2026**: `margin: 12px` for ol/ul, `padding-left: 16px`

### Table Cell Padding
- **LinoHaze 2024**: Not specified in visible portion
- **Orpheus Haze 2026**: 
  - `padding: 4px 6px`
  - First child: `padding-left: 12px`
  - Last child: `padding-right: 12px`

## Structural Differences

### Layout System
- **LinoHaze 2024**: Traditional fixed-width layout
- **Orpheus Haze 2026**: Modern flexbox-based responsive layout

### Font System
- **LinoHaze 2024**: Google Fonts import for Source Sans Pro
- **Orpheus Haze 2026**: CSS custom properties with system font stack

### Responsive Design
- **LinoHaze 2024**: No visible mobile responsiveness
- **Orpheus Haze 2026**: Extensive mobile-first responsive design with media queries

### Menu System
- **LinoHaze 2024**: Traditional horizontal menu with gradient backgrounds
- **Orpheus Haze 2026**: Responsive menu with mobile hamburger-style dropdown

## Key Architectural Differences

1. **Color Philosophy**: LinoHaze uses high-contrast white-on-gray, while Orpheus Haze uses a more sophisticated blue-gray palette
2. **Spacing Strategy**: LinoHaze uses smaller, tighter spacing; Orpheus Haze uses more generous spacing
3. **Layout Approach**: LinoHaze is fixed-width desktop-only; Orpheus Haze is fully responsive
4. **Code Organization**: Orpheus Haze has extensive documentation and organized sections