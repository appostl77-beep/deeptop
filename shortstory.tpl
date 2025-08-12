<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title|default:"Короткая история"} | RateHub</title>
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
                <!-- Quick Stats -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Статистика</h3>
                    <div class="space-y-3">
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Просмотры:</span>
                            <span class="font-semibold">{$views|default:"1.2K"}</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Голоса:</span>
                            <span class="font-semibold">{$votes|default:"856"}</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-gray-600">Рейтинг:</span>
                            <div class="flex items-center">
                                <span class="text-yellow-400 mr-1"><i class="fas fa-star"></i></span>
                                <span class="font-semibold">{$rating|default:"4.5"}</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Related Ratings -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Похожие рейтинги</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Топ 10 смартфонов 2023</a></li>
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Лучшие камеры телефонов</a></li>
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Смартфоны до 50000₽</a></li>
                        <li><a href="#" class="flex items-center text-gray-700 hover:text-primary-500 transition"><i class="fas fa-chevron-right text-xs text-primary-400 mr-2"></i> Флагманские телефоны</a></li>
                    </ul>
                </div>
                
                <!-- Share -->
                <div class="bg-white rounded-lg shadow p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-3">Поделиться</h3>
                    <div class="flex space-x-2">
                        <a href="#" class="flex-1 bg-blue-600 text-white p-2 rounded text-center hover:bg-blue-700 transition">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="flex-1 bg-blue-400 text-white p-2 rounded text-center hover:bg-blue-500 transition">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="flex-1 bg-blue-700 text-white p-2 rounded text-center hover:bg-blue-800 transition">
                            <i class="fab fa-vk"></i>
                        </a>
                        <a href="#" class="flex-1 bg-blue-500 text-white p-2 rounded text-center hover:bg-blue-600 transition">
                            <i class="fab fa-telegram-plane"></i>
                        </a>
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
                        <li class="text-gray-800">{$title|default:"Короткая история"}</li>
                    </ol>
                </nav>
                
                <!-- Story Content -->
                <article class="bg-white rounded-lg shadow overflow-hidden">
                    <!-- Header -->
                    <div class="p-6 border-b border-gray-200">
                        <div class="flex items-start justify-between mb-4">
                            <div>
                                <h1 class="text-3xl font-bold text-gray-800 mb-2">{$title|default:"Короткая история"}</h1>
                                <p class="text-gray-600 mb-3">{$description|default:"Краткое описание истории или рейтинга"}</p>
                                <div class="flex items-center space-x-4 text-sm text-gray-500">
                                    <span><i class="fas fa-user mr-1"></i> {$author|default:"Автор"}</span>
                                    <span><i class="fas fa-calendar mr-1"></i> {$date|default:"15 декабря 2023"}</span>
                                    <span><i class="fas fa-eye mr-1"></i> {$views|default:"1.2K"} просмотров</span>
                                </div>
                            </div>
                            <div class="text-right">
                                <div class="flex items-center text-yellow-400 mb-2">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <span class="text-sm text-gray-500">{$rating|default:"4.0"} ({$votes|default:"856"} голосов)</span>
                            </div>
                        </div>
                        
                        <!-- Tags -->
                        <div class="flex flex-wrap gap-2">
                            <span class="bg-primary-100 text-primary-800 px-3 py-1 rounded-full text-sm">{$category|default:"Техника"}</span>
                            <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm">{$tag1|default:"Смартфоны"}</span>
                            <span class="bg-gray-100 text-gray-800 px-3 py-1 rounded-full text-sm">{$tag2|default:"2023"}</span>
                        </div>
                    </div>
                    
                    <!-- Content -->
                    <div class="p-6">
                        <div class="prose max-w-none">
                            {$content|default:"<p>Здесь будет содержимое короткой истории или рейтинга. Это может быть краткий обзор, список топ-5 или топ-10, или любая другая информация, которая не требует полной страницы.</p>
                            
                            <h3>Краткий обзор</h3>
                            <p>В этой короткой истории мы рассмотрим основные моменты и ключевые особенности. Это может быть быстрый обзор продукта, краткий список рекомендаций или любая другая информация, которая помещается в компактном формате.</p>
                            
                            <h3>Основные преимущества</h3>
                            <ul>
                                <li>Краткость и информативность</li>
                                <li>Быстрое чтение</li>
                                <li>Ключевые моменты</li>
                                <li>Практическая польза</li>
                            </ul>"}
                        </div>
                        
                        <!-- Quick Rating -->
                        <div class="mt-8 p-4 bg-gray-50 rounded-lg">
                            <h4 class="font-semibold text-lg mb-3">Ваша оценка</h4>
                            <div class="flex items-center space-x-4">
                                <div class="flex items-center space-x-1">
                                    <button class="rating-star text-2xl text-gray-300 hover:text-yellow-400 transition" data-rating="1">
                                        <i class="fas fa-star"></i>
                                    </button>
                                    <button class="rating-star text-2xl text-gray-300 hover:text-yellow-400 transition" data-rating="2">
                                        <i class="fas fa-star"></i>
                                    </button>
                                    <button class="rating-star text-2xl text-gray-300 hover:text-yellow-400 transition" data-rating="3">
                                        <i class="fas fa-star"></i>
                                    </button>
                                    <button class="rating-star text-2xl text-gray-300 hover:text-yellow-400 transition" data-rating="4">
                                        <i class="fas fa-star"></i>
                                    </button>
                                    <button class="rating-star text-2xl text-gray-300 hover:text-yellow-400 transition" data-rating="5">
                                        <i class="fas fa-star"></i>
                                    </button>
                                </div>
                                <button class="px-4 py-2 bg-primary-500 text-white rounded-lg hover:bg-primary-600 transition">
                                    Оценить
                                </button>
                            </div>
                        </div>
                    </div>
                </article>
                
                <!-- Comments Section -->
                <div class="mt-8 bg-white rounded-lg shadow p-6">
                    <h3 class="text-xl font-semibold text-gray-800 mb-4">Комментарии ({$comments_count|default:"12"})</h3>
                    
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
                                <p class="text-gray-700">Отличная статья! Очень информативно и кратко. Спасибо за обзор.</p>
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
            </div>
        </div>
    </main>

    {include file="modules/footer.tpl"}

    <script src="js/lib.js"></script>
    <script>
        // Rating stars functionality
        document.addEventListener('DOMContentLoaded', function() {
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
</body>
</html>