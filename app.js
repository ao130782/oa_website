// Global state management (using memory instead of localStorage due to sandbox restrictions)
const AppState = {
  isNavOpen: false,
  isLoading: false,
  formSubmissions: [],
  scrollPosition: 0
};

// DOM Elements
const elements = {
  nav: null,
  navToggle: null,
  navMenu: null,
  typewriter: null,
  contactForm: null,
  animatedElements: []
};

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', function() {
  initializeElements();
  initializeNavigation();
  initializeTypewriter();
  initializeScrollAnimations();
  initializeContactForm();
  initializeSmoothScrolling();
  initializeParallaxEffects();
});

// Initialize DOM elements
function initializeElements() {
  elements.nav = document.getElementById('nav');
  elements.navToggle = document.getElementById('nav-toggle');
  elements.navMenu = document.querySelector('.nav__menu');
  elements.typewriter = document.getElementById('typewriter');
  elements.contactForm = document.getElementById('contact-form');
  elements.animatedElements = document.querySelectorAll('.service-card, .stat-card, .process-step, .industry-card');
}

// Navigation functionality
function initializeNavigation() {
  // Handle scroll behavior for navigation
  window.addEventListener('scroll', handleNavScroll);
  
  // Mobile navigation toggle
  if (elements.navToggle) {
    elements.navToggle.addEventListener('click', toggleMobileNav);
  }
  
  // Close mobile nav when clicking nav links
  const navLinks = document.querySelectorAll('.nav__link');
  navLinks.forEach(link => {
    link.addEventListener('click', closeMobileNav);
  });
}

function handleNavScroll() {
  const scrollY = window.scrollY;
  AppState.scrollPosition = scrollY;
  
  if (elements.nav) {
    if (scrollY > 100) {
      elements.nav.classList.add('scrolled');
    } else {
      elements.nav.classList.remove('scrolled');
    }
  }
}

function toggleMobileNav() {
  AppState.isNavOpen = !AppState.isNavOpen;
  
  if (elements.navToggle && elements.navMenu) {
    elements.navToggle.classList.toggle('active');
    elements.navMenu.classList.toggle('active');
  }
}

function closeMobileNav() {
  AppState.isNavOpen = false;
  
  if (elements.navToggle && elements.navMenu) {
    elements.navToggle.classList.remove('active');
    elements.navMenu.classList.remove('active');
  }
}

// Typewriter effect
function initializeTypewriter() {
  if (!elements.typewriter) return;
  
  const text = "Превращаю бизнес-идеи в четкие финансовые прогнозы для успешного привлечения инвестиций";
  const speed = 50; // milliseconds per character
  let index = 0;
  
  // Clear the text first
  elements.typewriter.textContent = '';
  
  function typeCharacter() {
    if (index < text.length) {
      elements.typewriter.textContent += text.charAt(index);
      index++;
      setTimeout(typeCharacter, speed);
    }
  }
  
  // Start typing after a short delay
  setTimeout(typeCharacter, 1000);
}

// Scroll animations
function initializeScrollAnimations() {
  const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
  };
  
  const observer = new IntersectionObserver(handleIntersection, observerOptions);
  
  // Observe animated elements
  elements.animatedElements.forEach(element => {
    element.classList.add('animate-on-scroll');
    observer.observe(element);
  });
  
  // Observe sections for additional effects
  const sections = document.querySelectorAll('section');
  sections.forEach(section => {
    observer.observe(section);
  });
}

function handleIntersection(entries) {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('animated');
      
      // Add special effects for specific elements
      if (entry.target.classList.contains('process-step')) {
        animateProcessStep(entry.target);
      }
      
      if (entry.target.classList.contains('stat-card')) {
        animateCounter(entry.target);
      }
    }
  });
}

function animateProcessStep(element) {
  const number = element.querySelector('.process-step__number');
  if (number) {
    setTimeout(() => {
      number.style.transform = 'scale(1.1)';
      setTimeout(() => {
        number.style.transform = 'scale(1)';
      }, 200);
    }, 300);
  }
}

