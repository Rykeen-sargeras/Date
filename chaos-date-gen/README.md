# 💀❤️‍🔥 Chaos Date Gen v4.0

A chaotic, spicy Valentine's Day date scenario generator. Pair two unhinged characters, throw them into a ridiculous activity, and watch the chaos unfold.

![preview](https://img.shields.io/badge/status-unhinged-FF1744?style=for-the-badge) ![version](https://img.shields.io/badge/v4.0-live-CCFF00?style=for-the-badge)

## Features

- **Dynamic host loading** — drop PNGs in `hosts/`, run one script, done
- **20 absurd date activities** — from skinny dipping in hotel fountains to body shot Olympics
- **10 spicy story templates** — every combo reads differently
- **Second Date % ring** — animated SVG gauge for return odds
- **Nightcap % ring** — you know what this means 🌙
- **Vibe Check / Red Flags / Drinks Deep** — stat breakdown
- **Spice Level meter** — ranges from LUKEWARM to CALL THE FIRE DEPT
- **Screenshot export** — save your results as a PNG
- **Copy to clipboard** — share the chaos as text
- **History ticker** — scroll through past disasters

## Setup

### 1. Add your host images

Drop your character PNG files into the `hosts/` folder. **The filename becomes the character name:**

```
hosts/
├── Valentina.png
├── Blaze.png
├── Scarlett.png
├── Knox.png
└── ...
```

### 2. Generate the manifest

Run the helper script to create `hosts.json` from your PNGs:

```bash
./generate-hosts.sh
```

That's it. The app reads `hosts.json` on load and pulls avatars from `hosts/{Name}.png`.

### 3. Open it

Just open `index.html` in any browser. No build step, no dependencies.

## Deploy on GitHub Pages

1. Push this repo to GitHub
2. Go to **Settings → Pages**
3. Set source to **main branch** / root
4. Your site will be live at `https://yourusername.github.io/chaos-date-gen/`

## File Structure

```
chaos-date-gen/
├── index.html
├── hosts.json
├── generate-hosts.sh
├── hosts/
│   ├── Valentina.png
│   ├── Blaze.png
│   └── ...
├── README.md
└── LICENSE
```

## Stack

- Vanilla HTML / CSS / JS
- [Syne](https://fonts.google.com/specimen/Syne) + [Space Mono](https://fonts.google.com/specimen/Space+Mono) + [Crimson Pro](https://fonts.google.com/specimen/Crimson+Pro)
- [html2canvas](https://html2canvas.hertzen.com/) for screenshots

## License

MIT — do whatever you want with it.
