import React from "react";
import "../css/sort.css";

function Sort({ priceAscending, priceDescending, priceDiscount }) {
  return (
    <div className="products__memory">
      <h2>Відсортувати</h2>
      <ul>
        <li
          className="products__memory-sort__list-item"
          onClick={() => priceAscending()}
        >
          <p>За зростанням</p>
        </li>
        <li
          className="products__memory-sort__list-item"
          onClick={() => priceDescending()}
        >
          <p>За спаданням</p>
        </li>
        <li
          className="products__memory-sort__list-item"
          onClick={() => priceDiscount()}
        >
          <p>Спочатку акції</p>
        </li>
      </ul>
    </div>
  );
}

export default Sort;
