# Lesson.create(
#   title: '',
#   slug: '',
#   description: '',
#   is_project: false,
#   section: Section.find_by(slug: '')
#   )


# Course.destroy_all
# Section.destroy_all
# Lesson.destroy_all

# user = User.new(
#     name: 'Frey',
#     email: "frey@list.ru",
#     password: "00000000",
#     password_confirmation: "00000000",
#     role: 'admin'
# )
# user.save!


# == Первый курс == #

Course.create(
  title: 'Введение в веб-разработку',
  slug: 'introduction-to-web-development',
  short_description: 'Этот короткий курс начнет обучение с нуля, ответит на стандартные задаваемые вопросы о практике и карьере в сфере веб-разработки. Вы получите намного лучшее представление о том, во что вы готовитесь погрузиться!',
  description: 'Этот короткий курс ответит на стандартные вопросы о практике и карьере в сфере веб-разработки. Даже если вы явно ощущаете, что программирование и путь веб-разработчика словно созданы для вас, вы, вероятно, всё еще не особо представляете, чем на самом деле занимаются разработчики... и это то, с чего начинают все, так что всё в порядке.',
  you_learn: ['Что на самом деле делают веб-разработчики', 'Рабочие инструменты', 'Как найти работу веб-разработчиком'],
  you_build: ['Не спешите, скоро вы приступите к практике!'],
  teaser: 'Начните отсюда!',
  is_active: true
  )

Section.create(
  title: 'О веб-разработчиках',
  slug: 'about-web-developers',
  description: 'Начните с начала и узнайте, чем на самом деле занимаются веб-разработчики и на что похожа сфера веб-разработки.',
  course: Course.find_by(slug: 'introduction-to-web-development')
  )

Lesson.create(
  title: 'Чем занимается веб-разработчик',
  slug: 'what-a-web-developer-does',
  description: 'От того, чем на самом деле занимается разработчик к ключевым различиям вроде разделения на бэк-енд и фронт-енд, веб-разработчиков против веб-дизайнеров и веб-сайтов против веб-приложений',
  is_project: false,
  section: Section.find_by(slug: 'about-web-developers'),
  course: Course.find_by(slug: 'introduction-to-web-development'),
  url: '/introduction_to_web_development/what_does_a_web_dev_do.md'
  )

Lesson.create(
  title: 'Работа и карьера в веб-разработке',
  slug: 'web-development-jobs-and-careers',
  description: 'Несколько кратких примеров ролей веб-разработчиков в различных организациях',
  is_project: false,
  section: Section.find_by(slug: 'about-web-developers'),
  course: Course.find_by(slug: 'introduction-to-web-development'),
  url: '/introduction_to_web_development/web_dev_jobs.md'
  )

Lesson.create(
  title: 'Рабочие инструменты',
  slug: 'tools-of-trade',
  description: 'Обзор различных инструментов, испольуемых веб-разработчиками для выполнения своей работы',
  is_project: false,
  section: Section.find_by(slug: 'about-web-developers'),
  course: Course.find_by(slug: 'introduction-to-web-development'),
  url: '/introduction_to_web_development/tools_of_trade.md'
  )

Lesson.create(
  title: 'Сообщества веб-разработчиков',
  slug: 'web-development-communities',
  description: 'Разработчики - на удивление социальная группа, и здесь вы узнаете, как найти их онлайн и лично',
  is_project: false,
  section: Section.find_by(slug: 'about-web-developers'),
  course: Course.find_by(slug: 'introduction-to-web-development'),
  url: '/introduction_to_web_development/web_dev_communities.md'
  )

Lesson.create(
  title: 'Лучшие веб-разработчики',
  slug: 'the-best-web-developers',
  description: 'Несколько советов о том, что делает веб-разработчика великим',
  is_project: false,
  section: Section.find_by(slug: 'about-web-developers'),
  course: Course.find_by(slug: 'introduction-to-web-development'),
  url: '/introduction_to_web_development/the_best_web_devs.md'
  )


Lesson.create(
  title: 'Ищем работу в качестве веб-разработчика',
  slug: 'getting-hired-as-a-web-developer',
  description: 'Кратко проясняем, что на самом деле хотят получить работодатели от веб-разработчика и как может выглядеть процесс найма',
  is_project: false,
  section: Section.find_by(slug: 'about-web-developers'),
  course: Course.find_by(slug: 'introduction-to-web-development'),
  url: '/introduction_to_web_development/getting_hired_as_a_web_dev.md'
  )


Lesson.create(
  title: 'Заключение',
  slug: 'conclusion',
  description: 'Общий взгляд на предстоящее путешествие вниз по кроличьей норе',
  is_project: false,
  section: Section.find_by(slug: 'about-web-developers'),
  course: Course.find_by(slug: 'introduction-to-web-development'),
  url: '/introduction_to_web_development/conclusion.md'
  )

# == Второй курс == #

