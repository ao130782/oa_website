# Создать index.html и style.css с интеграцией премиального фото (Photo.jpg)
index_html = '''
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SharkFin Consulting</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="hero-photo">
            <img src="Photo.jpg" alt="Олег Анфиногенов" class="profile-photo" />
        </div>
        <h1>Финансовый архитектор будущего</h1>
        <p>Качество Большой четверки по цене фрилансера</p>
    </header>
    <main>
        <section>
            <h2>Обо мне</h2>
            <div class="about-photo">
                <img src="Photo.jpg" alt="Олег Анфиногенов" class="profile-photo" />
            </div>
            <p>20+ лет опыта. ACCA. Проектное финансирование. Персональный подход.</p>
        </section>
    </main>
    <footer>
        <p>&copy; 2025 SharkFin Consulting</p>
    </footer>
</body>
</html>
'''

style_css = '''
body {
    font-family: 'Inter', Arial, sans-serif;
    background: #fff;
    margin: 0;
    color: #112d3d;
}
.hero-photo, .about-photo {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 2em;
    margin-bottom: 2em;
}
.profile-photo {
    width: 220px;
    height: 220px;
    object-fit: cover;
    border-radius: 50%;
    box-shadow: 0 8px 32px rgba(30, 64, 175, 0.15), 0 2px 4px rgba(10,110,180,0.06);
    border: 6px solid #fff;
    transition: transform 0.4s cubic-bezier(.19,1,.22,1), opacity 0.5s;
    opacity: 0.95;
}
.profile-photo:hover {
    transform: scale(1.04) translateY(-6px) rotate(-2deg);
    opacity: 1;
}
@media (max-width: 600px) {
    .profile-photo {
        width: 120px;
        height: 120px;
    }
}
h1 {
    text-align: center;
    font-size: 2.5em;
    font-weight: 700;
}
p, h2 {
    text-align: center;
}
footer p {
    text-align: center;
    padding: 2em 0;
    background: #f2f6fa;
    color: #789;
}
'''

# Сохраняем файлы
with open('index.html', 'w', encoding='utf-8') as f:
    f.write(index_html)
with open('style.css', 'w', encoding='utf-8') as f:
    f.write(style_css)

'index.html', 'style.css'