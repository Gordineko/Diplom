import React from "react";
import Header from "../../Header";
import Footer from "../../Footer";
import "./about.css";

function AboutUs() {
  return (
    <>
      <Header />
      <div className="about-content">
        <h1 className="about__title">Про нас</h1>
        <div className="about-txt">
          <h2>Наша мета − бути корисними</h2>
          <span>
            Ми віримо, що речі існують для того, щоб робити життя простішим,
            приємнішим і добрішим. Тому й пошук тієї самої речі повинен бути
            швидким, зручним і приємним. Ми не просто продаємо побутову техніку,
            електроніку, прикраси або вино. Ми допомагаємо знайти саме те, що
            треба, в одному місці та без зайвих хвилювань, щоб ви не витрачали
            життя на пошуки, а просто жили щасливо. Rozetka − це універсальна
            відповідь на будь-який запит, початок пошуку та його кінцева
            зупинка, справжній помічник. Ми назавжди позбавляємо своїх покупців
            від неприємних компромісів, виконуємо бажання і даємо змогу мріяти
            сміливіше. Завдяки розумному пошуку та чесному сервісу ми робимо
            життя наших клієнтів трішки кращим просто зараз.
          </span>
        </div>
        <div className="about-txt">
          <h2>Щастя починається з простих речей</h2>
          <span>
            І ми допомагаємо ці речі знайти: закоханим підказуємо, чим здивувати
            один одного; спортивних мотивуємо ніколи не здаватись і швидше
            прогресувати; хазяйновитим даємо можливість створити справжній
            затишок. Ми хочемо, щоб ви знали, що шукаєте, і могли аргументувати
            свій вибір. Для цього ми знімаємо відеоогляди, пишемо статті та
            відстежуємо новинки.
          </span>
        </div>
        <div className="about-txt">
          <h2>Щоб мрії здійснювалися легко</h2>
          <span>
            Ми відкриваємо величезні офлайн-магазини, щоб ви могли прийти,
            потримати в руках і протестувати вподобаний продукт. Ми хочемо, щоб
            у нас був найкращий у світі сервіс, тому навчаємо співробітників не
            тільки технічній частині справи, а й роботі з клієнтом.
          </span>
        </div>
        <div className="about-txt">
          <h2>Зручна доставка</h2>
          <span>
            І звичайно, будь-який товар можна замовити з доставкою. Ми
            доставляємо замовлення по Києву протягом одного дня, а по Україні −
            на наступний день. Усе − без передоплати, якщо потрібно − у кредит.
            Оплата готівкова або безготівкова − як вам зручніше.
          </span>
        </div>
        <div className="about-txt">
          <h2>Далі − більше</h2>
          <span>
            Ми хочемо, щоб у наших клієнтів взагалі ніколи не виникало запитання
            «де знайти щось потрібне». Тому сьогодні ми не тільки найбільший
            онлайн-ритейлер, а ще й майданчик для продавців. Хтось почне з нами
            свій перший бізнес (або розширить наявний), а хтось − привезе в
            Україну продукти, яких поки що немає. Це вигідно всім: і покупцям, і
            продавцям, і навіть нам − адже так ми допоможемо більшій кількості
            людей стати трохи щасливішими.
          </span>
        </div>
        <div className="about-txt">
          <h2></h2>
          <span></span>
        </div>
      </div>
      <Footer />
    </>
  );
}

export default AboutUs;
