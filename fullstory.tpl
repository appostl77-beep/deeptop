<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title|default:"Полная история"} | RateHub</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: {
                            50: '#f0f9ff',
                            100: '#e0f2fe',
                            200: '#bae6fd',
                            300: '#7dd3fc',
                            400: '#38bdf8',
                            500: '#0ea5e9',
                            600: '#0284c7',
                            700: '#0369a1',
                            800: '#075985',
                            900: '#0c4a6e',
                        },
                        secondary: {
                            50: '#f8fafc',
                            100: '#f1f5f9',
                            200: '#e2e8f0',
                            300: '#cbd5e1',
                            400: '#94a3b8',
                            500: '#64748b',
                            600: '#475569',
                            700: '#334155',
                            800: '#1e293b',
                            900: '#0f172a',
                        }
                    }
                }
            }
        }

        function openTab(evt, tabName) {
            // Hide all tab contents
            const tabContents = document.getElementsByClassName("tab-content");
            for (let i = 0; i < tabContents.length; i++) {
                tabContents[i].classList.remove("active");
            }

            // Remove active class from all tab links
            const tabLinks = document.getElementsByClassName("tab-link");
            for (let i = 0; i < tabLinks.length; i++) {
                tabLinks[i].classList.remove("border-primary-500", "text-primary-600");
                tabLinks[i].classList.add("border-transparent", "text-gray-500");
            }

            // Show the current tab and add active class
            document.getElementById(tabName).classList.add("active");
            evt.currentTarget.classList.add("border-primary-500", "text-primary-600");
            evt.currentTarget.classList.remove("border-transparent", "text-gray-500");
        }

        document.addEventListener('DOMContentLoaded', function() {
            // Initialize rating stars
            const stars = document.querySelectorAll('.rating-star');
            stars.forEach(star => {
                star.addEventListener('click', function() {
                    const rating = parseInt(this.getAttribute('data-rating'));
                    stars.forEach((s, index) => {
                        if (index < rating) {
                            s.classList.remove('text-gray-300');
                            s.classList.add('text-yellow-400');
                        } else {
                            s.classList.remove('text-yellow-400');
                            s.classList.add('text-gray-300');
                        }
                    });
                });
            });
        });
    </script>
