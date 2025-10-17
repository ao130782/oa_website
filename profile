:root {
  /* Primitive Color Tokens */
  --color-white: rgba(255, 255, 255, 1);
  --color-black: rgba(0, 0, 0, 1);
  --color-cream-50: rgba(252, 252, 249, 1);
  --color-cream-100: rgba(255, 255, 253, 1);
  --color-gray-200: rgba(245, 245, 245, 1);
  --color-gray-300: rgba(167, 169, 169, 1);
  --color-gray-400: rgba(119, 124, 124, 1);
  --color-slate-500: rgba(98, 108, 113, 1);
  --color-brown-600: rgba(94, 82, 64, 1);
  --color-charcoal-700: rgba(31, 33, 33, 1);
  --color-charcoal-800: rgba(38, 40, 40, 1);
  --color-slate-900: rgba(19, 52, 59, 1);
  --color-teal-300: rgba(50, 184, 198, 1);
  --color-teal-400: rgba(45, 166, 178, 1);
  --color-teal-500: rgba(33, 128, 141, 1);
  --color-teal-600: rgba(29, 116, 128, 1);
  --color-teal-700: rgba(26, 104, 115, 1);
  --color-teal-800: rgba(41, 150, 161, 1);
  --color-red-400: rgba(255, 84, 89, 1);
  --color-red-500: rgba(192, 21, 47, 1);
  --color-orange-400: rgba(230, 129, 97, 1);
  --color-orange-500: rgba(168, 75, 47, 1);

  /* RGB versions for opacity control */
  --color-brown-600-rgb: 94, 82, 64;
  --color-teal-500-rgb: 33, 128, 141;
  --color-slate-900-rgb: 19, 52, 59;
  --color-slate-500-rgb: 98, 108, 113;
  --color-red-500-rgb: 192, 21, 47;
  --color-red-400-rgb: 255, 84, 89;
  --color-orange-500-rgb: 168, 75, 47;
  --color-orange-400-rgb: 230, 129, 97;

  /* Background color tokens (Light Mode) */
  --color-bg-1: rgba(59, 130, 246, 0.08); /* Light blue */
  --color-bg-2: rgba(245, 158, 11, 0.08); /* Light yellow */
  --color-bg-3: rgba(34, 197, 94, 0.08); /* Light green */
  --color-bg-4: rgba(239, 68, 68, 0.08); /* Light red */
  --color-bg-5: rgba(147, 51, 234, 0.08); /* Light purple */
  --color-bg-6: rgba(249, 115, 22, 0.08); /* Light orange */
  --color-bg-7: rgba(236, 72, 153, 0.08); /* Light pink */
  --color-bg-8: rgba(6, 182, 212, 0.08); /* Light cyan */

  /* Semantic Color Tokens (Light Mode) */
  --color-background: var(--color-cream-50);
  --color-surface: var(--color-cream-100);
  --color-text: var(--color-slate-900);
  --color-text-secondary: var(--color-slate-500);
  --color-primary: var(--color-teal-500);
  --color-primary-hover: var(--color-teal-600);
  --color-primary-active: var(--color-teal-700);
  --color-secondary: rgba(var(--color-brown-600-rgb), 0.12);
  --color-secondary-hover: rgba(var(--color-brown-600-rgb), 0.2);
  --color-secondary-active: rgba(var(--color-brown-600-rgb), 0.25);
  --color-border: rgba(var(--color-brown-600-rgb), 0.2);
  --color-btn-primary-text: var(--color-cream-50);
  --color-card-border: rgba(var(--color-brown-600-rgb), 0.12);
  --color-card-border-inner: rgba(var(--color-brown-600-rgb), 0.12);
  --color-error: var(--color-red-500);
  --color-success: var(--color-teal-500);
  --color-warning: var(--color-orange-500);
  --color-info: var(--color-slate-500);
  --color-focus-ring: rgba(var(--color-teal-500-rgb), 0.4);
  --color-select-caret: rgba(var(--color-slate-900-rgb), 0.8);

  /* Common style patterns */
  --focus-ring: 0 0 0 3px var(--color-focus-ring);
  --focus-outline: 2px solid var(--color-primary);
  --status-bg-opacity: 0.15;
  --status-border-opacity: 0.25;
  --select-caret-light: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23134252' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
  --select-caret-dark: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23f5f5f5' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");

  /* RGB versions for opacity control */
  --color-success-rgb: 33, 128, 141;
  --color-error-rgb: 192, 21, 47;
  --color-warning-rgb: 168, 75, 47;
  --color-info-rgb: 98, 108, 113;

  /* Typography */
  --font-family-base: "FKGroteskNeue", "Geist", "Inter", -apple-system,
    BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  --font-family-mono: "Berkeley Mono", ui-monospace, SFMono-Regular, Menlo,
    Monaco, Consolas, monospace;
  --font-size-xs: 11px;
  --font-size-sm: 12px;
  --font-size-base: 14px;
  --font-size-md: 14px;
  --font-size-lg: 16px;
  --font-size-xl: 18px;
  --font-size-2xl: 20px;
  --font-size-3xl: 24px;
  --font-size-4xl: 30px;
  --font-weight-normal: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 550;
  --font-weight-bold: 600;
  --line-height-tight: 1.2;
  --line-height-normal: 1.5;
  --letter-spacing-tight: -0.01em;

  /* Spacing */
  --space-0: 0;
  --space-1: 1px;
  --space-2: 2px;
  --space-4: 4px;
  --space-6: 6px;
  --space-8: 8px;
  --space-10: 10px;
  --space-12: 12px;
  --space-16: 16px;
  --space-20: 20px;
  --space-24: 24px;
  --space-32: 32px;

  /* Border Radius */
  --radius-sm: 6px;
  --radius-base: 8px;
  --radius-md: 10px;
  --radius-lg: 12px;
  --radius-full: 9999px;

  /* Shadows */
  --shadow-xs: 0 1px 2px rgba(0, 0, 0, 0.02);
  --shadow-sm: 0 1px 3px rgba(0, 0, 0, 0.04), 0 1px 2px rgba(0, 0, 0, 0.02);
  --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.04),
    0 2px 4px -1px rgba(0, 0, 0, 0.02);
  --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.04),
    0 4px 6px -2px rgba(0, 0, 0, 0.02);
  --shadow-inset-sm: inset 0 1px 0 rgba(255, 255, 255, 0.15),
    inset 0 -1px 0 rgba(0, 0, 0, 0.03);

  /* Animation */
  --duration-fast: 150ms;
  --duration-normal: 250ms;
  --ease-standard: cubic-bezier(0.16, 1, 0.3, 1);

  /* Layout */
  --container-sm: 640px;
  --container-md: 768px;
  --container-lg: 1024px;
  --container-xl: 1280px;
}

