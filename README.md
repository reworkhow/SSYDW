# 山山医动物 Pet Care at Your Home

A modern, responsive bilingual (Chinese/English) website for Dr. Shen Li's veterinary house call service in Sacramento.

## 🐾 About

山山医动物 (SSYDW) provides professional veterinary care at your doorstep. Dr. Shen Li brings over 10 years of veterinary experience directly to your home, offering:

- **上门看诊 (House Calls)** - Comprehensive in-home veterinary care
- **线上问诊 (Telemedicine)** - Remote consultations and second opinions

## ✨ Website Features

- 📱 Fully responsive design (mobile, tablet, desktop)
- 🌏 Bilingual content (Chinese & English)
- 🖼️ Professional images from Notion export
- 🎨 Modern, clean pet care themed design
- ⚡ Fast loading with optimized images
- 🔍 Smooth scrolling navigation
- 💻 SEO friendly

## 🚀 Quick Start

### Local Preview

```bash
./preview.sh
```

The website will open in your browser at `http://localhost:8000`

### Deploy to GitHub Pages

```bash
./setup.sh
```

Or manually:
```bash
git add .
git commit -m "Add SSYDW pet care website"
git push
```

Then enable GitHub Pages in repository Settings > Pages.

## 📁 Project Structure

```
SSYDW/
│
├── index.html              # Main page
├── style.css               # Stylesheets
├── script.js               # JavaScript
│
├── images/                 # All website images
│   ├── logo.png           # SSYDW logo
│   ├── cover.png          # Cover image
│   ├── hero.png           # Hero section image
│   ├── service-home.png   # House call service
│   ├── service-online.png # Online consultation
│   ├── idexx.png          # IDEXX logo
│   ├── vgl.png            # VGL logo
│   └── texas-am.png       # Texas A&M logo
│
├── setup.sh               # Auto-deployment script
├── preview.sh             # Local preview script
│
├── README.md              # Project documentation
├── QUICKSTART.md          # Quick start guide
├── DEPLOYMENT.md          # Detailed deployment guide
└── .gitignore            # Git ignore file
```

## 🎨 Website Sections

1. **Navigation** - Sticky header with logo and bilingual menu
2. **Cover Image** - Beautiful pet care cover photo
3. **Hero Section** - Introduction to Dr. Shen Li's services
4. **About Me** - Dr. Shen Li's background and experience
5. **Services** - House calls and telemedicine details
6. **Team** - Information about the veterinary team
7. **Collaborators** - Partner laboratories (IDEXX, VGL, Texas A&M)
8. **Contact** - Phone, WeChat, Xiaohongshu, Weibo
9. **Footer** - Quick links and contact information

## 📞 Contact Information

- **电话 Tel**: +1234567890
- **微信 WeChat**: SSYDW
- **小红书 Xiaohongshu**: SSYDW
- **微博 Weibo**: SSYDW

## 🌐 Deployment

Your website will be available at:
```
https://YOUR-USERNAME.github.io/SSYDW/
```

For custom domain setup (e.g., `www.ssydw.com`), see [DEPLOYMENT.md](DEPLOYMENT.md).

## 🎯 Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 📝 Customization

### Update Contact Information

Edit the contact section in `index.html` (lines 180-200) to update phone numbers and social media handles.

### Change Colors

Edit CSS variables in `style.css`:

```css
:root {
    --primary-color: #8B7355;
    --secondary-color: #6B5744;
    --accent-color: #FF8C42;
}
```

### Replace Images

Simply replace files in the `images/` folder with your own (keep the same filenames).

## 🙏 Credits

- Original content from Notion export
- Design: Custom pet care themed design
- Images: Provided by Dr. Shen Li Veterinary Service

## 📄 License

© 2025 山山医动物 Pet Care at Your Home. All rights reserved.

---

Made with ❤️ for pets and their families
