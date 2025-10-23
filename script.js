// Language Switching Function
function switchLanguage(lang) {
    // Update active tab
    document.querySelectorAll('.lang-tab').forEach(tab => {
        tab.classList.remove('active');
        if (tab.getAttribute('data-lang') === lang) {
            tab.classList.add('active');
        }
    });

    // Show/hide content based on language
    if (lang === 'bilingual') {
        // Show both languages
        document.querySelectorAll('.en').forEach(el => el.style.display = '');
        document.querySelectorAll('.cn').forEach(el => el.style.display = '');
    } else if (lang === 'english') {
        // Show only English
        document.querySelectorAll('.en').forEach(el => el.style.display = '');
        document.querySelectorAll('.cn').forEach(el => el.style.display = 'none');
    } else if (lang === 'chinese') {
        // Show only Chinese
        document.querySelectorAll('.en').forEach(el => el.style.display = 'none');
        document.querySelectorAll('.cn').forEach(el => el.style.display = '');
    }

    // Save preference to localStorage
    localStorage.setItem('preferredLanguage', lang);
}

// Load saved language preference on page load
window.addEventListener('DOMContentLoaded', () => {
    const savedLang = localStorage.getItem('preferredLanguage') || 'bilingual';
    switchLanguage(savedLang);
});

// Mobile Menu Toggle
function toggleMobileMenu() {
    const navMenu = document.querySelector('.nav-menu');
    const toggle = document.querySelector('.mobile-menu-toggle');
    
    navMenu.classList.toggle('active');
    toggle.classList.toggle('active');
}

// Close mobile menu when clicking on a link
document.querySelectorAll('.nav-menu a').forEach(link => {
    link.addEventListener('click', () => {
        const navMenu = document.querySelector('.nav-menu');
        const toggle = document.querySelector('.mobile-menu-toggle');
        
        if (navMenu.classList.contains('active')) {
            navMenu.classList.remove('active');
            toggle.classList.remove('active');
        }
    });
});

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        
        if (target) {
            const navbarHeight = document.querySelector('.navbar').offsetHeight;
            const targetPosition = target.getBoundingClientRect().top + window.pageYOffset - navbarHeight;
            
            window.scrollTo({
                top: targetPosition,
                behavior: 'smooth'
            });
        }
    });
});

// Navbar scroll effect
let lastScroll = 0;
const navbar = document.querySelector('.navbar');

window.addEventListener('scroll', () => {
    const currentScroll = window.pageYOffset;
    
    if (currentScroll <= 0) {
        navbar.style.boxShadow = '0 2px 8px rgba(0, 0, 0, 0.1)';
    } else {
        navbar.style.boxShadow = '0 10px 30px rgba(0, 0, 0, 0.15)';
    }
    
    lastScroll = currentScroll;
});

// Intersection Observer for fade-in animations
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

// Observe service cards and collaborator cards
document.querySelectorAll('.service-card, .collaborator-card').forEach(card => {
    card.style.opacity = '0';
    card.style.transform = 'translateY(30px)';
    card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    observer.observe(card);
});

// Image lazy loading error handling
document.querySelectorAll('img').forEach(img => {
    img.addEventListener('error', function() {
        console.warn('Failed to load image:', this.src);
        this.style.display = 'none';
    });
});

// Add loading class removal
window.addEventListener('load', () => {
    document.body.classList.add('loaded');
});

// Close mobile menu when clicking outside
document.addEventListener('click', (e) => {
    const navMenu = document.querySelector('.nav-menu');
    const toggle = document.querySelector('.mobile-menu-toggle');
    const navbar = document.querySelector('.navbar');
    
    if (navMenu.classList.contains('active') && 
        !navbar.contains(e.target)) {
        navMenu.classList.remove('active');
        toggle.classList.remove('active');
    }
});