/* Dark mode colors */
@media (prefers-color-scheme: dark) {
  :root {
    /* RGB versions for opacity control (Dark Mode) */
    --color-gray-400-rgb: 119, 124, 124;
    --color-teal-300-rgb: 50, 184, 198;
    --color-gray-300-rgb: 167, 169, 169;
    --color-gray-200-rgb: 245, 245, 245;

    /* Background color tokens (Dark Mode) */
    --color-bg-1: rgba(29, 78, 216, 0.15); /* Dark blue */
    --color-bg-2: rgba(180, 83, 9, 0.15); /* Dark yellow */
    --color-bg-3: rgba(21, 128, 61, 0.15); /* Dark green */
    --color-bg-4: rgba(185, 28, 28, 0.15); /* Dark red */
    --color-bg-5: rgba(107, 33, 168, 0.15); /* Dark purple */
    --color-bg-6: rgba(194, 65, 12, 0.15); /* Dark orange */
    --color-bg-7: rgba(190, 24, 93, 0.15); /* Dark pink */
    --color-bg-8: rgba(8, 145, 178, 0.15); /* Dark cyan */

    /* Semantic Color Tokens (Dark Mode) */
    --color-background: var(--color-charcoal-700);
    --color-surface: var(--color-charcoal-800);
    --color-text: var(--color-gray-200);
    --color-text-secondary: rgba(var(--color-gray-300-rgb), 0.7);
    --color-primary: var(--color-teal-300);
    --color-primary-hover: var(--color-teal-400);
    --color-primary-active: var(--color-teal-800);
    --color-secondary: rgba(var(--color-gray-400-rgb), 0.15);
    --color-secondary-hover: rgba(var(--color-gray-400-rgb), 0.25);
    --color-secondary-active: rgba(var(--color-gray-400-rgb), 0.3);
    --color-border: rgba(var(--color-gray-400-rgb), 0.3);
    --color-error: var(--color-red-400);
    --color-success: var(--color-teal-300);
    --color-warning: var(--color-orange-400);
    --color-info: var(--color-gray-300);
    --color-focus-ring: rgba(var(--color-teal-300-rgb), 0.4);
    --color-btn-primary-text: var(--color-slate-900);
    --color-card-border: rgba(var(--color-gray-400-rgb), 0.2);
    --color-card-border-inner: rgba(var(--color-gray-400-rgb), 0.15);
    --shadow-inset-sm: inset 0 1px 0 rgba(255, 255, 255, 0.1),
      inset 0 -1px 0 rgba(0, 0, 0, 0.15);
    --button-border-secondary: rgba(var(--color-gray-400-rgb), 0.2);
    --color-border-secondary: rgba(var(--color-gray-400-rgb), 0.2);
    --color-select-caret: rgba(var(--color-gray-200-rgb), 0.8);

    /* Common style patterns - updated for dark mode */
    --focus-ring: 0 0 0 3px var(--color-focus-ring);
    --focus-outline: 2px solid var(--color-primary);
    --status-bg-opacity: 0.15;
    --status-border-opacity: 0.25;
    --select-caret-light: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23134252' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
    --select-caret-dark: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23f5f5f5' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");

    /* RGB versions for dark mode */
    --color-success-rgb: var(--color-teal-300-rgb);
    --color-error-rgb: var(--color-red-400-rgb);
    --color-warning-rgb: var(--color-orange-400-rgb);
    --color-info-rgb: var(--color-gray-300-rgb);
  }
}

