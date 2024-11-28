import React from "react";
import Header from "../../Header";
import Footer from "../../Footer";
import "./warranty.css";

function Warranty() {
  return (
    <>
      <Header />
      <div className="warrant-content">
        <h1>Гарантія</h1>
        <ul className="warrant__list">
          <li className="warrant__list__item">
            Як здати товар на гарантійний ремонт?
          </li>
          <li className="warrant__list__item">
            Які товари підлягають гарантійному ремонту?
          </li>
          <li className="warrant__list__item">
            Куди звернутися за гарантійним обслуговуванням?
          </li>
          <li className="warrant__list__item">
            Якщо сервісний центр не може відремонтувати товар за гарантійний
            період?
          </li>
          <li className="warrant__list__item">
            У яких випадках гарантія не надається?
          </li>
        </ul>
      </div>
      <Footer />
    </>
  );
}

export default Warranty;
