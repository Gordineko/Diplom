import React from "react";
import "../style/footer.css";
import kk from "../image/company/123.png";

function Footer() {
  return (
    <footer>
      <section className="footer__content">
        <div className="container">
          <div className="footer__lists">
            <h1>DOM1STORE</h1>
            <ul className="footer__list">
              <span>Компанія</span>
              <li>Про компанію</li>
              <li>Партнери</li>
              <li>Правила продажу</li>
              <li>Новини</li>
            </ul>
            <ul className="footer__list">
              <span>Покупцям</span>
              <li>Доставка</li>
              <li>Гарантія</li>
              <li>Пункти видачі</li>
              <li>Адреси</li>
            </ul>
            <ul className="footer__list">
              <span>Інформація</span>
              <li>Постачальники</li>
              <li>Тендери</li>
              <li>Благодійність</li>
              <li>Партнерська програма</li>
            </ul>
            <ul className="footer__list">
              <span>Контакти</span>
              <li>+38 (066) 321 0323</li>
              <li>swifsup@gmail.com</li>
              <li></li>
            </ul>
          </div>
          <div className="footer__confidentiality margin">
            <span>Політика конфіденційності</span>
            <span>Згода на обробку даних</span>
          </div>
          <div className="footer__confidentiality by">
            <span id="by__text">Project was developed by</span>
            <img src={kk} alt="404" />
          </div>
        </div>
      </section>
    </footer>
  );
}

export default Footer;