/* Data attribute for manual theme switching */
[data-color-scheme="dark"] {
  /* RGB versions for opacity control (dark mode) */
  --color-gray-400-rgb: 119, 124, 124;
  --color-teal-300-rgb: 50, 184, 198;
  --color-gray-300-rgb: 167, 169, 169;
  --color-gray-200-rgb: 245, 245, 245;

  /* Colorful background palette - Dark Mode */
  --color-bg-1: rgba(29, 78, 216, 0.15); /* Dark blue */
  --color-bg-2: rgba(180, 83, 9, 0.15); /* Dark yellow */
  --color-bg-3: rgba(21, 128, 61, 0.15); /* Dark green */
  --color-bg-4: rgba(185, 28, 28, 0.15); /* Dark red */
  --color-bg-5: rgba(107, 33, 168, 0.15); /* Dark purple */
  --color-bg-6: rgba(194, 65, 12, 0.15); /* Dark orange */
  --color-bg-7: rgba(190, 24, 93, 0.15); /* Dark pink */
  --color-bg-8: rgba(8, 145, 178, 0.15); /* Dark cyan */

  /* Semantic Color Tokens (Dark Mode) */
  --color-background: var(--color-charcoal-700);
  --color-surface: var(--color-charcoal-800);
  --color-text: var(--color-gray-200);
  --color-text-secondary: rgba(var(--color-gray-300-rgb), 0.7);
  --color-primary: var(--color-teal-300);
  --color-primary-hover: var(--color-teal-400);
  --color-primary-active: var(--color-teal-800);
  --color-secondary: rgba(var(--color-gray-400-rgb), 0.15);
  --color-secondary-hover: rgba(var(--color-gray-400-rgb), 0.25);
  --color-secondary-active: rgba(var(--color-gray-400-rgb), 0.3);
  --color-border: rgba(var(--color-gray-400-rgb), 0.3);
  --color-error: var(--color-red-400);
  --color-success: var(--color-teal-300);
  --color-warning: var(--color-orange-400);
  --color-info: var(--color-gray-300);
  --color-focus-ring: rgba(var(--color-teal-300-rgb), 0.4);
  --color-btn-primary-text: var(--color-slate-900);
  --color-card-border: rgba(var(--color-gray-400-rgb), 0.15);
  --color-card-border-inner: rgba(var(--color-gray-400-rgb), 0.15);
  --shadow-inset-sm: inset 0 1px 0 rgba(255, 255, 255, 0.1),
    inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  --color-border-secondary: rgba(var(--color-gray-400-rgb), 0.2);
  --color-select-caret: rgba(var(--color-gray-200-rgb), 0.8);

  /* Common style patterns - updated for dark mode */
  --focus-ring: 0 0 0 3px var(--color-focus-ring);
  --focus-outline: 2px solid var(--color-primary);
  --status-bg-opacity: 0.15;
  --status-border-opacity: 0.25;
  --select-caret-light: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23134252' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
  --select-caret-dark: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23f5f5f5' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");

  /* RGB versions for dark mode */
  --color-success-rgb: var(--color-teal-300-rgb);
  --color-error-rgb: var(--color-red-400-rgb);
  --color-warning-rgb: var(--color-orange-400-rgb);
  --color-info-rgb: var(--color-gray-300-rgb);
}

[data-color-scheme="light"] {
  /* RGB versions for opacity control (light mode) */
  --color-brown-600-rgb: 94, 82, 64;
  --color-teal-500-rgb: 33, 128, 141;
  --color-slate-900-rgb: 19, 52, 59;

  /* Semantic Color Tokens (Light Mode) */
  --color-background: var(--color-cream-50);
  --color-surface: var(--color-cream-100);
  --color-text: var(--color-slate-900);
  --color-text-secondary: var(--color-slate-500);
  --color-primary: var(--color-teal-500);
  --color-primary-hover: var(--color-teal-600);
  --color-primary-active: var(--color-teal-700);
  --color-secondary: rgba(var(--color-brown-600-rgb), 0.12);
  --color-secondary-hover: rgba(var(--color-brown-600-rgb), 0.2);
  --color-secondary-active: rgba(var(--color-brown-600-rgb), 0.25);
  --color-border: rgba(var(--color-brown-600-rgb), 0.2);
  --color-btn-primary-text: var(--color-cream-50);
  --color-card-border: rgba(var(--color-brown-600-rgb), 0.12);
  --color-card-border-inner: rgba(var(--color-brown-600-rgb), 0.12);
  --color-error: var(--color-red-500);
  --color-success: var(--color-teal-500);
  --color-warning: var(--color-orange-500);
  --color-info: var(--color-slate-500);
  --color-focus-ring: rgba(var(--color-teal-500-rgb), 0.4);

  /* RGB versions for light mode */
  --color-success-rgb: var(--color-teal-500-rgb);
  --color-error-rgb: var(--color-red-500-rgb);
  --color-warning-rgb: var(--color-orange-500-rgb);
  --color-info-rgb: var(--color-slate-500-rgb);
}

/* Base styles */
html {
  font-size: var(--font-size-base);
  font-family: var(--font-family-base);
  line-height: var(--line-height-normal);
  color: var(--color-text);
  background-color: var(--color-background);
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
}

*,
*::before,
*::after {
  box-sizing: inherit;
}

/* Typography */
h1,
h2,
h3,
h4,
h5,
h6 {
  margin: 0;
  font-weight: var(--font-weight-semibold);
  line-height: var(--line-height-tight);
  color: var(--color-text);
  letter-spacing: var(--letter-spacing-tight);
}

h1 {
  font-size: var(--font-size-4xl);
}
h2 {
  font-size: var(--font-size-3xl);
}
h3 {
  font-size: var(--font-size-2xl);
}
h4 {
  font-size: var(--font-size-xl);
}
h5 {
  font-size: var(--font-size-lg);
}
h6 {
  font-size: var(--font-size-md);
}

p {
  margin: 0 0 var(--space-16) 0;
}

a {
  color: var(--color-primary);
  text-decoration: none;
  transition: color var(--duration-fast) var(--ease-standard);
}

a:hover {
  color: var(--color-primary-hover);
}

code,
pre {
  font-family: var(--font-family-mono);
  font-size: calc(var(--font-size-base) * 0.95);
  background-color: var(--color-secondary);
  border-radius: var(--radius-sm);
}

code {
  padding: var(--space-1) var(--space-4);
}

pre {
  padding: var(--space-16);
  margin: var(--space-16) 0;
  overflow: auto;
  border: 1px solid var(--color-border);
}

pre code {
  background: none;
  padding: 0;
}

/* Buttons */
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: var(--space-8) var(--space-16);
  border-radius: var(--radius-base);
  font-size: var(--font-size-base);
  font-weight: 500;
  line-height: 1.5;
  cursor: pointer;
  transition: all var(--duration-normal) var(--ease-standard);
  border: none;
  text-decoration: none;
  position: relative;
}

.btn:focus-visible {
  outline: none;
  box-shadow: var(--focus-ring);
}

.btn--primary {
  background: var(--color-primary);
  color: var(--color-btn-primary-text);
}

.btn--primary:hover {
  background: var(--color-primary-hover);
}

.btn--primary:active {
  background: var(--color-primary-active);
}

.btn--secondary {
  background: var(--color-secondary);
  color: var(--color-text);
}

.btn--secondary:hover {
  background: var(--color-secondary-hover);
}

.btn--secondary:active {
  background: var(--color-secondary-active);
}