function animateCounter(element) {
  const numberElement = element.querySelector('.stat-card__number');
  if (!numberElement || numberElement.dataset.animated) return;
  
  const finalNumber = numberElement.textContent;
  const isNumber = /^\d+/.test(finalNumber);
  
  if (isNumber) {
    const number = parseInt(finalNumber.match(/\d+/)[0]);
    const duration = 2000;
    const steps = 60;
    const stepValue = number / steps;
    const stepDuration = duration / steps;
    
    let current = 0;
    numberElement.textContent = '0' + finalNumber.replace(/^\d+/, '');
    
    const counter = setInterval(() => {
      current += stepValue;
      if (current >= number) {
        numberElement.textContent = finalNumber;
        clearInterval(counter);
      } else {
        numberElement.textContent = Math.floor(current) + finalNumber.replace(/^\d+/, '');
      }
    }, stepDuration);
    
    numberElement.dataset.animated = 'true';
  }
}

// Contact form handling
function initializeContactForm() {
  if (!elements.contactForm) return;
  
  elements.contactForm.addEventListener('submit', handleFormSubmission);
  
  // Add input validation
  const inputs = elements.contactForm.querySelectorAll('.form-control');
  inputs.forEach(input => {
    input.addEventListener('blur', validateInput);
    input.addEventListener('input', clearValidationError);
  });
}

function handleFormSubmission(event) {
  event.preventDefault();
  
  if (AppState.isLoading) return;
  
  const formData = new FormData(elements.contactForm);
  const submission = {
    name: formData.get('name'),
    email: formData.get('email'),
    projectType: formData.get('project-type'),
    budget: formData.get('budget'),
    message: formData.get('message'),
    timestamp: new Date().toISOString()
  };
  
  // Validate form
  if (!validateForm(submission)) {
    showNotification('Пожалуйста, заполните обязательные поля', 'error');
    return;
  }
  
  // Simulate form submission
  submitForm(submission);
}

function validateForm(data) {
  const errors = [];
  
  if (!data.name || data.name.trim().length < 2) {
    errors.push('name');
  }
  
  if (!data.email || !isValidEmail(data.email)) {
    errors.push('email');
  }
  
  // Highlight errors
  errors.forEach(field => {
    const input = elements.contactForm.querySelector(`[name="${field}"]`);
    if (input) {
      input.classList.add('error');
      input.style.borderColor = '#ef4444';
    }
  });
  
  return errors.length === 0;
}

function validateInput(event) {
  const input = event.target;
  const value = input.value.trim();
  
  let isValid = true;
  
  if (input.required && !value) {
    isValid = false;
  }
  
  if (input.type === 'email' && value && !isValidEmail(value)) {
    isValid = false;
  }
  
  if (!isValid) {
    input.style.borderColor = '#ef4444';
    input.classList.add('error');
  } else {
    input.style.borderColor = '#e2e8f0';
    input.classList.remove('error');
  }
}

function clearValidationError(event) {
  const input = event.target;
  if (input.classList.contains('error') && input.value.trim()) {
    input.style.borderColor = '#e2e8f0';
    input.classList.remove('error');
  }
}

function isValidEmail(email) {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
}

function submitForm(data) {
  AppState.isLoading = true;
  
  // Show loading state
  const submitButton = elements.contactForm.querySelector('button[type="submit"]');
  const originalText = submitButton.textContent;
  submitButton.textContent = 'Отправляем...';
  submitButton.disabled = true;
  
  // Simulate API call
  setTimeout(() => {
    // Store submission in memory
    AppState.formSubmissions.push(data);
    
    // Reset form
    elements.contactForm.reset();
    
    // Restore button
    submitButton.textContent = originalText;
    submitButton.disabled = false;
    AppState.isLoading = false;
    
    // Show success message
    showNotification('Спасибо! Ваша заявка отправлена. Свяжусь с вами в ближайшее время.', 'success');
    
    // Track successful submission
    console.log('Form submitted successfully:', data);
  }, 2000);
}

// Smooth scrolling for anchor links
function initializeSmoothScrolling() {
  const links = document.querySelectorAll('a[href^="#"]');
  
  links.forEach(link => {
    link.addEventListener('click', handleSmoothScroll);
  });
}

