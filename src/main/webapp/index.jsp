<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop – User‑Friendly E‑Commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" />
  <style>
    /* ----- ROOT (soft & friendly) ----- */
    :root {
      --bg: #f7f5f2;
      --bg-card: #ffffff;
      --primary: #2b2b2b;
      --accent: #d87c5b;
      --accent-light: #f3ded6;
      --accent-dark: #b45f3f;
      --muted: #6e6e7a;
      --muted-light: #b0b0bc;
      --surface: #eeebe7;
      --success: #4f9d8a;
      --warning: #eac784;
      --radius: 20px;
      --radius-sm: 12px;
      --shadow: 0 8px 28px rgba(0, 0, 0, 0.04);
      --shadow-hover: 0 18px 44px rgba(0, 0, 0, 0.08);
      --transition: 0.2s ease;
      --container: 1260px;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- BUTTONS (friendly & tactile) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 30px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 2px solid transparent;
      cursor: pointer;
      background: transparent;
      color: var(--primary);
    }

    .btn-primary {
      background: var(--accent);
      border-color: var(--accent);
      color: #fff;
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: scale(0.97);
      box-shadow: 0 10px 28px rgba(216, 124, 91, 0.25);
    }

    .btn-secondary {
      background: var(--primary);
      border-color: var(--primary);
      color: #fff;
    }
    .btn-secondary:hover {
      background: #3d3d3d;
      transform: scale(0.97);
    }

    .btn-outline {
      border-color: rgba(43, 43, 43, 0.15);
      background: transparent;
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.12);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.2);
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.22);
      transform: scale(0.97);
    }

    .btn-sm {
      padding: 8px 18px;
      font-size: 13px;
    }

    /* ----- HEADER (softer, airy) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.88);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 14px 0;
      min-height: 70px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.4px;
      color: var(--primary);
    }
    .brand i {
      color: var(--accent);
      font-size: 26px;
    }
    .brand span.accent {
      color: var(--accent);
    }

    .main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }
    .main-nav ul li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
    }
    .main-nav ul li a:hover,
    .main-nav ul li a.active {
      background: var(--surface);
      color: var(--primary);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      background: transparent;
      border: none;
      cursor: pointer;
    }
    .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }

    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 16px 0 20px;
      border: 2px solid transparent;
      transition: var(--transition);
      min-width: 220px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 6px rgba(216, 124, 91, 0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 100%;
      outline: none;
      color: var(--primary);
    }
    .search-wrap input::placeholder {
      color: var(--muted-light);
    }
    .search-wrap button {
      background: none;
      border: none;
      color: var(--muted);
      padding: 8px 0 8px 12px;
      font-size: 16px;
      transition: var(--transition);
      cursor: pointer;
    }
    .search-wrap button:hover {
      color: var(--accent);
    }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--surface);
      border: none;
      font-size: 20px;
      color: var(--primary);
      cursor: pointer;
    }

    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(0,0,0,0.02);
      padding: 16px 0 24px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      padding: 12px 18px;
      border-radius: 12px;
      display: flex;
      align-items: center;
      gap: 12px;
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: var(--surface);
    }

    /* ----- HERO (friendly & warm) ----- */
    .hero {
      background: linear-gradient(135deg, #f1ede8 0%, #f8f2ec 100%);
      border-radius: var(--radius);
      margin: 24px 24px 0;
      padding: 56px 40px;
      display: flex;
      align-items: center;
      min-height: 380px;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -40px;
      bottom: -40px;
      width: 360px;
      height: 360px;
      background: radial-gradient(circle, rgba(216,124,91,0.12) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero .container {
      position: relative;
      z-index: 2;
    }
    .hero .badge {
      display: inline-block;
      background: rgba(216,124,91,0.15);
      color: var(--accent-dark);
      padding: 6px 20px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      margin-bottom: 14px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 46px;
      font-weight: 700;
      line-height: 1.15;
      color: var(--primary);
      max-width: 600px;
      margin-bottom: 12px;
    }
    .hero p {
      color: var(--muted);
      font-size: 17px;
      max-width: 480px;
      margin-bottom: 26px;
      line-height: 1.6;
    }
    .hero .actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    /* ----- SECTION ----- */
    .section {
      padding: 48px 0;
    }
    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-size: 28px;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header p {
      color: var(--muted);
      margin-top: 4px;
      font-size: 15px;
    }
    .view-all {
      color: var(--accent);
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
      white-space: nowrap;
    }
    .view-all:hover {
      gap: 12px;
      color: var(--accent-dark);
    }

    /* ----- CATEGORIES (pill style) ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 14px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 22px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      border: 2px solid transparent;
      transition: var(--transition);
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent-light);
      box-shadow: var(--shadow-hover);
    }
    .cat-card .icon-wrap {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 24px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
    }
    .cat-card h4 {
      font-size: 15px;
      font-weight: 600;
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--muted);
      margin-top: 2px;
    }

    /* ----- PRODUCTS (clean cards) ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      border-color: var(--accent-light);
      box-shadow: var(--shadow-hover);
    }
    .product-card .img-wrap {
      position: relative;
      background: var(--surface);
      aspect-ratio: 1/1;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.04);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #fff;
      padding: 4px 14px;
      border-radius: 40px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale {
      background: var(--warning);
      color: var(--primary);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(4px);
      border: none;
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--muted);
      transition: var(--transition);
      cursor: pointer;
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.08);
    }
    .product-card .body {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product-card .body .category-tag {
      font-size: 12px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.4px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      margin: 6px 0 4px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 18px;
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #eab308;
      margin-top: 6px;
    }
    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 400;
    }
    .product-card .footer {
      padding: 0 16px 16px;
      display: flex;
      gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 10px;
      border-radius: 40px;
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      transition: var(--transition);
      cursor: pointer;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(0.97);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
    }

    /* ----- DEAL (soft spotlight) ----- */
    .deal-wrap {
      display: flex;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 46%;
      background: var(--surface);
      min-height: 260px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      padding: 34px 40px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      flex: 1;
    }
    .deal-wrap .deal-content .tag {
      background: var(--warning);
      color: var(--primary);
      padding: 4px 16px;
      border-radius: 40px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 10px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 26px;
      font-weight: 700;
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin: 4px 0 12px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 32px;
      font-weight: 800;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 12px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--muted);
      margin: 2px 0 14px;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
    }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 12px 0 18px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 8px 16px;
      border-radius: var(--radius-sm);
      min-width: 64px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 24px;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 10px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.4px;
    }

    /* ----- TESTIMONIALS (friendly scroll) ----- */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-light);
      border-radius: 40px;
    }
    .testimonial-card {
      flex: 0 0 340px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 24px 26px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
    }
    .testimonial-card .stars {
      color: #eab308;
      font-size: 16px;
      letter-spacing: 2px;
      margin-bottom: 8px;
    }
    .testimonial-card blockquote {
      font-size: 15px;
      line-height: 1.6;
      font-style: italic;
      color: var(--primary);
      margin-bottom: 14px;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author .avatar {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 14px;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--muted);
    }

    /* ----- NEWSLETTER (friendly gradient) ----- */
    .newsletter-wrap {
      background: linear-gradient(145deg, #2b2b2b, #3d3d3d);
      border-radius: var(--radius);
      padding: 44px 48px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }
    .newsletter-wrap h3 {
      font-size: 24px;
      font-weight: 700;
    }
    .newsletter-wrap p {
      opacity: 0.7;
      font-size: 15px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex: 1;
      max-width: 480px;
      flex-wrap: wrap;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 14px 22px;
      border-radius: 60px;
      border: none;
      font-size: 15px;
      background: rgba(255,255,255,0.1);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder {
      color: rgba(255,255,255,0.5);
    }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.18);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    #newsletterMsg {
      width: 100%;
      margin-top: 10px;
      font-size: 14px;
      opacity: 0.9;
    }

    /* ----- FOOTER (light) ----- */
    footer {
      padding: 44px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.02);
      margin-top: 16px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col .brand {
      font-size: 20px;
      margin-bottom: 6px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 14px;
      max-width: 300px;
      line-height: 1.6;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 12px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-grid .col ul a {
      color: var(--muted);
      font-size: 14px;
      transition: var(--transition);
    }
    .footer-grid .col ul a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 18px;
      border-top: 1px solid rgba(0,0,0,0.03);
      color: var(--muted-light);
      font-size: 13px;
    }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
    }
    @media (max-width: 992px) {
      .hero { margin: 16px 16px 0; padding: 40px 28px; }
      .hero h1 { font-size: 34px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 220px; }
      .deal-wrap .deal-content { padding: 28px; }
      .newsletter-wrap { padding: 32px 28px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 150px; }
    }
    @media (max-width: 768px) {
      .main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2,1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(2,1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 24px; }
      .hero { min-height: 280px; }
      .hero h1 { font-size: 28px; }
      .section-header h2 { font-size: 22px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 10px 10px 0; padding: 24px 16px; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 22px; }
      .container { padding: 0 14px; }
      .deal-wrap .deal-content { padding: 18px; }
      .deal-wrap .deal-img { flex: 0 0 160px; }
      .timer-box { min-width: 50px; padding: 6px 10px; }
      .timer-box .num { font-size: 18px; }
      .footer-grid { grid-template-columns: 1fr; }
      .newsletter-wrap { padding: 20px 16px; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>

    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <!-- mobile -->
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="hero">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> Fresh arrivals 2026</div>
      <h1>Essentials, <br>elevated.</h1>
      <p>Curated fashion, tech & accessories. Free shipping on first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Shop by Category</h2><p>Find what you love</p></div>
        <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>Trending Now</h2><p>Most loved this week</p></div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header">
        <div><h2>⚡ Flash Deal</h2><p>Limited stock – hurry!</p></div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Light, fast, and built for the future.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> left!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header">
        <div><h2>Real Reviews</h2><p>What our customers say</p></div>
      </div>
      <div class="testimonials-scroll" id="testimon