.btn--outline {
  background: transparent;
  border: 1px solid var(--color-border);
  color: var(--color-text);
}

.btn--outline:hover {
  background: var(--color-secondary);
}

.btn--sm {
  padding: var(--space-4) var(--space-12);
  font-size: var(--font-size-sm);
  border-radius: var(--radius-sm);
}

.btn--lg {
  padding: var(--space-10) var(--space-20);
  font-size: var(--font-size-lg);
  border-radius: var(--radius-md);
}

.btn--full-width {
  width: 100%;
}

.btn:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}

/* Form elements */
.form-control {
  display: block;
  width: 100%;
  padding: var(--space-8) var(--space-12);
  font-size: var(--font-size-md);
  line-height: 1.5;
  color: var(--color-text);
  background-color: var(--color-surface);
  border: 1px solid var(--color-border);
  border-radius: var(--radius-base);
  transition: border-color var(--duration-fast) var(--ease-standard),
    box-shadow var(--duration-fast) var(--ease-standard);
}

textarea.form-control {
  font-family: var(--font-family-base);
  font-size: var(--font-size-base);
}

select.form-control {
  padding: var(--space-8) var(--space-12);
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  background-image: var(--select-caret-light);
  background-repeat: no-repeat;
  background-position: right var(--space-12) center;
  background-size: 16px;
  padding-right: var(--space-32);
}

/* Add a dark mode specific caret */
@media (prefers-color-scheme: dark) {
  select.form-control {
    background-image: var(--select-caret-dark);
  }
}

/* Also handle data-color-scheme */
[data-color-scheme="dark"] select.form-control {
  background-image: var(--select-caret-dark);
}

[data-color-scheme="light"] select.form-control {
  background-image: var(--select-caret-light);
}

.form-control:focus {
  border-color: var(--color-primary);
  outline: var(--focus-outline);
}

.form-label {
  display: block;
  margin-bottom: var(--space-8);
  font-weight: var(--font-weight-medium);
  font-size: var(--font-size-sm);
}

.form-group {
  margin-bottom: var(--space-16);
}

/* Card component */
.card {
  background-color: var(--color-surface);
  border-radius: var(--radius-lg);
  border: 1px solid var(--color-card-border);
  box-shadow: var(--shadow-sm);
  overflow: hidden;
  transition: box-shadow var(--duration-normal) var(--ease-standard);
}

.card:hover {
  box-shadow: var(--shadow-md);
}

.card__body {
  padding: var(--space-16);
}

.card__header,
.card__footer {
  padding: var(--space-16);
  border-bottom: 1px solid var(--color-card-border-inner);
}

/* Status indicators - simplified with CSS variables */
.status {
  display: inline-flex;
  align-items: center;
  padding: var(--space-6) var(--space-12);
  border-radius: var(--radius-full);
  font-weight: var(--font-weight-medium);
  font-size: var(--font-size-sm);
}

.status--success {
  background-color: rgba(
    var(--color-success-rgb, 33, 128, 141),
    var(--status-bg-opacity)
  );
  color: var(--color-success);
  border: 1px solid
    rgba(var(--color-success-rgb, 33, 128, 141), var(--status-border-opacity));
}

.status--error {
  background-color: rgba(
    var(--color-error-rgb, 192, 21, 47),
    var(--status-bg-opacity)
  );
  color: var(--color-error);
  border: 1px solid
    rgba(var(--color-error-rgb, 192, 21, 47), var(--status-border-opacity));
}

.status--warning {
  background-color: rgba(
    var(--color-warning-rgb, 168, 75, 47),
    var(--status-bg-opacity)
  );
  color: var(--color-warning);
  border: 1px solid
    rgba(var(--color-warning-rgb, 168, 75, 47), var(--status-border-opacity));
}

.status--info {
  background-color: rgba(
    var(--color-info-rgb, 98, 108, 113),
    var(--status-bg-opacity)
  );
  color: var(--color-info);
  border: 1px solid
    rgba(var(--color-info-rgb, 98, 108, 113), var(--status-border-opacity));
}

/* Container layout */
.container {
  width: 100%;
  margin-right: auto;
  margin-left: auto;
  padding-right: var(--space-16);
  padding-left: var(--space-16);
}

@media (min-width: 640px) {
  .container {
    max-width: var(--container-sm);
  }
}
@media (min-width: 768px) {
  .container {
    max-width: var(--container-md);
  }
}
@media (min-width: 1024px) {
  .container {
    max-width: var(--container-lg);
  }
}
@media (min-width: 1280px) {
  .container {
    max-width: var(--container-xl);
  }
}

/* Utility classes */
.flex {
  display: flex;
}
.flex-col {
  flex-direction: column;
}
.items-center {
  align-items: center;
}
.justify-center {
  justify-content: center;
}
.justify-between {
  justify-content: space-between;
}
.gap-4 {
  gap: var(--space-4);
}
.gap-8 {
  gap: var(--space-8);
}
.gap-16 {
  gap: var(--space-16);
}

.m-0 {
  margin: 0;
}
.mt-8 {
  margin-top: var(--space-8);
}
.mb-8 {
  margin-bottom: var(--space-8);
}
.mx-8 {
  margin-left: var(--space-8);
  margin-right: var(--space-8);
}
.my-8 {
  margin-top: var(--space-8);
  margin-bottom: var(--space-8);
}

.p-0 {
  padding: 0;
}
.py-8 {
  padding-top: var(--space-8);
  padding-bottom: var(--space-8);
}
.px-8 {
  padding-left: var(--space-8);
  padding-right: var(--space-8);
}
.py-16 {
  padding-top: var(--space-16);
  padding-bottom: var(--space-16);
}
.px-16 {
  padding-left: var(--space-16);
  padding-right: var(--space-16);
}

.block {
  display: block;
}
.hidden {
  display: none;
}

/* Accessibility */
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  white-space: nowrap;
  border-width: 0;
}

