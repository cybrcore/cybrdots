# Design Philosophy

This configuration follows a cyberpunk-inspired aesthetic focused on functional clarity and visual consistency. The design language borrows from information-dense game UIs (Cyberpunk 2077, Deus Ex) but adapted for practical desktop use.  
Core goals: Merge aesthetics with function. Less is more. GUI should look like TUI.  

## Design Principles
### Typography
Philosophy: Consistency over variety. One typeface eliminates visual noise.

- Single typeface: Geist Mono Nerd Font across all applications
  - Why: Uniform appearance, predictable metrics, better readability in terminal environments, slashed zero
- Text over icons: Text labels preferred for clarity and information density
  - Exception: Nerd Font icons for status indicators and file type glyphs where space is constrained
- Hierarchies through weight and size only - no font mixing

#### For contributors:
- Never introduce additional fonts
- Icon usage requires justification (space constraints, universal recognition)
- Test readability at multiple DPI scales

## Visual Language
### Geometry
- Sharp edges only: Where possible, use beveled corner (top-left + bottom-right shadows), otherwise use sharp 90° corners
  - No rounded - maintains angular, technical aesthetic
  - Rationale: Consistent with cyberpunk UI paradigm, clearer visual boundaries

#### For contributors:
- CSS: Use `border-radius`: 0 or 1
- Avoid `border-radius` values > 1 in any theme
- Inner gaps should be 4 px, outer gaps should be 8 px

### Fluff Reduction
- Minimal UI fluff: No window titlebars, inside borders, or decorative dividers
  - Rationale: Maximize content area, reduce visual clutter
  - Titlebars = wasted vertical space in tiling WM

#### For contributors:
- When adding UI elements, ask: "Is this decoration or information?"
- Remove fluff before adding features
- UI elements should be information-dense, not decorative

## Depth & Layering
- Transparency stack: `background opacity + blur + grain noise`
  - Creates depth without shadows or borders
  - Grain texture prevents "flat glass" look and banding
- Fallback for non-transparent contexts: Cybrpaper wallpapers provide thematic consistency

#### For contributors:
- Transparency values: 0.7-0.9 range (test for readability)
- Blur size: 6px typical
- Always provide non-transparent fallback styling
- Test against both dark and bright wallpapers

## Animations
- Minimal-to-none: Quick functional transitions only (100-200ms max)
  - No bounce/spring/elastic effects - wastes time and power
  - Rationale: Faster workflow, lower resource usage, feels more responsive

#### For contributors:
- Animations should communicate state changes, not "delight"
- Prefer instant feedback over animated transitions
- If animation is necessary: linear or ease-out easing, <200ms duration
- Disable animations in power-saving mode

## Interface Approach
### Terminal Inspired Design
- TUI/CLI prioritized over GUI alternatives where practical
  - Rationale: Faster, lighter, more scriptable, fits tiling WM paradigm, more customizable
  - GUI apps used only where TUI is impractical (browsers, image editing)

#### For contributors:
- Evaluate if a GUI app has a viable TUI alternative before theming
- Terminal tools should integrate with existing keybind philosophy
- Document terminal commands for all configuration steps

### Information Density
- Content over decoration
  - Status bars: Show metrics, not empty space
  - Launchers: Fast search, minimal fluff
  - Terminals: Maximum text viewport

#### For contributors:
- UI should display actionable data
- Avoid "spacer" elements unless required for alignment
- Padding: Functional (clickability, readability) not decorative

### Tiling Paradigm
- Keyboard-driven workflow - mouse usage should be optional, not needed
  - All core functions accessible via keybinds
  - Window management via keyboard (focus, move, resize)

#### For contributors:
- New features must have keyboard shortcuts
- Mouse interactions are convenience, not requirement
- Document keybinds in component readmes

### Conventions
#### File Naming
- Theme names replace first syllable of the themed program with `CYBR`, followed by the rest of the name
- kebab-case throughout (config-file.conf, not ConfigFile.conf or config_file.conf)
  - Rationale: Consistent, URL-safe, readable in terminals

#### For contributors:
- All new files: kebab-case
- No spaces, underscores, or camelCase in filenames
- Abbreviations: lowercase (cfg not CFG)

#### Date/Time Format
- ISO 8601: YYYY-MM-DD HH:mm:ss
  - Rationale: Sortable, unambiguous, language-neutral
  - Example: 2025-12-31 23:59:59

#### For contributors:
- Logs, timestamps, version tags: Always ISO 8601
  - No localized formats (MM/DD/YYYY, DD.MM.YYYY)
  - 24-hour time only

### Color System
Philosophy: Colors communicate meaning, not just aesthetics.
The palette draws from cyberpunk media (Blade Runner, Ghost in the Shell, Cyberpunk 2077):
- High contrast: Dark backgrounds + bright accents for readability
- Neon accents: Red, cyan, magenta, yellow for focus and status

Color palette defined in: Cybrcolors

#### For contributors:
- Use color names ($re0, $ye0) not hex values directly
- New components must use existing palette tokens
- Propose new colors only if existing palette insufficient
- Test contrast ratios (WCAG AA minimum: 4.5:1 for text)
- Verify colors work in both light/dark wallpaper contexts

##### Color usage examples:
```css
/* Good */
.error { color: $re0; }
.focused { border-color: $ye0; }

/* Bad - hardcoded */
.error { color: #ff0000; }
.focused { border-color: #00ffff; }
```

## Contributing Guidelines
When adding or modifying components, ensure:
### Visual Consistency
- Sharp edges - no rounded corners (border-radius: 0)
- Geist Mono - no additional fonts
- Transparency where supported (0.7-0.9 opacity + blur + grain)
- Minimal fluff - remove titlebars, excess borders
- Semantic colors - use Cybrcolors palette tokens

### Functional Requirements
- Keyboard accessibility - all features via keybinds
- Fast animations - <200ms, linear/ease-out only
- Information density - content over decoration
- Terminal-first - prefer TUI/CLI tools

### Code Standards
- kebab-case - all filenames
- ISO 8601 - all timestamps
- Documented - configs should have inline comments explaining non-obvious choices

### Testing Checklist
- [] Works with transparency enabled/disabled
- [] Readable against dark and light wallpapers
- [] All keybinds documented
- [] No font regressions (Geist Mono only)
- [] Colors use semantic tokens from Cybrcolors
- [] Animations ≤200ms or disabled
- [] Sharp corners maintained (no border-radius)