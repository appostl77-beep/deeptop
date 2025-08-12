<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RateHub - Пользовательские рейтинги</title>
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
                <!-- Telegram Widget -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Наш Telegram</h3>
                    <div class="flex items-center justify-between bg-primary-50 p-3 rounded-lg">
                        <div class="flex items-center">
                            <div class="w-10 h-10 rounded-full bg-primary-500 flex items-center justify-center text-white">
                                <i class="fab fa-telegram"></i>
                            </div>
                            <div class="ml-3">
                                <p class="text-sm font-medium">RateHub News</p>
                                <p class="text-xs text-gray-500">2.5K подписчиков</p>
                            </div>
                        </div>
                        <button class="px-3 py-1 bg-primary-500 text-white text-xs rounded hover:bg-primary-600 transition">Подписаться</button>
                    </div>
                </div>
                
                <!-- Rating Menu -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Популярные рейтинги</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Топ 10 смартфонов 2023</a></li>
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Лучшие ноутбуки для работы</a></li>
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Рейтинг фильмов 2023 года</a></li>
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Топ игр для PlayStation 5</a></li>
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Лучшие книги года</a></li>
                    </ul>
                </div>
                
                <!-- Site Sections -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Разделы сайта</h3>
                    <div class="grid grid-cols-2 gap-2">
                        <a href="#" class="p-2 bg-gray-50 hover:bg-primary-50 rounded text-center text-sm transition">
                            <i class="fas fa-mobile-alt text-primary-500 mb-1"></i>
                            <p>Техника</p>
                        </a>
                        <a href="#" class="p-2 bg-gray-50 hover:bg-primary-50 rounded text-center text-sm transition">
                            <i class="fas fa-film text-primary-500 mb-1"></i>
                            <p>Кино</p>
                        </a>
                        <a href="#" class="p-2 bg-gray-50 hover:bg-primary-50 rounded text-center text-sm transition">
                            <i class="fas fa-gamepad text-primary-500 mb-1"></i>
                            <p>Игры</p>
                        </a>
                        <a href="#" class="p-2 bg-gray-50 hover:bg-primary-50 rounded text-center text-sm transition">
                            <i class="fas fa-book text-primary-500 mb-1"></i>
                            <p>Книги</p>
                        </a>
                        <a href="#" class="p-2 bg-gray-50 hover:bg-primary-50 rounded text-center text-sm transition">
                            <i class="fas fa-utensils text-primary-500 mb-1"></i>
                            <p>Еда</p>
                        </a>
                        <a href="#" class="p-2 bg-gray-50 hover:bg-primary-50 rounded text-center text-sm transition">
                            <i class="fas fa-car text-primary-500 mb-1"></i>
                            <p>Авто</p>
                        </a>
                    </div>
                </div>
            </aside>
            
            <!-- Main Content -->
            <div class="lg:w-3/4">
                <section class="mb-8">
                    <h2 class="text-2xl font-bold text-gray-800 mb-4">Популярные рейтинги</h2>
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <!-- Rating Card 1 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="h-40 bg-gradient-to-r from-primary-400 to-primary-600 flex items-center justify-center text-white">
                                <i class="fas fa-mobile-alt text-5xl"></i>
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">Топ 10 смартфонов 2023</h3>
                                <p class="text-gray-600 text-sm mb-3">Рейтинг лучших смартфонов по соотношению цена/качество</p>
                                <div class="flex justify-between items-center text-sm">
                                    <span class="bg-primary-100 text-primary-800 px-2 py-1 rounded">Техника</span>
                                    <span class="text-gray-500">1.2K голосов</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Rating Card 2 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="h-40 bg-gradient-to-r from-blue-400 to-blue-600 flex items-center justify-center text-white">
                                <i class="fas fa-film text-5xl"></i>
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">Лучшие фильмы года</h3>
                                <p class="text-gray-600 text-sm mb-3">Самые популярные и высокооцененные фильмы 2023 года</p>
                                <div class="flex justify-between items-center text-sm">
                                    <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded">Кино</span>
                                    <span class="text-gray-500">856 голосов</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Rating Card 3 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="h-40 bg-gradient-to-r from-purple-400 to-purple-600 flex items-center justify-center text-white">
                                <i class="fas fa-gamepad text-5xl"></i>
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">Игры для PS5</h3>
                                <p class="text-gray-600 text-sm mb-3">Лучшие игры для PlayStation 5 по версии игроков</p>
                                <div class="flex justify-between items-center text-sm">
                                    <span class="bg-purple-100 text-purple-800 px-2 py-1 rounded">Игры</span>
                                    <span class="text-gray-500">1.5K голосов</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                
                <section class="mb-8">
                    <h2 class="text-2xl font-bold text-gray-800 mb-4">Новые рейтинги</h2>
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <!-- New Rating Card 1 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="h-40 bg-gradient-to-r from-green-400 to-green-600 flex items-center justify-center text-white">
                                <i class="fas fa-laptop text-5xl"></i>
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">Ноутбуки для работы</h3>
                                <p class="text-gray-600 text-sm mb-3">Лучшие ноутбуки для офисной работы и бизнеса</p>
                                <div class="flex justify-between items-center text-sm">
                                    <span class="bg-green-100 text-green-800 px-2 py-1 rounded">Техника</span>
                                    <span class="text-gray-500">342 голоса</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- New Rating Card 2 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="h-40 bg-gradient-to-r from-yellow-400 to-yellow-600 flex items-center justify-center text-white">
                                <i class="fas fa-book text-5xl"></i>
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">Книжные новинки</h3>
                                <p class="text-gray-600 text-sm mb-3">Самые ожидаемые книжные новинки этого сезона</p>
                                <div class="flex justify-between items-center text-sm">
                                    <span class="bg-yellow-100 text-yellow-800 px-2 py-1 rounded">Книги</span>
                                    <span class="text-gray-500">198 голосов</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- New Rating Card 3 -->
                        <div class="bg-white rounded-lg shadow overflow-hidden hover:shadow-md transition">
                            <div class="h-40 bg-gradient-to-r from-red-400 to-red-600 flex items-center justify-center text-white">
                                <i class="fas fa-car text-5xl"></i>
                            </div>
                            <div class="p-4">
                                <h3 class="font-semibold text-lg mb-2">Автомобили года</h3>
                                <p class="text-gray-600 text-sm mb-3">Лучшие новые автомобили 2023 года в разных категориях</p>
                                <div class="flex justify-between items-center text-sm">
                                    <span class="bg-red-100 text-red-800 px-2 py-1 rounded">Авто</span>
                                    <span class="text-gray-500">512 голосов</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                
                <section class="mb-8">
                    <h2 class="text-2xl font-bold text-gray-800 mb-4">Топ недели</h2>
                    <div class="bg-white rounded-lg shadow p-6">
                        <div class="space-y-4">
                            <div class="flex items-center p-3 bg-gray-50 rounded-lg">
                                <div class="w-12 h-12 bg-primary-500 rounded-lg flex items-center justify-center text-white font-bold text-lg mr-4">1</div>
                                <div class="flex-1">
                                    <h4 class="font-semibold">iPhone 15 Pro Max</h4>
                                    <p class="text-sm text-gray-600">Смартфоны</p>
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
                            
                            <div class="flex items-center p-3 bg-gray-50 rounded-lg">
                                <div class="w-12 h-12 bg-gray-400 rounded-lg flex items-center justify-center text-white font-bold text-lg mr-4">2</div>
                                <div class="flex-1">
                                    <h4 class="font-semibold">Samsung Galaxy S23 Ultra</h4>
                                    <p class="text-sm text-gray-600">Смартфоны</p>
                                </div>
                                <div class="text-right">
                                    <div class="flex items-center text-yellow-400 mb-1">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    <span class="text-sm text-gray-500">4.6 (987)</span>
                                </div>
                            </div>
                            
                            <div class="flex items-center p-3 bg-gray-50 rounded-lg">
                                <div class="w-12 h-12 bg-yellow-600 rounded-lg flex items-center justify-center text-white font-bold text-lg mr-4">3</div>
                                <div class="flex-1">
                                    <h4 class="font-semibold">MacBook Pro 16"</h4>
                                    <p class="text-sm text-gray-600">Ноутбуки</p>
                                </div>
                                <div class="text-right">
                                    <div class="flex items-center text-yellow-400 mb-1">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <span class="text-sm text-gray-500">4.9 (756)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>

    {include file="modules/footer.tpl"}

    <script src="js/lib.js"></script>
</body>
</html>