:focus-visible {
  outline: var(--focus-outline);
  outline-offset: 2px;
}

/* Dark mode specifics */
[data-color-scheme="dark"] .btn--outline {
  border: 1px solid var(--color-border-secondary);
}

@font-face {
  font-family: 'FKGroteskNeue';
  src: url('https://r2cdn.perplexity.ai/fonts/FKGroteskNeue.woff2')
    format('woff2');
}

/* END PERPLEXITY DESIGN SYSTEM */
/* Design System Variables */
:root {
  /* Ocean/Shark Color Palette */
  --color-ocean-deep: #1a365d;
  --color-ocean-mid: #2d5a87;
  --color-shark-dark: #4a5568;
  --color-shark-light: #718096;
  --color-white: #ffffff;
  --color-accent-teal: #0891b2;
  --color-accent-teal-light: #0ea5e9;
  --color-background: #f8fafc;
  --color-text-primary: #1e293b;
  --color-text-secondary: #64748b;
  --color-border: #e2e8f0;
  --color-shadow: rgba(15, 23, 42, 0.08);
  
  /* Typography */
  --font-primary: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  --font-weight-light: 300;
  --font-weight-regular: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;
  
  /* Spacing */
  --space-xs: 0.5rem;
  --space-sm: 0.75rem;
  --space-md: 1rem;
  --space-lg: 1.5rem;
  --space-xl: 2rem;
  --space-2xl: 3rem;
  --space-3xl: 4rem;
  --space-4xl: 6rem;
  
  /* Border Radius */
  --radius-sm: 0.375rem;
  --radius-md: 0.5rem;
  --radius-lg: 0.75rem;
  --radius-xl: 1rem;
  
  /* Shadows */
  --shadow-sm: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
  --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
  --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
  --shadow-xl: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
  
  /* Transitions */
  --transition-fast: 0.15s ease;
  --transition-normal: 0.3s ease;
  --transition-slow: 0.5s ease;
}

/* Base Styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  font-size: 16px;
  scroll-behavior: smooth;
}

body {
  font-family: var(--font-primary);
  font-weight: var(--font-weight-regular);
  line-height: 1.6;
  color: var(--color-text-primary);
  background-color: var(--color-background);
  overflow-x: hidden;
}

/* Typography */
h1, h2, h3, h4, h5, h6 {
  font-weight: var(--font-weight-bold);
  line-height: 1.2;
  margin-bottom: var(--space-md);
}

h1 {
  font-size: clamp(2.5rem, 5vw, 4rem);
  font-weight: var(--font-weight-bold);
}

h2 {
  font-size: clamp(2rem, 4vw, 3rem);
}

h3 {
  font-size: clamp(1.5rem, 3vw, 2rem);
}

p {
  margin-bottom: var(--space-md);
  color: var(--color-text-secondary);
}

a {
  color: var(--color-accent-teal);
  text-decoration: none;
  transition: color var(--transition-fast);
}

a:hover {
  color: var(--color-accent-teal-light);
}

/* Utility Classes */
.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 var(--space-xl);
}

.section-header {
  text-align: center;
  margin-bottom: var(--space-4xl);
}

.section-title {
  font-size: clamp(2rem, 4vw, 3rem);
  font-weight: var(--font-weight-bold);
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-md);
}

.section-subtitle {
  font-size: 1.125rem;
  color: var(--color-text-secondary);
  max-width: 600px;
  margin: 0 auto;
}

/* Button Components */
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: var(--space-sm) var(--space-xl);
  font-size: 1rem;
  font-weight: var(--font-weight-medium);
  text-decoration: none;
  border: none;
  border-radius: var(--radius-md);
  cursor: pointer;
  transition: all var(--transition-normal);
  position: relative;
  overflow: hidden;
}

.btn--primary {
  background: linear-gradient(135deg, var(--color-accent-teal) 0%, var(--color-ocean-mid) 100%);
  color: var(--color-white);
  box-shadow: var(--shadow-md);
}

.btn--primary:hover {
  transform: translateY(-2px);
  box-shadow: var(--shadow-lg);
}

.btn--secondary {
  background: var(--color-white);
  color: var(--color-ocean-deep);
  border: 2px solid var(--color-border);
}

.btn--secondary:hover {
  background: var(--color-ocean-deep);
  color: var(--color-white);
  border-color: var(--color-ocean-deep);
}

.btn--outline {
  background: transparent;
  color: var(--color-ocean-deep);
  border: 2px solid var(--color-ocean-deep);
}

.btn--outline:hover {
  background: var(--color-ocean-deep);
  color: var(--color-white);
}

.btn--large {
  padding: var(--space-md) var(--space-2xl);
  font-size: 1.125rem;
}

.btn--full-width {
  width: 100%;
}

/* Navigation */
.nav {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 1000;
  background: rgba(255, 255, 255, 0.95);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid var(--color-border);
  transition: all var(--transition-normal);
}

.nav.scrolled {
  background: rgba(255, 255, 255, 0.98);
  box-shadow: var(--shadow-sm);
}

