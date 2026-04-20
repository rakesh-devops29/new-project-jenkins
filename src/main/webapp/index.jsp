<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop | Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #fefefe;
            --surface: #f7fafc;
            --primary: #0f172a;
            --primary-dark: #020617;
            --accent: #3b82f6;
            --accent-glow: rgba(59,130,246,0.2);
            --accent-dark: #2563eb;
            --muted: #5b6e8c;
            --border-light: #eef2f6;
            --card-bg: #ffffff;
            --shadow-sm: 0 12px 30px rgba(0, 0, 0, 0.03), 0 4px 8px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 20px 35px -12px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 24px 42px -12px rgba(0, 0, 0, 0.12);
            --radius-lg: 28px;
            --radius-md: 20px;
            --radius-sm: 14px;
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--primary);
            scroll-behavior: smooth;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Glassmorphic header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,0.86);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(0,0,0,0.03);
            box-shadow: 0 2px 10px rgba(0,0,0,0.01);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.65rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .brand i {
            background: none;
            background-clip: unset;
            -webkit-background-clip: unset;
            color: var(--accent);
            font-size: 1.7rem;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 8px 16px;
            font-weight: 500;
            border-radius: 40px;
            color: #1e293b;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        nav.main-nav li a:hover {
            background: var(--accent);
            color: white;
            box-shadow: 0 4px 10px rgba(59,130,246,0.25);
        }

        .search {
            background: white;
            border: 1px solid var(--border-light);
            border-radius: 60px;
            padding: 8px 16px;
            display: flex;
            align-items: center;
            gap: 12px;
            width: 260px;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
        }

        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }

        .search input {
            border: none;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 0.9rem;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            color: #334155;
            cursor: pointer;
            transition: var(--transition);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .icon-btn:hover {
            background: var(--accent-glow);
            color: var(--accent);
        }

        .cart {
            position: relative;
            background: white;
            border-radius: 40px;
            padding: 6px 12px;
            box-shadow: var(--shadow-sm);
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            min-width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .mobile-toggle {
            display: none;
            background: var(--surface);
            border: none;
            font-size: 1.4rem;
            border-radius: 40px;
            padding: 8px 12px;
            cursor: pointer;
        }

        /* Hero section – modern 3D vibe */
        .hero {
            background: linear-gradient(125deg, #0b1120 0%, #111827 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 24px;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 10% 30%, rgba(59,130,246,0.15), transparent 70%);
            pointer-events: none;
        }

        .hero-content {
            padding: 70px 0 80px;
            position: relative;
            z-index: 2;
            text-align: center;
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.5rem;
            font-weight: 700;
            background: linear-gradient(to right, #ffffff, #cbd5e1);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .hero p {
            color: #cbd5e6;
            max-width: 600px;
            margin: 18px auto;
            font-size: 1.05rem;
        }

        .btn-group {
            display: flex;
            gap: 14px;
            justify-content: center;
            margin-top: 20px;
        }

        .btn {
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: var(--transition);
            font-size: 0.95rem;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
            box-shadow: 0 8px 18px rgba(59,130,246,0.3);
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            transform: translateY(-3px);
            box-shadow: 0 15px 25px -8px rgba(59,130,246,0.4);
        }

        .btn-outline-light {
            background: rgba(255,255,255,0.05);
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255,255,255,0.2);
            color: white;
        }

        /* section headers */
        .section-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .section-header h2 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 2rem;
            font-weight: 600;
            background: linear-gradient(135deg, var(--primary), #2c3e66);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .section-header p {
            color: var(--muted);
            margin-top: 6px;
        }

        /* Category cards – modern glass */
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
            gap: 24px;
        }

        .cat-card-modern {
            background: var(--card-bg);
            backdrop-filter: blur(2px);
            border-radius: var(--radius-md);
            padding: 22px 12px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            cursor: pointer;
            box-shadow: var(--shadow-sm);
        }

        .cat-card-modern:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: var(--shadow-hover);
        }

        .cat-card-modern i {
            font-size: 2.4rem;
            color: var(--accent);
            margin-bottom: 12px;
        }

        /* Product grid modern */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }

        .product-card {
            background: var(--card-bg);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            box-shadow: var(--shadow-sm);
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .product-card:hover .product-img {
            transform: scale(1.02);
        }

        .product-info {
            padding: 18px 18px 20px;
        }

        .price-block {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin: 12px 0;
        }

        .current-price {
            font-weight: 800;
            font-size: 1.35rem;
            color: var(--primary);
        }

        .old-price {
            text-decoration: line-through;
            color: var(--muted);
            font-size: 0.85rem;
        }

        .rating {
            color: #fbbf24;
            font-size: 0.8rem;
        }

        .add-to-cart {
            width: 100%;
            background: var(--primary);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 60px;
            font-weight: 600;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
            cursor: pointer;
        }

        .add-to-cart:hover {
            background: var(--accent);
            gap: 12px;
        }

        /* Deal section premium */
        .deal-premium {
            display: flex;
            background: linear-gradient(115deg, #f8fafc, #ffffff);
            border-radius: 40px;
            overflow: hidden;
            box-shadow: var(--shadow-md);
            border: 1px solid rgba(59,130,246,0.2);
        }

        .deal-image {
            flex: 1.2;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80') center/cover no-repeat;
            min-height: 340px;
        }

        .deal-content {
            flex: 1;
            padding: 40px;
        }

        .timer-modern {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }

        .time-unit {
            background: var(--primary);
            color: white;
            border-radius: 20px;
            text-align: center;
            padding: 12px 16px;
            min-width: 70px;
        }

        /* testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scrollbar-width: thin;
        }

        .testimonial-card {
            min-width: 320px;
            background: white;
            border-radius: 28px;
            padding: 24px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
        }

        /* Newsletter modern */
        .newsletter-modern {
            background: linear-gradient(125deg, #0f172a, #1e293b);
            border-radius: 48px;
            padding: 52px 32px;
            text-align: center;
            color: white;
        }

        .newsletter-modern input {
            padding: 14px 24px;
            border-radius: 60px;
            border: none;
            width: 300px;
            max-width: 70%;
            background: white;
            font-size: 0.95rem;
        }

        footer {
            background: var(--surface);
            margin-top: 40px;
            padding: 48px 0 24px;
            border-radius: 40px 40px 0 0;
        }

        @media (max-width: 900px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: inline-block;
            }
            .hero h1 {
                font-size: 2.3rem;
            }
            .deal-premium {
                flex-direction: column;
            }
            .deal-image {
                height: 260px;
            }
        }

        @media (max-width: 640px) {
            .products-grid {
                grid-template-columns: 1fr;
            }
            .grid-categories {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        button:disabled {
            opacity: 0.6;
            cursor: default;
        }

        .badge {
            background: var(--accent);
            color: white;
            padding: 4px 12px;
            border-radius: 60px;
            font-size: 0.7rem;
            font-weight: 600;
            display: inline-block;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 12px;">
            <button class="mobile-toggle" id="mobileToggleBtn" aria-label="Menu"><i class="fas fa-bars"></i></button>
            <div class="brand">
                <i class="fas fa-bolt"></i>
                <span>NEXUS<span style="color: #3b82f6;">SHOP</span></span>
            </div>
        </div>

        <nav class="main-nav" id="desktopNav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#" id="categoriesNavBtn"><i class="fas fa-th-large"></i> Shop</a></li>
                <li><a href="#dealsPremium"><i class="fas fa-fire"></i> Flash Sale</a></li>
                <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
        </nav>

        <div style="display: flex; align-items: center; gap: 12px;">
            <div class="search">
                <i class="fas fa-search" style="color: #94a3b8;"></i>
                <input type="text" id="globalSearch" placeholder="Search products...">
            </div>
            <div class="header-actions" style="display: flex; gap: 6px;">
                <a class="icon-btn" href="#"><i class="far fa-heart"></i></a>
                <a class="cart" href="#" id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCounter">0</span>
                </a>
            </div>
        </div>
    </div>

    <!-- mobile drawer -->
    <div id="mobileDrawer" style="display: none; background: white; border-top: 1px solid #eef2f6; padding: 16px 24px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
            <li><a href="#">🏠 Home</a></li>
            <li><a href="#">🛍️ Categories</a></li>
            <li><a href="#dealsPremium">⚡ Deals</a></li>
            <li><a href="#testimonials">📣 Testimonials</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero -->
    <section class="hero">
        <div class="container hero-content">
            <h1>Beyond the ordinary</h1>
            <p>Curated collections, iconic design, and next‑gen tech. Elevate your lifestyle with limited drops.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-store"></i> Shop Now</button>
                <button class="btn btn-outline-light" id="exploreFlashBtn"><i class="fas fa-clock"></i> Flash Sale</button>
            </div>
        </div>
    </section>

    <!-- Categories section -->
    <section class="container" style="margin: 40px auto 20px;">
        <div class="section-header">
            <h2>Explore collections</h2>
            <p>Discover by category — tailored for your style</p>
        </div>
        <div class="grid-categories" id="modernCategoriesGrid"></div>
    </section>

    <!-- Products grid -->
    <section class="container" style="margin: 50px auto;">
        <div class="section-header">
            <h2>Trending now</h2>
            <p>Most loved picks & editor's choice</p>
        </div>
        <div class="products-grid" id="productsGridModern"></div>
    </section>

    <!-- Flash sale premium -->
    <section id="dealsPremium" class="container" style="margin: 50px auto;">
        <div class="deal-premium">
            <div class="deal-image"></div>
            <div class="deal-content">
                <span class="badge"><i class="fas fa-bolt"></i> LIMITED OFFER</span>
                <h2 style="font-size: 1.9rem; margin: 16px 0 8px;">MacBook Air M2</h2>
                <p style="color: #475569;">Next‑gen performance, all‑day battery life. Save big today.</p>
                <div class="timer-modern" id="countdownWidget">
                    <div class="time-unit"><span id="dealDays">0</span><br>Days</div>
                    <div class="time-unit"><span id="dealHours">00</span><br>Hrs</div>
                    <div class="time-unit"><span id="dealMinutes">00</span><br>Min</div>
                    <div class="time-unit"><span id="dealSeconds">00</span><br>Sec</div>
                </div>
                <div style="display: flex; gap: 16px; align-items: baseline; margin: 16px 0;">
                    <span class="current-price" style="font-size: 2rem; font-weight: 800;">$999</span>
                    <span class="old-price" style="font-size: 1.2rem;">$1,199</span>
                    <span style="background: #ef4444; padding: 4px 12px; border-radius: 40px; color: white;">-17%</span>
                </div>
                <button class="btn btn-primary" id="dealAddCartBtn" style="background: #0f172a;"><i class="fas fa-cart-plus"></i> Add to cart</button>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section id="testimonials" class="container" style="margin: 60px auto;">
        <div class="section-header">
            <h2>Trusted voices</h2>
            <p>What our community says</p>
        </div>
        <div class="testimonials-scroll" id="testimonialsList">
            <!-- dynamic or static but fresh -->
        </div>
    </section>

    <!-- Newsletter premium -->
    <section class="container" style="margin: 40px auto 20px;">
        <div class="newsletter-modern">
            <h3 style="font-size: 1.8rem;">Join the inner circle</h3>
            <p style="opacity: 0.8; margin: 10px 0 20px;">Get early access & exclusive discounts</p>
            <form id="newsletterModernForm" style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap;">
                <input type="email" id="newsEmail" placeholder="Your email address" required>
                <button class="btn btn-primary" type="submit" style="background: white; color: #0f172a;">Subscribe <i class="fas fa-arrow-right"></i></button>
            </form>
            <div id="newsletterFeedback" style="margin-top: 16px; font-size: 0.85rem;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 32px;">
        <div><i class="fas fa-bolt" style="font-size: 1.5rem; color: var(--accent);"></i> <strong>NexusShop</strong><p style="margin-top: 10px; color: #5b6e8c;">Minimal. Powerful. Seamless.</p></div>
        <div><span style="font-weight: 600;">Explore</span><div style="margin-top: 8px;">New arrivals<br>Best sellers<br>Gift cards</div></div>
        <div><span style="font-weight: 600;">Support</span><div style="margin-top: 8px;">FAQ<br>Returns<br>Contact</div></div>
    </div>
    <div class="container text-center" style="margin-top: 32px; border-top: 1px solid #e2e8f0; padding-top: 20px; text-align: center; color: #7e8b9f;">© <span id="currentYear"></span> NexusShop — Visionary commerce</div>
</footer>

<script>
    // ---------- DATA ----------
    const CATEGORIES_MODERN = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen-button' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'wearables', name: 'Wearables', icon: 'fa-clock' },
        { id: 'fashion', name: 'Fashion', icon: 'fa-shirt' },
        { id: 'accessory', name: 'Accessories', icon: 'fa-gem' }
    ];

    const PRODUCTS_LIST = [
        { id: 1, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 4.9, reviews: 231, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro M3', price: 1899, oldPrice: 2099, rating: 5, reviews: 147, img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'Sony WH-1000XM5', price: 399, oldPrice: 449, rating: 4.8, reviews: 621, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 4, title: 'Apple Watch Ultra 2', price: 749, oldPrice: 799, rating: 4.7, reviews: 342, img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'wearables' },
        { id: 5, title: 'Minimalist Backpack', price: 89, oldPrice: 129, rating: 4.9, reviews: 88, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'accessory' },
        { id: 6, title: 'Polo Club T-Shirt', price: 45, oldPrice: 70, rating: 4.5, reviews: 167, img: 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=600&q=80', category: 'fashion' }
    ];

    let cartItemsCount = 0;
    const cartCountSpan = document.getElementById('cartCounter');
    const productsContainer = document.getElementById('productsGridModern');
    const categoriesGridModern = document.getElementById('modernCategoriesGrid');
    const searchInputGlobal = document.getElementById('globalSearch');

    function updateCartUI() {
        cartCountSpan.innerText = cartItemsCount;
    }

    function addToCartById(productId) {
        const product = PRODUCTS_LIST.find(p => p.id === productId);
        if (!product) return;
        cartItemsCount++;
        updateCartUI();
        const btn = document.querySelector(`.add-cart-btn[data-id='${productId}']`);
        if (btn) {
            const originalHTML = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            btn.disabled = true;
            setTimeout(() => {
                btn.innerHTML = originalHTML;
                btn.disabled = false;
            }, 1000);
        }
    }

    function renderProducts(filter = '') {
        let filtered = [...PRODUCTS_LIST];
        if (filter.trim() !== '') {
            const q = filter.toLowerCase();
            filtered = PRODUCTS_LIST.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        }
        productsContainer.innerHTML = filtered.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <h3 style="font-size: 1.1rem;">${escapeHtml(p.title)}</h3>
                    <div class="price-block">
                        <span class="current-price">$${p.price}</span>
                        ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                    </div>
                    <div class="rating"><i class="fas fa-star"></i> ${p.rating} (${p.reviews})</div>
                    <button class="add-to-cart add-cart-btn" data-id="${p.id}"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartById(id);
            });
        });
    }

    function renderCategoriesModern() {
        categoriesGridModern.innerHTML = CATEGORIES_MODERN.map(cat => `
            <div class="cat-card-modern" data-cat="${cat.name}">
                <i class="fas ${cat.icon}"></i>
                <h4>${cat.name}</h4>
                <p style="font-size: 12px; color:#5b6e8c;">shop now →</p>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card-modern').forEach(el => {
            el.addEventListener('click', () => {
                const catName = el.getAttribute('data-cat');
                searchInputGlobal.value = catName;
                renderProducts(catName);
                document.getElementById('productsGridModern').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
        });
    }

    function escapeHtml(str) { return str.replace(/[&<>]/g, function(m){ if(m === '&') return '&amp;'; if(m === '<') return '&lt;'; if(m === '>') return '&gt;'; return m;}); }

    // countdown timer (1 day + 5h)
    (function initCountdown() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 1);
        targetDate.setHours(targetDate.getHours() + 4);
        function updateTimer() {
            const now = new Date();
            const diff = targetDate - now;
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '0';
                document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00';
                document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        updateTimer();
        setInterval(updateTimer, 1000);
    })();

    // testimonials dynamic
    function loadTestimonials() {
        const testimonialsData = [
            { name: "Sophia Chen", rating: 5, text: "Absolutely obsessed with the quality! Shipping was lightning fast.", avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
            { name: "Marcus Rivera", rating: 5, text: "Best e-commerce experience. The UI feels premium and checkout smooth.", avatar: "https://randomuser.me/api/portraits/men/32.jpg" }
        ];
        const container = document.getElementById('testimonialsList');
        container.innerHTML = testimonialsData.map(t => `
            <div class="testimonial-card">
                <div style="display: flex; gap: 12px; align-items: center;"><img src="${t.avatar}" style="width: 48px; height: 48px; border-radius: 50%; object-fit: cover;"><div><strong>${t.name}</strong><div class="rating">${'★'.repeat(t.rating)}</div></div></div>
                <p style="margin-top: 14px;">“${t.text}”</p>
            </div>
        `).join('');
    }

    // newsletter
    document.getElementById('newsletterModernForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        const feedbackDiv = document.getElementById('newsletterFeedback');
        if (!email || !email.includes('@')) {
            feedbackDiv.innerHTML = '<span style="color:#facc15;">Valid email required</span>';
            return;
        }
        feedbackDiv.innerHTML = '<span style="color: #a5f3fc;">✨ Subscribed! Welcome to the club.</span>';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => feedbackDiv.innerHTML = '', 3000);
    });

    // Event listeners
    document.getElementById('shopNowBtn').addEventListener('click', () => productsContainer.scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreFlashBtn').addEventListener('click', () => document.getElementById('dealsPremium').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('dealAddCartBtn').addEventListener('click', () => {
        cartItemsCount++;
        updateCartUI();
        alert('🔥 MacBook Air M2 added to cart!');
    });

    searchInputGlobal.addEventListener('input', (e) => renderProducts(e.target.value));
    document.getElementById('mobileToggleBtn').addEventListener('click', () => {
        const drawer = document.getElementById('mobileDrawer');
        drawer.style.display = drawer.style.display === 'none' ? 'block' : 'none';
    });
    document.getElementById('categoriesNavBtn')?.addEventListener('click', (e) => { e.preventDefault(); document.querySelector('.grid-categories').scrollIntoView({ behavior: 'smooth' }); });

    function init() {
        renderCategoriesModern();
        renderProducts('');
        loadTestimonials();
        updateCartUI();
        document.getElementById('currentYear').innerText = new Date().getFullYear();
    }
    init();
</script>
</body>
</html>
