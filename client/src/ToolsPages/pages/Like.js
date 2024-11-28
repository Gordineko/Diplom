import React, { useEffect } from "react";
import "../style/like.css";
import { useContext } from "react";
import { CustomContext } from "../../utils/Context";
import Header from "../../MainLanding/pages/Header";
import Footer from "../../MainLanding/pages/Footer";
import ProductItem from "../../AllProducts/components/ProductItem";
import likeimg from "../../MainLanding/image/icone/pngwing.com.png";
import { useNavigate } from "react-router-dom";
import { useState } from "react";
import Loader from "../../MainLanding/Loader";

function Like() {
  const { favored, setFavored } = useContext(CustomContext);
  const [isLoading, setIsLoading] = useState(true);
  const navigate = useNavigate();

  function DelitLikeList() {
    localStorage.removeItem("likes");
    setFavored([]);
  }

  useEffect(() => {
    const timer = setTimeout(() => {
      setIsLoading(false);
    }, 500);

    return () => clearTimeout(timer);
  }, []);

  return (
    <>
      {isLoading ? (
        <div>
          <Loader />
        </div>
      ) : (
        <>
          <Header />
          <div className="favored container">
            <h1>Список бажаного</h1>

            {favored.length != 0 ? (
              <>
                <ul className="favored__list">
                  {favored.map((item) => (
                    <li key={item.id} className="favored__list-item">
                      <ProductItem product={item} />
                    </li>
                  ))}
                </ul>
                <button className="favored__btn-del" onClick={DelitLikeList}>
                  Прибрати все
                </button>
              </>
            ) : (
              <div className="favored__clear">
                <img className="favored__clear-img" src={likeimg} alt="404" />
                <span className="favored__clear-txt">
                  Упс! Ваш список бажань порожній
                </span>
                <button
                  className="favored__clear-btn"
                  onClick={() => {
                    navigate("/");
                  }}
                >
                  Перейти на головну
                </button>
              </div>
            )}
          </div>
          <Footer />
        </>
      )}
    </>
  );
}

export default Like;