.nav__container {
  max-width: 1200px;
  margin: 0 auto;
  padding: var(--space-md) var(--space-xl);
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.nav__logo {
  display: flex;
  flex-direction: column;
}

.nav__name {
  font-size: 1.125rem;
  font-weight: var(--font-weight-bold);
  color: var(--color-ocean-deep);
}

.nav__title {
  font-size: 0.875rem;
  color: var(--color-text-secondary);
}

.nav__menu {
  display: flex;
  list-style: none;
  gap: var(--space-xl);
}

.nav__link {
  font-weight: var(--font-weight-medium);
  color: var(--color-text-primary);
  transition: color var(--transition-fast);
  position: relative;
}

.nav__link:hover {
  color: var(--color-accent-teal);
}

.nav__link--cta {
  background: var(--color-accent-teal);
  color: var(--color-white) !important;
  padding: var(--space-xs) var(--space-md);
  border-radius: var(--radius-sm);
  transition: all var(--transition-fast);
}

.nav__link--cta:hover {
  background: var(--color-accent-teal-light);
  transform: translateY(-1px);
}

.nav__toggle {
  display: none;
  flex-direction: column;
  background: none;
  border: none;
  cursor: pointer;
  padding: var(--space-xs);
}

.nav__toggle span {
  width: 24px;
  height: 2px;
  background: var(--color-ocean-deep);
  margin: 2px 0;
  transition: var(--transition-fast);
}

/* Hero Section */
.hero {
  min-height: 100vh;
  display: flex;
  align-items: center;
  position: relative;
  background: linear-gradient(135deg, 
    var(--color-background) 0%, 
    rgba(45, 90, 135, 0.05) 50%, 
    var(--color-background) 100%);
  padding-top: 80px;
  overflow: hidden;
}

.hero::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grain" width="100" height="100" patternUnits="userSpaceOnUse"><circle cx="25" cy="25" r="1" fill="%23718096" opacity="0.1"/><circle cx="75" cy="75" r="1" fill="%232d5a87" opacity="0.05"/><circle cx="50" cy="10" r="0.5" fill="%234a5568" opacity="0.1"/></pattern></defs><rect width="100" height="100" fill="url(%23grain)"/></svg>') repeat;
  pointer-events: none;
  z-index: 1;
}

.hero__container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 var(--space-xl);
  display: grid;
  grid-template-columns: 1.2fr 1fr;
  gap: var(--space-4xl);
  align-items: center;
  position: relative;
  z-index: 2;
}

.hero__content {
  animation: slideInLeft 0.8s ease-out;
}

.hero__title {
  font-size: clamp(2.5rem, 5vw, 4.5rem);
  font-weight: var(--font-weight-bold);
  line-height: 1.1;
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-xl);
}

.hero__title-accent {
  background: linear-gradient(135deg, var(--color-accent-teal), var(--color-ocean-mid));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.hero__subtitle {
  font-size: 1.25rem;
  line-height: 1.5;
  color: var(--color-text-secondary);
  margin-bottom: var(--space-2xl);
  max-width: 500px;
}

.hero__value-prop {
  margin-bottom: var(--space-2xl);
}

.hero__badge {
  display: inline-block;
  background: linear-gradient(135deg, var(--color-accent-teal), var(--color-accent-teal-light));
  color: var(--color-white);
  padding: var(--space-sm) var(--space-lg);
  border-radius: var(--radius-xl);
  font-size: 0.875rem;
  font-weight: var(--font-weight-medium);
  box-shadow: var(--shadow-md);
}

.hero__actions {
  display: flex;
  gap: var(--space-lg);
  flex-wrap: wrap;
}

.hero__visual {
  position: relative;
  animation: slideInRight 0.8s ease-out;
}

.hero__photo {
  position: relative;
  margin-bottom: var(--space-2xl);
}

.hero__photo-placeholder {
  border-radius: var(--radius-xl);
  overflow: hidden;
  box-shadow: var(--shadow-xl);
  transition: transform var(--transition-slow);
}

.hero__photo-placeholder:hover {
  transform: translateY(-10px) rotate(-2deg);
}

.hero__stats {
  display: flex;
  gap: var(--space-xl);
  justify-content: center;
}

.hero__stat {
  text-align: center;
  padding: var(--space-lg);
  background: var(--color-white);
  border-radius: var(--radius-lg);
  box-shadow: var(--shadow-md);
  transition: transform var(--transition-normal);
}

.hero__stat:hover {
  transform: translateY(-5px);
}

.hero__stat-number {
  display: block;
  font-size: 2rem;
  font-weight: var(--font-weight-bold);
  color: var(--color-accent-teal);
  line-height: 1;
}

.hero__stat-label {
  font-size: 0.875rem;
  color: var(--color-text-secondary);
  margin-top: var(--space-xs);
}

.hero__scroll {
  position: absolute;
  bottom: var(--space-2xl);
  left: 50%;
  transform: translateX(-50%);
  z-index: 2;
}

.hero__scroll-indicator {
  text-align: center;
  color: var(--color-text-secondary);
  font-size: 0.875rem;
  animation: bounce 2s infinite;
}

.hero__scroll-arrow {
  width: 20px;
  height: 20px;
  border-right: 2px solid var(--color-accent-teal);
  border-bottom: 2px solid var(--color-accent-teal);
  transform: rotate(45deg);
  margin: var(--space-xs) auto 0;
}

/* Services Section */
.services {
  padding: var(--space-4xl) 0;
  background: var(--color-white);
}

.services__grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: var(--space-2xl);
}

.service-card {
  background: var(--color-white);
  padding: var(--space-2xl);
  border-radius: var(--radius-xl);
  border: 1px solid var(--color-border);
  transition: all var(--transition-normal);
  position: relative;
  overflow: hidden;
}

.service-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(90deg, var(--color-accent-teal), var(--color-ocean-mid));
  transform: scaleX(0);
  transition: transform var(--transition-normal);
}

.service-card:hover {
  transform: translateY(-8px);
  box-shadow: var(--shadow-xl);
}

.service-card:hover::before {
  transform: scaleX(1);
}

.service-card__icon {
  width: 64px;
  height: 64px;
  background: linear-gradient(135deg, var(--color-accent-teal), var(--color-accent-teal-light));
  border-radius: var(--radius-lg);
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: var(--space-lg);
  color: var(--color-white);
}

.service-card__title {
  font-size: 1.5rem;
  font-weight: var(--font-weight-bold);
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-md);
}

.service-card__description {
  color: var(--color-text-secondary);
  margin-bottom: var(--space-lg);
  line-height: 1.6;
}

.service-card__benefit {
  background: rgba(8, 145, 178, 0.1);
  color: var(--color-accent-teal);
  padding: var(--space-sm) var(--space-md);
  border-radius: var(--radius-md);
  font-size: 0.875rem;
  font-weight: var(--font-weight-medium);
}

