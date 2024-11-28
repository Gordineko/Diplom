import React from "react";
import Main from "../../Main";
import Header from "../../Header";
import Footer from "../../Footer";
import "./delivery.css";

function Delivery() {
  return (
    <>
      <Header />
      <div className="delivery-content">
        <h1 className="delivery__title">Доставка</h1>
        <ul className="delivery__list">
          <li className="delivery__list__item">
            Як діє доставка товарів продавця Dom1store до відділень служб
            доставки?
          </li>
          <li className="delivery__list__item">
            Хочу зробити замовлення. Коли його зможуть доставити
          </li>
          <li className="delivery__list__item">
            Доставка товарів продавця Dom1store з Польщ
          </li>
          <li className="delivery__list__item">Як діє кур’єрська доставка?</li>
          <li className="delivery__list__item">
            Які документи потрібні для отримання замовлення?
          </li>
        </ul>
      </div>
      <Footer />
    </>
  );
}

export default Delivery;
