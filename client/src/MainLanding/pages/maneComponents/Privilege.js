import React from "react";
import "./style/privilege.css";

import delivery from "../../image/icone/delivery.png";
import verify from "../../image/icone/verify.png";
import groceries from "../../image/icone/groceries.png";
import document from "../../image/icone/document.png";
import computer from "../../image/icone/computer.png";
import safebox from "../../image/icone/safebox.png";
import refund from "../../image/icone/refund.png";
import shield from "../../image/icone/shield.png";

function Privilege() {
  return (
    <section className="privilege">
      <div className="privilege__title">
        <h2>Наші переваги</h2>
      </div>
      <div className="privilege__cards">
        <div className="privilege__cards_item">
          <img src={delivery} alt="404" />{" "}
          <span>Експрес доставка за 2 години</span>
        </div>
        <div className="privilege__cards_item">
          <img src={verify} alt="404" />
          <span>Гарантія найкращої якості</span>
        </div>
        <div className="privilege__cards_item">
          <img src={groceries} alt="404" />
          <span>Самовивіз у 10 містах</span>
        </div>
        <div className="privilege__cards_item">
          <img src={document} alt="404" />{" "}
          <span>2 роки сервісного обслуговування</span>
        </div>
        <div className="privilege__cards_item">
          <img src={computer} alt="404" />
          <span>Підключення обладнання</span>
        </div>
        <div className="privilege__cards_item">
          <img src={safebox} alt="404" />
          <span>Бонус програма</span>
        </div>
        <div className="privilege__cards_item">
          <img src={refund} alt="404" />
          <span>Швидкий обмін і повернення</span>
        </div>
        <div className="privilege__cards_item">
          <img src={shield} alt="404" />
          <span>Безстрокова розстрочка</span>
        </div>
      </div>
      <div className="privilege__promo">
        <div className="privilege__promo_stock">
          <div className="stock__txt">
            <h3>Не знайшли нічого цікавого?</h3>
            <span>Можливо ви знайдете щось серед наших акцій</span>
            <p> Усі акції</p>
          </div>
        </div>
        <div className="privilege__promo_offers">
          <div className="offers__txt">
            <h3>Отримуйте найцікавіші пропозиції першими</h3>
            <input placeholder="Введіть Email"></input>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Privilege;