/* Expertise Section */
.expertise {
  padding: var(--space-4xl) 0;
  background: linear-gradient(135deg, var(--color-background) 0%, rgba(45, 90, 135, 0.03) 100%);
}

.expertise__content {
  margin-bottom: var(--space-4xl);
}

.expertise__stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: var(--space-xl);
  margin-bottom: var(--space-4xl);
}

.stat-card {
  background: var(--color-white);
  padding: var(--space-2xl);
  border-radius: var(--radius-xl);
  text-align: center;
  box-shadow: var(--shadow-md);
  transition: transform var(--transition-normal);
}

.stat-card:hover {
  transform: translateY(-5px);
}

.stat-card__number {
  display: block;
  font-size: 3rem;
  font-weight: var(--font-weight-bold);
  background: linear-gradient(135deg, var(--color-accent-teal), var(--color-ocean-mid));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  line-height: 1;
  margin-bottom: var(--space-sm);
}

.stat-card__label {
  color: var(--color-text-secondary);
  font-weight: var(--font-weight-medium);
}

.expertise__subtitle {
  font-size: 1.5rem;
  font-weight: var(--font-weight-bold);
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-xl);
  text-align: center;
}

.industry-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: var(--space-md);
}

.industry-card {
  background: var(--color-white);
  padding: var(--space-lg);
  border-radius: var(--radius-lg);
  text-align: center;
  font-weight: var(--font-weight-medium);
  color: var(--color-ocean-deep);
  border: 1px solid var(--color-border);
  transition: all var(--transition-fast);
}

.industry-card:hover {
  background: var(--color-accent-teal);
  color: var(--color-white);
  transform: translateY(-2px);
}

.expertise__testimonial {
  text-align: center;
}

.testimonial {
  background: var(--color-white);
  padding: var(--space-3xl);
  border-radius: var(--radius-xl);
  box-shadow: var(--shadow-lg);
  max-width: 600px;
  margin: 0 auto;
}

.testimonial__quote {
  font-size: 1.5rem;
  font-style: italic;
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-lg);
  line-height: 1.4;
}

.testimonial__author {
  font-weight: var(--font-weight-bold);
  color: var(--color-accent-teal);
}

/* Process Section */
.process {
  padding: var(--space-4xl) 0;
  background: var(--color-white);
}

.process__timeline {
  position: relative;
  max-width: 800px;
  margin: 0 auto;
}

.process__timeline::before {
  content: '';
  position: absolute;
  left: 50px;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(to bottom, var(--color-accent-teal), var(--color-ocean-mid));
}

.process-step {
  position: relative;
  padding: var(--space-xl) 0 var(--space-xl) 120px;
  opacity: 0;
  transform: translateX(-50px);
  animation: slideIn 0.6s ease forwards;
}

.process-step:nth-child(2) { animation-delay: 0.2s; }
.process-step:nth-child(3) { animation-delay: 0.4s; }
.process-step:nth-child(4) { animation-delay: 0.6s; }

.process-step__number {
  position: absolute;
  left: 0;
  top: var(--space-xl);
  width: 100px;
  height: 100px;
  background: linear-gradient(135deg, var(--color-accent-teal), var(--color-ocean-mid));
  color: var(--color-white);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
  font-weight: var(--font-weight-bold);
  box-shadow: var(--shadow-lg);
}

.process-step__content {
  background: var(--color-white);
  padding: var(--space-2xl);
  border-radius: var(--radius-xl);
  box-shadow: var(--shadow-md);
  border: 1px solid var(--color-border);
}

.process-step__title {
  font-size: 1.5rem;
  font-weight: var(--font-weight-bold);
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-sm);
}

.process-step__duration {
  color: var(--color-accent-teal);
  font-weight: var(--font-weight-medium);
  margin-bottom: var(--space-md);
}

.process-step__description {
  color: var(--color-text-secondary);
  line-height: 1.6;
}

/* About Section */
.about {
  padding: var(--space-4xl) 0;
  background: linear-gradient(135deg, var(--color-background) 0%, rgba(45, 90, 135, 0.03) 100%);
}

.about__content {
  display: grid;
  grid-template-columns: 1fr 400px;
  gap: var(--space-4xl);
  align-items: center;
}

.about__credentials {
  display: flex;
  gap: var(--space-md);
  margin-bottom: var(--space-xl);
  flex-wrap: wrap;
}

.credential-badge {
  background: linear-gradient(135deg, var(--color-accent-teal), var(--color-accent-teal-light));
  color: var(--color-white);
  padding: var(--space-xs) var(--space-md);
  border-radius: var(--radius-md);
  font-size: 0.875rem;
  font-weight: var(--font-weight-medium);
}

.about__description {
  font-size: 1.125rem;
  line-height: 1.6;
  margin-bottom: var(--space-lg);
}

.about__approach {
  background: var(--color-white);
  padding: var(--space-xl);
  border-radius: var(--radius-lg);
  border-left: 4px solid var(--color-accent-teal);
  margin-bottom: var(--space-2xl);
}

.about__approach-title {
  font-size: 1.25rem;
  font-weight: var(--font-weight-bold);
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-sm);
}

.about__approach-text {
  color: var(--color-text-secondary);
  line-height: 1.6;
}

.about__photo {
  position: relative;
}

.about__photo-container {
  position: relative;
  border-radius: var(--radius-xl);
  overflow: hidden;
  box-shadow: var(--shadow-xl);
  transition: transform var(--transition-slow);
}

.about__photo-container:hover {
  transform: translateY(-10px) rotate(2deg);
}

/* Contact Section */
.contact {
  padding: var(--space-4xl) 0;
  background: var(--color-white);
}

.contact__content {
  display: grid;
  grid-template-columns: 1.2fr 1fr;
  gap: var(--space-4xl);
}