Course.create(
  title: 'Основы веб-разработки',
  slug: 'basics-of-web-development',
  short_description: 'Этот курс для всех, кто начинает с нуля или не совсем комфортно чувствует себя при работе с командной строкой, HTML, CSS, Javascript, Ruby, веб-фреймворками, Git или другими базовыми технологиями веб-разработки. Мы покроем МНОЖЕСТВО тем -- к концу этого объемного курса вы будете готовы к изучению наших более углубленных курсов или продолжать исследования самостоятельно.',
  description: 'Теперь вы знаете, чем занимаются веб-разработчики, настало время подумать о том, как они этим занимаются. В этом курсе вы изучите базовые концепции веб-программирования. К его завершению вы будете способны собрать простую веб-страницу, стилизовать её, добавить интерактивные элементы и чувствовать себя комфортно при работе с командной строкой. Вы попрактикуетесь в написании простых скриптов на Ruby и Javascript, а так же познакомитесь с такими вещами, как Git и базы данных. Вы получите множество новых знаний и будете готовы "замарать руки" в практическом применении этих знаний во всех темах, которые мы будем изучать в последующих углубленных курсах.',
  you_learn: ['Как на самом деле работает Веб', 'Основы HTML, CSS и Javascript', 'Основы Ruby, Rails, Git и баз данных'],
  you_build: ['Главная страница Google на HTML/CSS', 'Динамический блокнот на JS/jQuery', 'Серия испытаний на Ruby по принципу "Тесты вперед"'],
  teaser: 'Здоровая порция всего необходимого',
  is_active: false
  )

Section.create(
  title: 'Основы',
  slug: 'the-basics',
  description: 'Этот раздел покроет базовые знания, которые вам необходимо иметь, прежде чем окунуться в более "программные" аспекты веб-разработки. Так же вы научитесь устанавливать необходимое программное обеспечение на ваш компьютер.',
  course: Course.find_by(slug: 'basics-of-web-development')
  )

Lesson.create(
  title: 'Как работает этот курс',
  slug: 'how-this-course-will-work',
  description: 'Прежде, чем окунуться в обучение, ознакомьтесь с тем, что вас ждет',
  is_project: false,
  section: Section.find_by(slug: 'the-basics'),
  course: Course.find_by(slug: 'basics-of-web-development'),
  url: '/web_development_101/how_this_course_will_work.md'
  )

Lesson.create(
  title: 'Как работает Сеть',
  slug: 'how-does-the-web-work',
  description: 'Трудно будет заниматься веб-разработкой без понимания, как работает Интернет',
  is_project: false,
  section: Section.find_by(slug: 'the-basics'),
  course: Course.find_by(slug: 'basics-of-web-development'),
  url: '/web_development_101/how_does_the_web_work.md'
  )

Lesson.create(
  title: 'Как работает ваш компьютер',
  slug: 'how-does-your-computer-work',
  description: 'Командная строка: любима, ненавидима, пугающа... Но это уже не про вас.',
  is_project: false,
  section: Section.find_by(slug: 'the-basics'),
  course: Course.find_by(slug: 'basics-of-web-development'),
  url: '/web_development_101/how_does_your_computer_work.md'
  )

Lesson.create(
  title: 'Необходимые термины',
  slug: 'terms-to-know',
  description: 'Краткое описание терминов, которые необходимо понимать, прежде чем двигаться дальше',
  is_project: false,
  section: Section.find_by(slug: 'the-basics'),
  course: Course.find_by(slug: 'basics-of-web-development'),
  url: '/web_development_101/terms_to_know.md'
  )

Lesson.create(
  title: 'Проект: установки',
  slug: 'project-installations',
  description: 'Несколько вещей, которые необходимо установить, прежде чем начать писать код',
  is_project: false,
  section: Section.find_by(slug: 'the-basics'),
  course: Course.find_by(slug: 'basics-of-web-development'),
  url: '/web_development_101/project_installations.md.md'
  )


# = Третий курс = #

Course.create(
  title: 'Программирование на Ruby',
  slug: 'ruby-programming',
  short_description: 'Когда вы завершили курс "Основы веб-разработки", этот курс погрузит вас в чудесный мир Ruby. Вы изучите комбинацию из основ программирования и лучших практик, а так же получите возможность создать несколько разных проектов по мере прохождения курса.',
  description: 'В этом курсе вы изучите Ruby, язык, специально разработанный так, чтобы на нем было приятно писать. К его завершению вы создадите несколько довольно интересных проектов, включая Тик Так, Висельника, реальный веб-сервер и Шахматы. Вы научитесь собирать спамбота для Twitter (он реально спамит!), сохранять и открывать файлы, тестировать код, разделите ваш спагетти-код на отдельные классы и даже воспроизведете некоторые базовые алгоритмы и структуры данных для решения сложных проблем. В общем, начнете чувствовать себя намного более "программистом", и это будет справедливое чувство.',
  you_learn: ['Как писать чистый, эффективный и модульный код', 'Работа с файлами и скриптами', 'Базовые алгоритмы и структуры данных'],
  you_build: ['Тиктак, Быки и Коровы, Висельник', 'Сервер для командной строки и браузер', 'Шахматы (серьезно)'],
  teaser: 'Скоро будет доступно!',
  is_active: false
  )


# = Четвертый курс = #