function handleSmoothScroll(event) {
  event.preventDefault();
  
  const targetId = event.target.getAttribute('href');
  const targetElement = document.querySelector(targetId);
  
  if (targetElement) {
    const offsetTop = targetElement.offsetTop - 80; // Account for fixed nav
    
    window.scrollTo({
      top: offsetTop,
      behavior: 'smooth'
    });
    
    // Close mobile nav if open
    closeMobileNav();
  }
}

// Parallax effects
function initializeParallaxEffects() {
  const parallaxElements = document.querySelectorAll('.hero__visual, .hero__photo-placeholder');
  
  window.addEventListener('scroll', () => {
    const scrolled = window.pageYOffset;
    const rate = scrolled * -0.3;
    
    parallaxElements.forEach(element => {
      if (scrolled < window.innerHeight) {
        element.style.transform = `translateY(${rate}px)`;
      }
    });
  });
}

// Notification system
function showNotification(message, type = 'info') {
  // Create notification element
  const notification = document.createElement('div');
  notification.className = `notification notification--${type}`;
  notification.innerHTML = `
    <div class="notification__content">
      <span class="notification__message">${message}</span>
      <button class="notification__close">&times;</button>
    </div>
  `;
  
  // Add styles
  Object.assign(notification.style, {
    position: 'fixed',
    top: '20px',
    right: '20px',
    zIndex: '9999',
    padding: '16px 24px',
    borderRadius: '8px',
    color: 'white',
    fontSize: '14px',
    fontWeight: '500',
    maxWidth: '400px',
    boxShadow: '0 10px 15px -3px rgba(0, 0, 0, 0.1)',
    transform: 'translateX(100%)',
    transition: 'transform 0.3s ease',
    backgroundColor: type === 'error' ? '#ef4444' : type === 'success' ? '#0891b2' : '#64748b'
  });
  
  // Add to DOM
  document.body.appendChild(notification);
  
  // Animate in
  setTimeout(() => {
    notification.style.transform = 'translateX(0)';
  }, 100);
  
  // Close button functionality
  const closeButton = notification.querySelector('.notification__close');
  closeButton.addEventListener('click', () => {
    removeNotification(notification);
  });
  
  // Auto remove after 5 seconds
  setTimeout(() => {
    removeNotification(notification);
  }, 5000);
}

function removeNotification(notification) {
  if (notification && notification.parentNode) {
    notification.style.transform = 'translateX(100%)';
    setTimeout(() => {
      if (notification.parentNode) {
        notification.parentNode.removeChild(notification);
      }
    }, 300);
  }
}

// Utility functions
function debounce(func, wait) {
  let timeout;
  return function executedFunction(...args) {
    const later = () => {
      clearTimeout(timeout);
      func(...args);
    };
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
  };
}

function throttle(func, limit) {
  let inThrottle;
  return function() {
    const args = arguments;
    const context = this;
    if (!inThrottle) {
      func.apply(context, args);
      inThrottle = true;
      setTimeout(() => inThrottle = false, limit);
    }
  }
}

// Performance optimizations
const debouncedHandleScroll = debounce(handleNavScroll, 10);
window.addEventListener('scroll', debouncedHandleScroll);

// Preload critical images
function preloadImages() {
  const imageUrls = [
    // Add any future image URLs here when available
  ];
  
  imageUrls.forEach(url => {
    const img = new Image();
    img.src = url;
  });
}

// Initialize image preloading
preloadImages();

// Error handling
window.addEventListener('error', function(event) {
  console.error('JavaScript error:', event.error);
  // Could implement error reporting here
});

// Handle resize events
window.addEventListener('resize', debounce(() => {
  // Close mobile nav on resize to larger screen
  if (window.innerWidth > 768 && AppState.isNavOpen) {
    closeMobileNav();
  }
}, 250));

// Export functions for potential external use
window.AppFunctions = {
  showNotification,
  toggleMobileNav,
  validateEmail: isValidEmail,
  getAppState: () => ({ ...AppState })
};

// Console message for developers
console.log('🦈 Олег Анфиногенов - Финансовый архитектор будущего');
console.log('Website loaded successfully. Contact: ao130782@gmail.com');