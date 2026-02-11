#!/usr/bin/env python3
"""
Create service-home-en.png by using service-online-en.png as template.
Copy the template and replace only the title and bullet point text.
Checkmarks and button stay exactly as in the template.
"""
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

SCRIPT_DIR = Path(__file__).resolve().parent
IMAGES_DIR = SCRIPT_DIR.parent / "images"
TEMPLATE = IMAGES_DIR / "service-online-en.png"
OUTPUT = IMAGES_DIR / "service-home-en.png"

# House call content - replace template text
TITLE_LINES = ["Pet Doctor", "House", "Calls"]
BULLETS = [
    "Provide blood tests, urine tests, fecal tests, ultrasound",
    "Chronic disease treatment: enteritis, arthritis",
    "Collaborate with multiple referral centers for appropriate referrals",
]

# Colors to match template
BG_COLOR = (248, 244, 237)
TITLE_COLOR = (46, 102, 75)
BULLET_COLOR = (51, 51, 51)


def main():
    img = Image.open(TEMPLATE).copy()
    img = img.convert("RGBA")
    draw = ImageDraw.Draw(img)

    try:
        title_font = ImageFont.truetype("/System/Library/Fonts/Helvetica.ttc", 38)
        bullet_font = ImageFont.truetype("/System/Library/Fonts/Helvetica.ttc", 18)
    except OSError:
        try:
            title_font = ImageFont.truetype("/System/Library/Fonts/Supplemental/Arial.ttf", 38)
            bullet_font = ImageFont.truetype("/System/Library/Fonts/Supplemental/Arial.ttf", 18)
        except OSError:
            title_font = ImageFont.load_default()
            bullet_font = ImageFont.load_default()

    # Cover entire text area - title + all bullets (preserve checkmarks at 45-65px, button at bottom)
    draw.rectangle([(35, 35), (540, 420)], fill=BG_COLOR)

    # Draw new title
    y = 45
    for line in TITLE_LINES:
        draw.text((45, y), line, font=title_font, fill=TITLE_COLOR)
        y += 40

    # Re-draw checkmarks and bullet text
    try:
        bullet_font_small = ImageFont.truetype("/System/Library/Fonts/Helvetica.ttc", 16)
    except OSError:
        bullet_font_small = bullet_font

    bullet_y = 175
    for i, bullet in enumerate(BULLETS):
        draw.ellipse([(45, bullet_y), (62, bullet_y + 17)], fill=(76, 175, 80), outline=(46, 102, 75))
        draw.line([(49, bullet_y + 8), (52, bullet_y + 12)], fill="white", width=2)
        draw.line([(52, bullet_y + 12), (58, bullet_y + 4)], fill="white", width=2)
        f = bullet_font_small if i == 2 else bullet_font
        draw.text((70, bullet_y + 2), bullet, font=f, fill=BULLET_COLOR)
        bullet_y += 52

    img.convert("RGB").save(OUTPUT, "PNG")
    print(f"Created {OUTPUT}")


if __name__ == "__main__":
    main()