</head>
<body class="bg-gray-50 text-gray-800 font-sans">
    <!-- Header -->
    <header class="bg-white shadow-sm">
        <div class="container mx-auto px-4 py-3">
            <div class="flex flex-col md:flex-row md:items-center justify-between gap-4">
                <div class="flex items-center">
                    <a href="index.html" class="flex items-center">
                        <div class="w-10 h-10 rounded-lg bg-primary-500 flex items-center justify-center text-white font-bold text-xl">RH</div>
                        <span class="ml-2 text-xl font-semibold text-primary-700">RateHub</span>
                    </a>
                </div>
                
                <div class="flex-1 max-w-2xl px-4">
                    <div class="relative">
                        <input type="text" placeholder="Поиск рейтингов..." class="w-full pl-4 pr-10 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent">
                        <button class="absolute right-0 top-0 h-full px-3 text-gray-500 hover:text-primary-600">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
                
                <div class="flex items-center space-x-3">
                    <button class="flex items-center px-4 py-2 bg-primary-500 text-white rounded-lg hover:bg-primary-600 transition">
                        <i class="fas fa-plus mr-2"></i>
                        <span>Добавить</span>
                    </button>
                    <button class="flex items-center px-4 py-2 border border-primary-500 text-primary-500 rounded-lg hover:bg-primary-50 transition">
                        <i class="fas fa-user mr-2"></i>
                        <span>Войти</span>
                    </button>
                </div>
            </div>
            
            {include file="modules/topmenu.tpl"}
        </div>
    </header>

    <!-- Main Content -->
    <main class="container mx-auto px-4 py-8">
        <div class="flex flex-col lg:flex-row gap-8">
            <!-- Sidebar -->
            <aside class="lg:w-1/4 flex flex-col gap-6 sticky-sidebar">
                <!-- Product Info -->
                <div class="bg-white rounded-lg shadow p-4">
                    <div class="text-center mb-4">
                        <img src="{$product_image|default:'https://via.placeholder.com/200x200'}" alt="{$product_name|default:'Продукт'}" class="w-32 h-32 mx-auto rounded-lg object-cover">
                        <h3 class="font-semibold text-lg mt-2">{$product_name|default:"iPhone 15 Pro Max"}</h3>
                        <p class="text-gray-600 text-sm">{$product_category|default:"Смартфоны"}</p>
                    </div>
                    
                    <div class="space-y-3">
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Средний рейтинг:</span>
                            <div class="flex items-center">
                                <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                <span class="font-semibold">{$avg_rating|default:"4.8"}</span>
                            </div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Всего голосов:</span>
                            <span class="font-semibold">{$total_votes|default:"1.2K"}</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Просмотры:</span>
                            <span class="font-semibold">{$views|default:"5.6K"}</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Цена:</span>
                            <span class="font-semibold text-green-600">{$price|default:"149 999₽"}</span>
                        </div>
                    </div>
                </div>
                
                <!-- Rating Distribution -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Распределение оценок</h3>
                    <div class="space-y-2">
                        <div class="flex items-center">
                            <span class="text-sm text-gray-600 w-8">5★</span>
                            <div class="flex-1 mx-2 bg-gray-200 rounded-full h-2">
                                <div class="bg-yellow-400 h-2 rounded-full" style="width: 65%"></div>
                            </div>
                            <span class="text-sm text-gray-600 w-8">65%</span>
                        </div>
                        <div class="flex items-center">
                            <span class="text-sm text-gray-600 w-8">4★</span>
                            <div class="flex-1 mx-2 bg-gray-200 rounded-full h-2">
                                <div class="bg-yellow-400 h-2 rounded-full" style="width: 20%"></div>
                            </div>
                            <span class="text-sm text-gray-600 w-8">20%</span>
                        </div>
                        <div class="flex items-center">
                            <span class="text-sm text-gray-600 w-8">3★</span>
                            <div class="flex-1 mx-2 bg-gray-200 rounded-full h-2">
                                <div class="bg-yellow-400 h-2 rounded-full" style="width: 10%"></div>
                            </div>
                            <span class="text-sm text-gray-600 w-8">10%</span>
                        </div>
                        <div class="flex items-center">
                            <span class="text-sm text-gray-600 w-8">2★</span>
                            <div class="flex-1 mx-2 bg-gray-200 rounded-full h-2">
                                <div class="bg-yellow-400 h-2 rounded-full" style="width: 3%"></div>
                            </div>
                            <span class="text-sm text-gray-600 w-8">3%</span>
                        </div>
                        <div class="flex items-center">
                            <span class="text-sm text-gray-600 w-8">1★</span>
                            <div class="flex-1 mx-2 bg-gray-200 rounded-full h-2">
                                <div class="bg-yellow-400 h-2 rounded-full" style="width: 2%"></div>
                            </div>
                            <span class="text-sm text-gray-600 w-8">2%</span>
                        </div>
                    </div>
                </div>
                
                <!-- Quick Actions -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Быстрые действия</h3>
                    <div class="space-y-2">
                        <button class="w-full flex items-center justify-center px-4 py-2 bg-primary-500 text-white rounded-lg hover:bg-primary-600 transition">
                            <i class="fas fa-star mr-2"></i>
                            Оценить
                        </button>
                        <button class="w-full flex items-center justify-center px-4 py-2 border border-primary-500 text-primary-500 rounded-lg hover:bg-primary-50 transition">
                            <i class="fas fa-heart mr-2"></i>
                            В избранное
                        </button>
                        <button class="w-full flex items-center justify-center px-4 py-2 border border-gray-300 text-gray-700 rounded-lg hover:bg-gray-50 transition">
                            <i class="fas fa-share mr-2"></i>
                            Поделиться
                        </button>
                    </div>
                </div>
                
                <!-- Related Products -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Похожие товары</h3>
                    <div class="space-y-3">
                        <div class="flex items-center space-x-3 p-2 hover:bg-gray-50 rounded-lg transition">
                            <img src="https://via.placeholder.com/50x50" alt="Product" class="w-12 h-12 rounded object-cover">
                            <div class="flex-1">
                                <h4 class="font-medium text-sm">Samsung Galaxy S23 Ultra</h4>
                                <div class="flex items-center text-xs text-gray-500">
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span>4.6</span>
                                </div>
                            </div>
                        </div>
                        <div class="flex items-center space-x-3 p-2 hover:bg-gray-50 rounded-lg transition">
                            <img src="https://via.placeholder.com/50x50" alt="Product" class="w-12 h-12 rounded object-cover">
                            <div class="flex-1">
                                <h4 class="font-medium text-sm">Google Pixel 8 Pro</h4>
                                <div class="flex items-center text-xs text-gray-500">
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span>4.7</span>
                                </div>
                            </div>
                        </div>
                        <div class="flex items-center space-x-3 p-2 hover:bg-gray-50 rounded-lg transition">
                            <img src="https://via.placeholder.com/50x50" alt="Product" class="w-12 h-12 rounded object-cover">
                            <div class="flex-1">
                                <h4 class="font-medium text-sm">OnePlus 11</h4>
                                <div class="flex items-center text-xs text-gray-500">
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span>4.4</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>
            
            <!-- Main Content -->
            <div class="lg:w-3/4">
                <!-- Breadcrumb -->
                <nav class="text-sm text-gray-500 mb-6">
                    <ol class="flex items-center space-x-2">
                        <li><a href="main.tpl" class="hover:text-primary-500 transition">Главная</a></li>
                        <li><i class="fas fa-chevron-right text-xs"></i></li>
                        <li><a href="category.tpl" class="hover:text-primary-500 transition">{$category|default:"Техника"}</a></li>
                        <li><i class="fas fa-chevron-right text-xs"></i></li>
                        <li class="text-gray-800">{$title|default:"Полная история"}</li>
                    </ol>
                </nav>
                
                <!-- Story Header -->
                <article class="bg-white rounded-lg shadow overflow-hidden mb-8">
                    <div class="p-6 border-b border-gray-200">
                        <div class="flex items-start justify-between mb-4">
                            <div class="flex-1">
                                <h1 class="text-3xl font-bold text-gray-800 mb-2">{$title|default:"Полная история"}</h1>
                                <p class="text-gray-600 mb-3">{$description|default:"Подробный обзор и анализ продукта с детальным описанием всех характеристик и возможностей"}</p>
                                <div class="flex items-center space-x-4 text-sm text-gray-500">
                                    <span><i class="fas fa-user mr-1"></i> {$author|default:"Автор"}</span>
                                    <span><i class="fas fa-calendar mr-1"></i> {$date|default:"15 декабря 2023"}</span>
                                    <span><i class="fas fa-eye mr-1"></i> {$views|default:"5.6K"} просмотров</span>
                                    <span><i class="fas fa-clock mr-1"></i> {$read_time|default:"8 мин"} чтения</span>
                                </div>
                            </div>
                            <div class="text-right">
                                <div class="flex items-center text-yellow-400 mb-2">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <span class="text-sm text-gray-500">{$rating|default:"4.8"} ({$votes|default:"1.2K"} голосов)</span>
                            </div>
                        </div>
                        
                        <!-- Tags -->
                        <div class="flex flex-wrap gap-2">
                            <span class="bg-primary-100 text-primary-800 px-3 py-1 rounded-full text-sm">{$category|default:"Техника"}</span>
                            <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm">{$tag1|default:"Смартфоны"}</span>
                            <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm">{$tag2|default:"2023"}</span>
                            <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm">{$tag3|default:"Обзор"}</span>
                        </div>
                    </div>
                    
                    <!-- Main Image -->
                    <div class="relative">
                        <img src="{$main_image|default:'https://via.placeholder.com/800x400'}" alt="{$title|default:'Полная история'}" class="w-full h-64 object-cover">
                        <div class="absolute inset-0 bg-black bg-opacity-20"></div>
                        <div class="absolute bottom-4 left-4 text-white">
                            <h2 class="text-2xl font-bold">{$product_name|default:"iPhone 15 Pro Max"}</h2>
                            <p class="text-lg">{$product_subtitle|default:"Флагманский смартфон Apple"}</p>
                        </div>
                    </div>
                </article>
                
                <!-- Tabs -->
                <div class="bg-white rounded-lg shadow">
                    <div class="border-b border-gray-200">
                        <nav class="flex space-x-8 px-6">
                            <button class="tab-link py-4 px-1 border-b-2 border-primary-500 text-primary-600 font-medium" onclick="openTab(event, 'tab-overview')">
                                Обзор
                            </button>
                            <button class="tab-link py-4 px-1 border-b-2 border-transparent text-gray-500 hover:text-gray-700 font-medium" onclick="openTab(event, 'tab-specs')">
                                Характеристики
                            </button>
                            <button class="tab-link py-4 px-1 border-b-2 border-transparent text-gray-500 hover:text-gray-700 font-medium" onclick="openTab(event, 'tab-reviews')">
                                Отзывы
                            </button>
                            <button class="tab-link py-4 px-1 border-b-2 border-transparent text-gray-500 hover:text-gray-700 font-medium" onclick="openTab(event, 'tab-comments')">
                                Комментарии
                            </button>
                            <button class="tab-link py-4 px-1 border-b-2 border-transparent text-gray-500 hover:text-gray-700 font-medium" onclick="openTab(event, 'tab-video')">
                                Видео
                            </button>
                            <button class="tab-link py-4 px-1 border-b-2 border-transparent text-gray-500 hover:text-gray-700 font-medium" onclick="openTab(event, 'tab-links')">
                                Ссылки
                            </button>
                        </nav>
                    </div>
                    
                    <!-- Tab Content -->
                    <div class="p-6">
                        <!-- Overview Tab -->
                        <div id="tab-overview" class="tab-content active">
                            <div class="prose max-w-none">
                                {$overview_content|default:"<h2>Подробный обзор iPhone 15 Pro Max</h2>
                                
                                <p>iPhone 15 Pro Max — это флагманский смартфон Apple, который представляет собой вершину технологических достижений компании. В этой статье мы рассмотрим все аспекты устройства, от дизайна до производительности.</p>
                                
                                <h3>Дизайн и материалы</h3>
                                <p>iPhone 15 Pro Max получил новый дизайн с использованием титанового сплава, что делает его более прочным и легким по сравнению с предыдущими моделями. Устройство доступно в четырех цветах: Natural Titanium, Blue Titanium, White Titanium и Black Titanium.</p>
                                
                                <h3>Дисплей</h3>
                                <p>6.7-дюймовый Super Retina XDR дисплей с технологией ProMotion обеспечивает плавную работу с частотой обновления до 120 Гц. Максимальная яркость достигает 2000 нит на солнце, что делает экран отлично читаемым в любых условиях.</p>
                                
                                <h3>Производительность</h3>
                                <p>Новый чип A17 Pro обеспечивает беспрецедентную производительность для мобильных устройств. 3-нанометровый процессор с 6-ядерным GPU обеспечивает плавную работу всех приложений и игр.</p>
                                
                                <h3>Камера</h3>
                                <p>Система камер включает в себя основную камеру 48 Мп, ультраширокоугольную камеру 12 Мп и телеобъектив 12 Мп с 5-кратным оптическим зумом. Новая система стабилизации обеспечивает отличное качество фото и видео даже в сложных условиях.</p>
                                
                                <h3>Батарея</h3>
                                <p>Батарея емкостью 4441 мАч обеспечивает до 29 часов воспроизведения видео. Поддержка быстрой зарядки позволяет зарядить устройство до 50% за 30 минут.</p>
                                
                                <h3>Выводы</h3>
                                <p>iPhone 15 Pro Max — это выдающееся устройство, которое устанавливает новые стандарты для смартфонов. Отличная камера, мощная производительность и премиальный дизайн делают его лучшим выбором для тех, кто ищет топовое устройство.</p>"}
                            </div>
                        </div>
                        
                        <!-- Specifications Tab -->
                        <div id="tab-specs" class="tab-content">
                            <h3 class="text-xl font-semibold mb-4">Технические характеристики</h3>
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div>
                                    <h4 class="font-semibold text-lg mb-3">Основные характеристики</h4>
                                    <div class="space-y-2">
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Экран:</span>
                                            <span class="font-medium">6.7" Super Retina XDR</span>
                                        </div>
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Разрешение:</span>
                                            <span class="font-medium">2796 x 1290 пикселей</span>
                                        </div>
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Процессор:</span>
                                            <span class="font-medium">A17 Pro</span>
                                        </div>
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Память:</span>
                                            <span class="font-medium">256 ГБ / 512 ГБ / 1 ТБ</span>
                                        </div>
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">ОЗУ:</span>
                                            <span class="font-medium">8 ГБ</span>
                                        </div>
                                    </div>
                                </div>
                                
                                <div>
                                    <h4 class="font-semibold text-lg mb-3">Камера</h4>
                                    <div class="space-y-2">
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Основная камера:</span>
                                            <span class="font-medium">48 Мп</span>
                                        </div>
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Ультраширокоугольная:</span>
                                            <span class="font-medium">12 Мп</span>
                                        </div>
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Телеобъектив:</span>
                                            <span class="font-medium">12 Мп (5x)</span>
                                        </div>
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Фронтальная камера:</span>
                                            <span class="font-medium">12 Мп</span>
                                        </div>
                                        <div class="flex justify-between py-2 border-b border-gray-100">
                                            <span class="text-gray-600">Видео:</span>
                                            <span class="font-medium">4K 60fps</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Reviews Tab -->
                        <div id="tab-reviews" class="tab-content">
                            <h3 class="text-xl font-semibold mb-4">Отзывы пользователей</h3>
                            <div class="space-y-6">
                                <div class="border border-gray-200 rounded-lg p-4">
                                    <div class="flex items-start space-x-4">
                                        <div class="w-12 h-12 bg-primary-500 rounded-full flex items-center justify-center text-white font-semibold">
                                            АИ
                                        </div>
                                        <div class="flex-1">
                                            <div class="flex items-center justify-between mb-2">
                                                <div>
                                                    <span class="font-medium">Алексей Иванов</span>
                                                    <span class="text-xs text-gray-500 ml-2">2 дня назад</span>
                                                </div>
                                                <div class="flex items-center">
                                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                                    <span class="font-medium">5.0</span>
                                                </div>
                                            </div>
                                            <h4 class="font-semibold mb-2">Отличный смартфон!</h4>
                                            <p class="text-gray-700 mb-3">Купил неделю назад. Очень доволен покупкой. Камера просто потрясающая, особенно ночные снимки. Производительность на высоте, все работает очень плавно. Единственный минус - цена, но качество того стоит.</p>
                                            <div class="flex items-center text-sm text-gray-500">
                                                <button class="flex items-center mr-4 hover:text-primary-500 transition">
                                                    <i class="far fa-thumbs-up mr-1"></i>
                                                    <span>12</span>
                                                </button>
                                                <button class="flex items-center mr-4 hover:text-primary-500 transition">
                                                    <i class="far fa-thumbs-down mr-1"></i>
                                                    <span>2</span>
                                                </button>
                                                <button class="hover:text-primary-500 transition">Ответить</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="border border-gray-200 rounded-lg p-4">
                                    <div class="flex items-start space-x-4">
                                        <div class="w-12 h-12 bg-green-500 rounded-full flex items-center justify-center text-white font-semibold">
                                            МП
                                        </div>
                                        <div class="flex-1">
                                            <div class="flex items-center justify-between mb-2">
                                                <div>
                                                    <span class="font-medium">Мария Петрова</span>
                                                    <span class="text-xs text-gray-500 ml-2">5 дней назад</span>
                                                </div>
                                                <div class="flex items-center">
                                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                                    <span class="font-medium">4.5</span>
                                                </div>
                                            </div>
                                            <h4 class="font-semibold mb-2">Хороший, но дорогой</h4>
                                            <p class="text-gray-700 mb-3">Купила неделю назад. Очень довольна, но цена кусается. Камера действительно на уровне, но не уверена, что стоит таких денег. Может, подождать скидок?</p>
                                            <div class="flex items-center text-sm text-gray-500">
                                                <button class="flex items-center mr-4 hover:text-primary-500 transition">
                                                    <i class="far fa-thumbs-up mr-1"></i>
                                                    <span>8</span>
                                                </button>
                                                <button class="flex items-center mr-4 hover:text-primary-500 transition">
                                                    <i class="far fa-thumbs-down mr-1"></i>
                                                    <span>3</span>
                                                </button>
                                                <button class="hover:text-primary-500 transition">Ответить</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Comments Tab -->
                        <div id="tab-comments" class="tab-content">
                            <h3 class="text-xl font-semibold mb-4">Комментарии ({$comments_count|default:"24"})</h3>
                            
                            <!-- Add Comment -->
                            <div class="mb-6 p-4 border border-gray-200 rounded-lg">
                                <textarea placeholder="Написать комментарий..." class="w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent resize-none" rows="3"></textarea>
                                <div class="flex justify-between items-center mt-3">
                                    <span class="text-sm text-gray-500">Осталось символов: 500</span>
                                    <button class="px-4 py-2 bg-primary-500 text-white rounded-lg hover:bg-primary-600 transition">
                                        Отправить
                                    </button>
                                </div>
                            </div>
                            
                            <!-- Comments List -->
                            <div class="space-y-4">
                                <div class="flex space-x-4 p-4 border border-gray-200 rounded-lg">
                                    <div class="w-10 h-10 bg-primary-500 rounded-full flex items-center justify-center text-white font-semibold">
                                        АИ
                                    </div>
                                    <div class="flex-1">
                                        <div class="flex items-center justify-between mb-2">
                                            <div>
                                                <span class="font-medium">Алексей Иванов</span>
                                                <span class="text-xs text-gray-500 ml-2">2 часа назад</span>
                                            </div>
                                            <div class="flex items-center">
                                                <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                                <span class="font-medium">4.5</span>
                                            </div>
                                        </div>
                                        <p class="text-gray-700">Отличная статья! Очень информативно и подробно. Спасибо за обзор.</p>
                                        <div class="flex items-center mt-3 text-sm text-gray-500">
                                            <button class="flex items-center mr-4 hover:text-primary-500 transition">
                                                <i class="far fa-thumbs-up mr-1"></i>
                                                <span>5</span>
                                            </button>
                                            <button class="flex items-center mr-4 hover:text-primary-500 transition">
                                                <i class="far fa-thumbs-down mr-1"></i>
                                                <span>1</span>
                                            </button>
                                            <button class="hover:text-primary-500 transition">Ответить</button>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="flex space-x-4 p-4 border border-gray-200 rounded-lg">
                                    <div class="w-10 h-10 bg-green-500 rounded-full flex items-center justify-center text-white font-semibold">
                                        МП
                                    </div>
                                    <div class="flex-1">
                                        <div class="flex items-center justify-between mb-2">
                                            <div>
                                                <span class="font-medium">Мария Петрова</span>
                                                <span class="text-xs text-gray-500 ml-2">5 часов назад</span>
                                            </div>
                                            <div class="flex items-center">
                                                <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                                <span class="font-medium">4.0</span>
                                            </div>
                                        </div>
                                        <p class="text-gray-700">Хорошо написано, но хотелось бы больше деталей по некоторым пунктам.</p>
                                        <div class="flex items-center mt-3 text-sm text-gray-500">
                                            <button class="flex items-center mr-4 hover:text-primary-500 transition">
                                                <i class="far fa-thumbs-up mr-1"></i>
                                                <span>3</span>
                                            </button>
                                            <button class="flex items-center mr-4 hover:text-primary-500 transition">
                                                <i class="far fa-thumbs-down mr-1"></i>
                                                <span>0</span>
                                            </button>
                                            <button class="hover:text-primary-500 transition">Ответить</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <button class="w-full py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition mt-4">Показать больше комментариев</button>
                        </div>
                        
                        <!-- Video Tab -->
                        <div id="tab-video" class="tab-content">
                            <h4 class="text-lg font-semibold mb-4">Видеообзоры</h4>
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div>
                                    <div class="aspect-w-16 aspect-h-9 bg-gray-200 rounded-lg overflow-hidden mb-2">
                                        <img src="https://via.placeholder.com/800x450" alt="Video" class="w-full h-full object-cover">
                                        <div class="absolute inset-0 flex items-center justify-center">
                                            <button class="w-16 h-16 bg-white bg-opacity-75 rounded-full flex items-center justify-center hover:bg-opacity-100 transition">
                                                <i class="fas fa-play text-primary-600 text-xl"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <h5 class="font-medium">Обзор iPhone 15 Pro Max от iJustine</h5>
                                    <p class="text-sm text-gray-600">12K просмотров · 3 дня назад</p>
                                </div>
                                
                                <div>
                                    <div class="aspect-w-16 aspect-h-9 bg-gray-200 rounded-lg overflow-hidden mb-2">
                                        <img src="https://via.placeholder.com/800x450" alt="Video" class="w-full h-full object-cover">
                                        <div class="absolute inset-0 flex items-center justify-center">
                                            <button class="w-16 h-16 bg-white bg-opacity-75 rounded-full flex items-center justify-center hover:bg-opacity-100 transition">
                                                <i class="fas fa-play text-primary-600 text-xl"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <h5 class="font-medium">Тестирование камеры iPhone 15 Pro Max</h5>
                                    <p class="text-sm text-gray-600">8.5K просмотров · 1 неделя назад</p>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Links Tab -->
                        <div id="tab-links" class="tab-content">
                            <h4 class="text-lg font-semibold mb-4">Полезные ссылки</h4>
                            <div class="space-y-3">
                                <a href="#" class="flex items-center p-3 border border-gray-200 rounded-lg hover:border-primary-400 transition">
                                    <div class="w-10 h-10 bg-primary-100 rounded-lg flex items-center justify-center mr-4">
                                        <i class="fas fa-globe text-primary-600"></i>
                                    </div>
                                    <div class="flex-1">
                                        <h5 class="font-medium">Официальный сайт Apple</h5>
                                        <p class="text-sm text-gray-600">apple.com/iphone-15-pro</p>
                                    </div>
                                    <i class="fas fa-external-link-alt text-gray-400"></i>
                                </a>
                                
                                <a href="#" class="flex items-center p-3 border border-gray-200 rounded-lg hover:border-primary-400 transition">
                                    <div class="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center mr-4">
                                        <i class="fab fa-wikipedia-w text-blue-600"></i>
                                    </div>
                                    <div class="flex-1">
                                        <h5 class="font-medium">Страница в Википедии</h5>
                                        <p class="text-sm text-gray-600">wikipedia.org/wiki/IPhone_15_Pro</p>
                                    </div>
                                    <i class="fas fa-external-link-alt text-gray-400"></i>
                                </a>
                                
                                <a href="#" class="flex items-center p-3 border border-gray-200 rounded-lg hover:border-primary-400 transition">
                                    <div class="w-10 h-10 bg-red-100 rounded-lg flex items-center justify-center mr-4">
                                        <i class="fab fa-youtube text-red-600"></i>
                                    </div>
                                    <div class="flex-1">
                                        <h5 class="font-medium">Канал обзоров на YouTube</h5>
                                        <p class="text-sm text-gray-600">youtube.com/c/iPhoneReviews</p>
                                    </div>
                                    <i class="fas fa-external-link-alt text-gray-400"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    {include file="modules/footer.tpl"}

    <script src="js/lib.js"></script>
</body>
</html>