Course.create(
  title: 'Ruby on Rails',
  slug: 'ruby-on-rails',
  short_description: 'Теперь, когда вы освоились с Ruby, настало время применить эти знания и узнать, как быстро создавать веб-сайты, используя Ruby on Rails. К концу этого курса вы сможете уверенно создать и развернуть реальный веб-сайт. Собственно, вы проделаете это множество раз.',
  description: 'В этом курсе вы будете постоянно писать код, каждый проект будет чуть более продвинутым, чем предыдущий. Вы создадите кучу Rails-проектов с нуля, включая один полноценный туториал, через который мы пройдем, и собственное полномасштабное Rails-приложение. Что более важно, вы узнаете, как разобрать сайт на данные и архитектуру, а затем построить вокруг них приложение. В конце концов вы обретете уверенность и знания, которых будет достаточно, чтобы создать простой веб-сайт примерно за час.',
  you_learn: ['Как создать и развернуть веб-приложение с нуля', 'MVC как свои пять пальцев', 'Разработка архитектуры для нового сайта'],
  you_build: ['Полноценный клон Twitter', 'Приложение для заказа авиабилетов', 'Куча другого, с простых приложений до API и Facebook'],
  teaser: 'Скоро будет доступно!',
  is_active: false
  )


# = Пятый курс = #

Course.create(
  title: 'HTML5 и CSS3',
  slug: 'html5-and-css3',
  short_description: 'Теперь вы профессионал в создании бэкенда для сайта, настало время как следует вникнуть в фронтенд, чтобы ваши сайты перестали быть уродливыми и вы начали понимать DOM. Этот короткий курс даст вам инструменты для прекращения борьбы с вашим CSS и начала создания более логично выглядящих сайтов.',
  description: 'В этом курсе вы преодолеете свой страх перед CSS и начнете понимать некоторые из фундаментальных принципов хорошего дизайна сайтов. Это не полный курс по фронтенд-дизайну, но он должен дать вам инструменты, которые понадобятся для глубокого понимания CSS-фреймворков и для создания приятно выглядящего фасада к вашему гениальному бэкенду.',
  you_learn: ['Все о стилизации при помощи CSS', 'Как эффективно использовать фронтенд-фреймворк вроде Bootstrap', 'Базовые принципы разметки и дизайна сайта'],
  you_build: ['Визуальные копии нескольких популярных сайтов', 'Свой собственный фронтенд-фреймворк', 'Охапку CSS-трюков и тактик'],
  teaser: 'Скоро будет доступно!',
  is_active: false
  )



# = Шестой курс = #

Course.create(
  title: 'Javascript и jQuery',
  slug: 'Javascript-and-jquery',
  short_description: 'Последний компонент в вашем арсенале веб-разработчика -- это умение научить ваш фронтенд динамически реагировать на действия пользователя. В этом курсе вы узнаете, как использовать Javascript и jQuery для взаимодействия с DOM и как делать вещи вроде выпадающих меню, параллакс-эффекта при прокрутке, одностраничных приложений и даже игр. Это свяжет все изученное ранее воедино в один прекрасный комплект.',
  description: 'Javascript прямо сейчас захватывает мир -- веб-приложения становятся все более и более завязанными на фронтенд. Хотя JS пока чаще всего используется для анимации выпадающих меню и валидации форм, он (при некоторой помощи магии jQuery) вырос в инструмент для создания полноценных фронтенд-приложений, включая одностраничные.',
  you_learn: ['Как создавать интерактивные игры при помощи HTML5 canvas', 'Как использовать весь набор jQuery-эффектов на DOM', 'Как организовать ваш JS-код в модульные части'],
  you_build: ['Javascript-фронтенд для вашего Rails-бэкенда', 'Собственный Javascript-фреймворк', 'Змейку, Ракеты и многое другое'],
  teaser: 'Скоро будет доступно!',
  is_active: false
  )

# = Седьмой курс = #

Course.create(
  title: 'Ищем работу в качестве веб-разработчика',
  slug: 'getting-hired-as-a-web-developer',
  short_description: 'Вы зашли чертовски далеко и готовы работать веб-разработчиком, но, как вы могли понять, дорога открытий лишь начинается. К счастью, теперь вы достаточно полезны, чтобы другие платили вам за то, что вы будете продолжать создавать и обучаться... и в этом коротком курсе мы покажем, как этого добиться.',
  description: 'Вы все еще имеете кучу времени, чтобы учиться (это действительно путешествие длинной в жизнь), но сейчас лучший способом заниматься обучением - окружить себя отличными разработчиками. Этот курс полностью посвящен следующему шагу -- что еще вам нужно знать, где искать работу, как проходить интервью и как, в конце концов, получить предложение о работе.',
  you_learn: ['Где найти подходящие объявления о найме', 'Как эффективно продавать себя нанимателям', 'Как проходить технические интервью'],
  you_build: ['Ваш собственный сайт-портфолио', 'Базовые знания о навыках, необходимых для решения более сложных проблем', 'Четкая стратегия, как быть нанятым'],
  teaser: 'Скоро будет доступно!',
  is_active: false
  )
