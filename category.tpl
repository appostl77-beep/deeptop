<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$category_name|default:"Категория"} | RateHub</title>
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
                <!-- Category Info -->
                <div class="bg-white rounded-lg shadow p-4">
                    <div class="text-center mb-4">
                        <div class="w-16 h-16 bg-primary-500 rounded-lg flex items-center justify-center text-white text-2xl mx-auto mb-3">
                            <i class="{$category_icon|default:'fas fa-mobile-alt'}"></i>
                        </div>
                        <h3 class="font-semibold text-lg">{$category_name|default:"Техника"}</h3>
                        <p class="text-gray-600 text-sm">{$category_description|default:"Все о технике и гаджетах"}</p>
                    </div>
                    
                    <div class="space-y-3">
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Рейтингов:</span>
                            <span class="font-semibold">{$ratings_count|default:"156"}</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Товаров:</span>
                            <span class="font-semibold">{$products_count|default:"1.2K"}</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Подписчиков:</span>
                            <span class="font-semibold">{$subscribers_count|default:"5.6K"}</span>
                        </div>
                    </div>
                </div>
                
                <!-- Filters -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Фильтры</h3>
                    
                    <!-- Sort -->
                    <div class="mb-4">
                        <label class="block text-sm font-medium text-gray-700 mb-2">Сортировка</label>
                        <select class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent">
                            <option>По популярности</option>
                            <option>По рейтингу</option>
                            <option>По дате</option>
                            <option>По цене</option>
                        </select>
                    </div>
                    
                    <!-- Price Range -->
                    <div class="mb-4">
                        <label class="block text-sm font-medium text-gray-700 mb-2">Цена</label>
                        <div class="space-y-2">
                            <div class="flex items-center">
                                <input type="checkbox" id="price-1" class="mr-2">
                                <label for="price-1" class="text-sm">До 10 000₽</label>
                            </div>
                            <div class="flex items-center">
                                <input type="checkbox" id="price-2" class="mr-2">
                                <label for="price-2" class="text-sm">10 000₽ - 50 000₽</label>
                            </div>
                            <div class="flex items-center">
                                <input type="checkbox" id="price-3" class="mr-2">
                                <label for="price-3" class="text-sm">50 000₽ - 100 000₽</label>
                            </div>
                            <div class="flex items-center">
                                <input type="checkbox" id="price-4" class="mr-2">
                                <label for="price-4" class="text-sm">Более 100 000₽</label>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Rating -->
                    <div class="mb-4">
                        <label class="block text-sm font-medium text-gray-700 mb-2">Рейтинг</label>
                        <div class="space-y-2">
                            <div class="flex items-center">
                                <input type="checkbox" id="rating-5" class="mr-2">
                                <label for="rating-5" class="text-sm flex items-center">
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-gray-600 ml-1">(5.0)</span>
                                </label>
                            </div>
                            <div class="flex items-center">
                                <input type="checkbox" id="rating-4" class="mr-2">
                                <label for="rating-4" class="text-sm flex items-center">
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-gray-300 mr-1"><i class="far fa-star"></i></span>
                                    <span class="text-gray-600 ml-1">(4.0+)</span>
                                </label>
                            </div>
                            <div class="flex items-center">
                                <input type="checkbox" id="rating-3" class="mr-2">
                                <label for="rating-3" class="text-sm flex items-center">
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                    <span class="text-gray-300 mr-1"><i class="far fa-star"></i></span>
                                    <span class="text-gray-300 mr-1"><i class="far fa-star"></i></span>
                                    <span class="text-gray-600 ml-1">(3.0+)</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Brand -->
                    <div class="mb-4">
                        <label class="block text-sm font-medium text-gray-700 mb-2">Бренд</label>
                        <div class="space-y-2">
                            <div class="flex items-center">
                                <input type="checkbox" id="brand-apple" class="mr-2">
                                <label for="brand-apple" class="text-sm">Apple</label>
                            </div>
                            <div class="flex items-center">
                                <input type="checkbox" id="brand-samsung" class="mr-2">
                                <label for="brand-samsung" class="text-sm">Samsung</label>
                            </div>
                            <div class="flex items-center">
                                <input type="checkbox" id="brand-google" class="mr-2">
                                <label for="brand-google" class="text-sm">Google</label>
                            </div>
                            <div class="flex items-center">
                                <input type="checkbox" id="brand-oneplus" class="mr-2">
                                <label for="brand-oneplus" class="text-sm">OnePlus</label>
                            </div>
                        </div>
                    </div>
                    
                    <button class="w-full py-2 bg-primary-500 text-white rounded-lg hover:bg-primary-600 transition">
                        Применить фильтры
                    </button>
                </div>
                
                <!-- Popular Tags -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Популярные теги</h3>
                    <div class="flex flex-wrap gap-2">
                        <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm hover:bg-primary-100 hover:text-primary-800 transition cursor-pointer">Смартфоны</span>
                        <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm hover:bg-primary-100 hover:text-primary-800 transition cursor-pointer">Ноутбуки</span>
                        <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm hover:bg-primary-100 hover:text-primary-800 transition cursor-pointer">Планшеты</span>
                        <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm hover:bg-primary-100 hover:text-primary-800 transition cursor-pointer">Наушники</span>
                        <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm hover:bg-primary-100 hover:text-primary-800 transition cursor-pointer">Часы</span>
                        <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm hover:bg-primary-100 hover:text-primary-800 transition cursor-pointer">Камеры</span>
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
                        <li class="text-gray-800">{$category_name|default:"Категория"}</li>
                    </ol>
                </nav>
                
                <!-- Category Header -->
                <div class="bg-white rounded-lg shadow p-6 mb-8">
                    <div class="flex items-center justify-between mb-4">
                        <div>
                            <h1 class="text-3xl font-bold text-gray-800 mb-2">{$category_name|default:"Категория"}</h1>
                            <p class="text-gray-600">{$category_description|default:"Все о технике и гаджетах. Находите лучшие товары, читайте обзоры и делитесь своим мнением."}</p>
                        </div>
                        <div class="text-right">
                            <div class="text-2xl font-bold text-primary-600">{$ratings_count|default:"156"}</div>
                            <div class="text-sm text-gray-500">рейтингов</div>
                        </div>
                    </div>
                    
                    <!-- Category Stats -->
                    <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                        <div class="text-center p-3 bg-gray-50 rounded-lg">
                            <div class="text-lg font-semibold text-primary-600">{$products_count|default:"1.2K"}</div>
                            <div class="text-sm text-gray-500">Товаров</div>
                        </div>
                        <div class="text-center p-3 bg-gray-50 rounded-lg">
                            <div class="text-lg font-semibold text-primary-600">{$subscribers_count|default:"5.6K"}</div>
                            <div class="text-sm text-gray-500">Подписчиков</div>
                        </div>
                        <div class="text-center p-3 bg-gray-50 rounded-lg">
                            <div class="text-lg font-semibold text-primary-600">{$avg_rating|default:"4.5"}</div>
                            <div class="text-sm text-gray-500">Средний рейтинг</div>
                        </div>
                        <div class="text-center p-3 bg-gray-50 rounded-lg">
                            <div class="text-lg font-semibold text-primary-600">{$reviews_count|default:"2.8K"}</div>
                            <div class="text-sm text-gray-500">Отзывов</div>
                        </div>
                    </div>
                </div>
                
                <!-- Top Products -->
                <section class="mb-8">
                    <div class="flex items-center justify-between mb-4">
                        <h2 class="text-2xl font-bold text-gray-800">Топ товары</h2>
                        <a href="#" class="text-primary-600 hover:text-primary-700 transition">Смотреть все</a>
                    </div>
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <!-- Product Card 1 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="relative">
                                <img src="https://via.placeholder.com/300x200" alt="Product" class="w-full h-48 object-cover">
                                <div class="absolute top-2 right-2 bg-red-500 text-white px-2 py-1 rounded text-xs font-semibold">Топ</div>
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">iPhone 15 Pro Max</h3>
                                <p class="text-gray-600 text-sm mb-3">Флагманский смартфон Apple с лучшей камерой</p>
                                <div class="flex items-center justify-between mb-3">
                                    <div class="flex items-center">
                                        <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                        <span class="font-medium">4.8</span>
                                        <span class="text-gray-500 text-sm ml-1">(1.2K)</span>
                                    </div>
                                    <span class="text-green-600 font-semibold">149 999₽</span>
                                </div>
                                <div class="flex justify-between items-center">
                                    <span class="bg-primary-100 text-primary-800 px-2 py-1 rounded text-xs">Смартфоны</span>
                                    <button class="text-primary-600 hover:text-primary-700 transition">
                                        <i class="fas fa-heart"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Product Card 2 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="relative">
                                <img src="https://via.placeholder.com/300x200" alt="Product" class="w-full h-48 object-cover">
                                <div class="absolute top-2 right-2 bg-blue-500 text-white px-2 py-1 rounded text-xs font-semibold">Новинка</div>
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">Samsung Galaxy S23 Ultra</h3>
                                <p class="text-gray-600 text-sm mb-3">Мощный смартфон с S Pen</p>
                                <div class="flex items-center justify-between mb-3">
                                    <div class="flex items-center">
                                        <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                        <span class="font-medium">4.6</span>
                                        <span class="text-gray-500 text-sm ml-1">(987)</span>
                                    </div>
                                    <span class="text-green-600 font-semibold">129 999₽</span>
                                </div>
                                <div class="flex justify-between items-center">
                                    <span class="bg-primary-100 text-primary-800 px-2 py-1 rounded text-xs">Смартфоны</span>
                                    <button class="text-gray-400 hover:text-red-500 transition">
                                        <i class="far fa-heart"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Product Card 3 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="relative">
                                <img src="https://via.placeholder.com/300x200" alt="Product" class="w-full h-48 object-cover">
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">MacBook Pro 16"</h3>
                                <p class="text-gray-600 text-sm mb-3">Мощный ноутбук для профессионалов</p>
                                <div class="flex items-center justify-between mb-3">
                                    <div class="flex items-center">
                                        <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                        <span class="font-medium">4.9</span>
                                        <span class="text-gray-500 text-sm ml-1">(756)</span>
                                    </div>
                                    <span class="text-green-600 font-semibold">299 999₽</span>
                                </div>
                                <div class="flex justify-between items-center">
                                    <span class="bg-primary-100 text-primary-800 px-2 py-1 rounded text-xs">Ноутбуки</span>
                                    <button class="text-gray-400 hover:text-red-500 transition">
                                        <i class="far fa-heart"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                
                <!-- Latest Ratings -->
                <section class="mb-8">
                    <div class="flex items-center justify-between mb-4">
                        <h2 class="text-2xl font-bold text-gray-800">Последние рейтинги</h2>
                        <a href="#" class="text-primary-600 hover:text-primary-700 transition">Смотреть все</a>
                    </div>
                    <div class="space-y-4">
                        <!-- Rating Item 1 -->
                        <div class="bg-white rounded-lg shadow p-4 hover:shadow-md transition">
                            <div class="flex items-start space-x-4">
                                <img src="https://via.placeholder.com/80x80" alt="Product" class="w-20 h-20 rounded-lg object-cover">
                                <div class="flex-1">
                                    <div class="flex items-start justify-between mb-2">
                                        <div>
                                            <h3 class="font-semibold text-lg">Топ 10 смартфонов 2023</h3>
                                            <p class="text-gray-600 text-sm">Рейтинг лучших смартфонов по соотношению цена/качество</p>
                                        </div>
                                        <div class="text-right">
                                            <div class="flex items-center text-yellow-400 mb-1">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="text-sm text-gray-500">4.8 (1.2K)</span>
                                        </div>
                                    </div>
                                    <div class="flex items-center justify-between">
                                        <div class="flex items-center space-x-4 text-sm text-gray-500">
                                            <span><i class="fas fa-user mr-1"></i> Алексей Иванов</span>
                                            <span><i class="fas fa-calendar mr-1"></i> 2 дня назад</span>
                                            <span><i class="fas fa-eye mr-1"></i> 5.6K просмотров</span>
                                        </div>
                                        <span class="bg-primary-100 text-primary-800 px-2 py-1 rounded text-xs">Смартфоны</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Rating Item 2 -->
                        <div class="bg-white rounded-lg shadow p-4 hover:shadow-md transition">
                            <div class="flex items-start space-x-4">
                                <img src="https://via.placeholder.com/80x80" alt="Product" class="w-20 h-20 rounded-lg object-cover">
                                <div class="flex-1">
                                    <div class="flex items-start justify-between mb-2">
                                        <div>
                                            <h3 class="font-semibold text-lg">Лучшие ноутбуки для работы</h3>
                                            <p class="text-gray-600 text-sm">Обзор ноутбуков для офисной работы и бизнеса</p>
                                        </div>
                                        <div class="text-right">
                                            <div class="flex items-center text-yellow-400 mb-1">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="far fa-star"></i>
                                            </div>
                                            <span class="text-sm text-gray-500">4.2 (342)</span>
                                        </div>
                                    </div>
                                    <div class="flex items-center justify-between">
                                        <div class="flex items-center space-x-4 text-sm text-gray-500">
                                            <span><i class="fas fa-user mr-1"></i> Мария Петрова</span>
                                            <span><i class="fas fa-calendar mr-1"></i> 5 дней назад</span>
                                            <span><i class="fas fa-eye mr-1"></i> 2.1K просмотров</span>
                                        </div>
                                        <span class="bg-primary-100 text-primary-800 px-2 py-1 rounded text-xs">Ноутбуки</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Rating Item 3 -->
                        <div class="bg-white rounded-lg shadow p-4 hover:shadow-md transition">
                            <div class="flex items-start space-x-4">
                                <img src="https://via.placeholder.com/80x80" alt="Product" class="w-20 h-20 rounded-lg object-cover">
                                <div class="flex-1">
                                    <div class="flex items-start justify-between mb-2">
                                        <div>
                                            <h3 class="font-semibold text-lg">Сравнение планшетов 2023</h3>
                                            <p class="text-gray-600 text-sm">iPad vs Samsung Galaxy Tab - что выбрать?</p>
                                        </div>
                                        <div class="text-right">
                                            <div class="flex items-center text-yellow-400 mb-1">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="text-sm text-gray-500">4.7 (198)</span>
                                        </div>
                                    </div>
                                    <div class="flex items-center justify-between">
                                        <div class="flex items-center space-x-4 text-sm text-gray-500">
                                            <span><i class="fas fa-user mr-1"></i> Дмитрий Сидоров</span>
                                            <span><i class="fas fa-calendar mr-1"></i> 1 неделю назад</span>
                                            <span><i class="fas fa-eye mr-1"></i> 3.4K просмотров</span>
                                        </div>
                                        <span class="bg-primary-100 text-primary-800 px-2 py-1 rounded text-xs">Планшеты</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                
                <!-- Pagination -->
                <div class="flex justify-center">
                    <nav class="flex items-center space-x-2">
                        <button class="px-3 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition disabled:opacity-50 disabled:cursor-not-allowed">
                            <i class="fas fa-chevron-left"></i>
                        </button>
                        <button class="px-3 py-2 bg-primary-500 text-white rounded-lg">1</button>
                        <button class="px-3 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition">2</button>
                        <button class="px-3 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition">3</button>
                        <span class="px-3 py-2 text-gray-500">...</span>
                        <button class="px-3 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition">12</button>
                        <button class="px-3 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition">
                            <i class="fas fa-chevron-right"></i>
                        </button>
                    </nav>
                </div>
            </div>
        </div>
    </main>

    {include file="modules/footer.tpl"}

    <script src="js/lib.js"></script>
</body>
</html>