.contact__form {
  background: var(--color-background);
  padding: var(--space-3xl);
  border-radius: var(--radius-xl);
  box-shadow: var(--shadow-lg);
}

.form-group {
  margin-bottom: var(--space-lg);
}

.form-label {
  display: block;
  font-weight: var(--font-weight-medium);
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-sm);
}

.form-control {
  width: 100%;
  padding: var(--space-md);
  font-size: 1rem;
  border: 2px solid var(--color-border);
  border-radius: var(--radius-md);
  transition: border-color var(--transition-fast);
  background: var(--color-white);
}

.form-control:focus {
  outline: none;
  border-color: var(--color-accent-teal);
  box-shadow: 0 0 0 3px rgba(8, 145, 178, 0.1);
}

.contact__info {
  display: flex;
  flex-direction: column;
  gap: var(--space-2xl);
}

.contact__details {
  background: var(--color-background);
  padding: var(--space-2xl);
  border-radius: var(--radius-xl);
}

.contact__details-title {
  font-size: 1.5rem;
  font-weight: var(--font-weight-bold);
  color: var(--color-ocean-deep);
  margin-bottom: var(--space-lg);
}

.contact__item {
  display: flex;
  flex-direction: column;
  margin-bottom: var(--space-md);
}

.contact__label {
  font-size: 0.875rem;
  color: var(--color-text-secondary);
  margin-bottom: var(--space-xs);
}

.contact__value {
  font-weight: var(--font-weight-medium);
  color: var(--color-ocean-deep);
}

.contact__cta {
  background: linear-gradient(135deg, var(--color-accent-teal), var(--color-ocean-mid));
  color: var(--color-white);
  padding: var(--space-2xl);
  border-radius: var(--radius-xl);
  text-align: center;
}

.contact__cta-text {
  font-size: 1.125rem;
  font-weight: var(--font-weight-medium);
  margin-bottom: var(--space-lg);
  color: var(--color-white);
}

/* Footer */
.footer {
  background: var(--color-ocean-deep);
  color: var(--color-white);
  padding: var(--space-3xl) 0 var(--space-xl);
}

.footer__content {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: var(--space-2xl);
}

.footer__name {
  font-size: 1.5rem;
  font-weight: var(--font-weight-bold);
  margin-bottom: var(--space-xs);
}

.footer__title {
  color: rgba(255, 255, 255, 0.7);
  margin-bottom: 0;
}

.footer__links {
  display: flex;
  gap: var(--space-xl);
}

.footer__links a {
  color: rgba(255, 255, 255, 0.8);
  transition: color var(--transition-fast);
}

.footer__links a:hover {
  color: var(--color-white);
}

.footer__bottom {
  text-align: center;
  padding-top: var(--space-xl);
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  color: rgba(255, 255, 255, 0.6);
}

/* Animations */
@keyframes slideInLeft {
  from {
    opacity: 0;
    transform: translateX(-50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

@keyframes slideInRight {
  from {
    opacity: 0;
    transform: translateX(50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

@keyframes slideIn {
  from {
    opacity: 0;
    transform: translateX(-50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

@keyframes bounce {
  0%, 20%, 50%, 80%, 100% {
    transform: translateY(0) translateX(-50%);
  }
  40% {
    transform: translateY(-10px) translateX(-50%);
  }
  60% {
    transform: translateY(-5px) translateX(-50%);
  }
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Responsive Design */
@media (max-width: 1024px) {
  .hero__container {
    grid-template-columns: 1fr;
    text-align: center;
    gap: var(--space-2xl);
  }
  
  .about__content {
    grid-template-columns: 1fr;
    text-align: center;
  }
  
  .contact__content {
    grid-template-columns: 1fr;
  }
}

@media (max-width: 768px) {
  .container {
    padding: 0 var(--space-md);
  }
  
  .nav__container {
    padding: var(--space-md);
  }
  
  .nav__menu {
    display: none;
  }
  
  .nav__toggle {
    display: flex;
  }
  
  .hero__actions {
    justify-content: center;
  }
  
  .hero__stats {
    flex-direction: column;
    align-items: center;
  }
  
  .services__grid {
    grid-template-columns: 1fr;
  }
  
  .expertise__stats {
    grid-template-columns: 1fr;
  }
  
  .industry-grid {
    grid-template-columns: repeat(2, 1fr);
  }
  
  .process__timeline::before {
    left: 30px;
  }
  
  .process-step {
    padding-left: 80px;
  }
  
  .process-step__number {
    width: 60px;
    height: 60px;
    font-size: 1.25rem;
  }
  
  .about__credentials {
    justify-content: center;
  }
  
  .footer__content {
    flex-direction: column;
    gap: var(--space-xl);
    text-align: center;
  }
  
  .footer__links {
    justify-content: center;
  }
}

@media (max-width: 480px) {
  .industry-grid {
    grid-template-columns: 1fr;
  }
  
  .hero__actions {
    flex-direction: column;
    width: 100%;
  }
  
  .footer__links {
    flex-direction: column;
    gap: var(--space-md);
  }
}

/* Smooth scrolling animation for elements */
.animate-on-scroll {
  opacity: 0;
  transform: translateY(30px);
  transition: all 0.6s ease;
}

.animate-on-scroll.animated {
  opacity: 1;
  transform: translateY(0);
}

/* Loading state */
.loading {
  opacity: 0.6;
  pointer-events: none;
}
.profile-photo {
  width: 220px;
  height: 220px;
  object-fit: cover;
  border-radius: 50%;
  box-shadow: 0 8px 32px rgba(30, 64, 175, 0.15), 0 2px 4px rgba(10,110,180,0.06);
  border: 6px solid #fff;
  transition: transform 0.4s cubic-bezier(.19,1,.22,1);
}
.profile-photo:hover {
  transform: scale(1.04) translateY(-6px) rotate(-2deg);
}
@media (max-width: 600px) {
  .profile-photo {
    width: 120px;
    height: 120px;
  }
}
