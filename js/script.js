// Smooth scroll for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    e.preventDefault();
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      target.scrollIntoView({
        behavior: 'smooth',
        block: 'start'
      });
    }
  });
});

// Intersection Observer for scroll animations
const observerOptions = {
  threshold: 0.1,
  rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      const delay = entry.target.dataset.delay || 0;
      setTimeout(() => {
        entry.target.classList.add('visible');
      }, delay);
      observer.unobserve(entry.target);
    }
  });
}, observerOptions);

// Observe all animated elements
document.querySelectorAll('.animate-on-scroll').forEach(el => {
  observer.observe(el);
});

// Observe service cards
document.querySelectorAll('.service-card').forEach(el => {
  observer.observe(el);
});

// Observe case cards
document.querySelectorAll('.case-card').forEach(el => {
  observer.observe(el);
});

// Observe timeline items
document.querySelectorAll('.timeline-item').forEach(el => {
  observer.observe(el);
});

// Observe timeline footer
const timelineFooter = document.querySelector('.timeline-footer');
if (timelineFooter) {
  observer.observe(timelineFooter);
}

// Stats counter animation
function animateCounter(element, target) {
  let current = 0;
  const increment = target / 60;
  const duration = 1500;
  const stepTime = duration / 60;

  const timer = setInterval(() => {
    current += increment;
    if (current >= target) {
      element.textContent = target + '+';
      clearInterval(timer);
    } else {
      element.textContent = Math.floor(current) + '+';
    }
  }, stepTime);
}

// Observe stats for counter animation
const statsObserver = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      const statNumber = entry.target.querySelector('.stat-number');
      const target = parseInt(statNumber.dataset.target);
      if (target) {
        animateCounter(statNumber, target);
      }
      statsObserver.unobserve(entry.target);
    }
  });
}, { threshold: 0.5 });

document.querySelectorAll('.stat-item').forEach(el => {
  statsObserver.observe(el);
});

// Testimonials Carousel
let currentSlide = 0;
const slides = document.querySelectorAll('.testimonial-slide');
const dots = document.querySelectorAll('.dot');

function showSlide(index) {
  slides.forEach(slide => slide.classList.remove('active'));
  dots.forEach(dot => dot.classList.remove('active'));

  slides[index].classList.add('active');
  dots[index].classList.add('active');
}

function nextSlide() {
  currentSlide = (currentSlide + 1) % slides.length;
  showSlide(currentSlide);
}

// Auto-advance carousel
let carouselInterval = setInterval(nextSlide, 6000);

// Manual navigation
dots.forEach((dot, index) => {
  dot.addEventListener('click', () => {
    currentSlide = index;
    showSlide(currentSlide);
    clearInterval(carouselInterval);
    carouselInterval = setInterval(nextSlide, 6000);
  });
});

// Scroll to top button
const scrollToTopBtn = document.getElementById('scrollToTop');

window.addEventListener('scroll', () => {
  if (window.pageYOffset > window.innerHeight / 2) {
    scrollToTopBtn.classList.add('visible');
  } else {
    scrollToTopBtn.classList.remove('visible');
  }
});

scrollToTopBtn.addEventListener('click', () => {
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
});

// Form handling
const contactForm = document.querySelector('.contact-form');
if (contactForm) {
  contactForm.addEventListener('submit', async (e) => {
    e.preventDefault();

    const submitBtn = contactForm.querySelector('button[type="submit"]');
    const originalText = submitBtn.textContent;

    // Show loading state
    submitBtn.textContent = 'Отправка...';
    submitBtn.disabled = true;

    try {
      const formData = new FormData(contactForm);
      const response = await fetch(contactForm.action, {
        method: 'POST',
        body: formData,
        headers: {
          'Accept': 'application/json'
        }
      });

      if (response.ok) {
        submitBtn.textContent = '✓ Отправлено';
        contactForm.reset();
        setTimeout(() => {
          submitBtn.textContent = originalText;
          submitBtn.disabled = false;
        }, 3000);
      } else {
        throw new Error('Network response was not ok');
      }
    } catch (error) {
      submitBtn.textContent = '✗ Ошибка';
      setTimeout(() => {
        submitBtn.textContent = originalText;
        submitBtn.disabled = false;
      }, 3000);
    }
  });
}

// Process steps horizontal scroll snap
const processSteps = document.querySelector('.process-steps');
if (processSteps) {
  processSteps.style.scrollSnapType = 'x mandatory';
  document.querySelectorAll('.process-step').forEach(step => {
    step.style.scrollSnapAlign = 'center';
  });
}

// Hero image parallax effect
const heroImage = document.querySelector('.hero-image');
if (heroImage) {
  window.addEventListener('scroll', () => {
    const scrolled = window.pageYOffset;
    const rate = scrolled * 0.3;
    heroImage.style.transform = `translateY(${rate}px)`;
  });
}

// Initialize animations on page load
window.addEventListener('load', () => {
  // Trigger hero animations
  setTimeout(() => {
    document.querySelector('.hero-title')?.classList.add('visible');
  }, 100);

  setTimeout(() => {
    document.querySelector('.hero-subtitle')?.classList.add('visible');
  }, 300);

  setTimeout(() => {
    document.querySelector('.hero-image')?.classList.add('visible');
  }, 400);

  setTimeout(() => {
    document.querySelectorAll('.hero .cta-button, .scroll-indicator').forEach(el => {
      el.classList.add('visible');
    });
  }, 600);
});