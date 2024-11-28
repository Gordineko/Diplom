import React from "react";
import "./style/burger.css";
import prof from "../../image/icone/profile.png";
import rus from "../../image/icone/russia.png";
import ukr from "../../image/icone/ukraine.png";
import usa from "../../image/icone/united-states-of-america.png";
import google from "../../image/icone/game.png";
import apple from "../../image/icone/applestore.png";
import telegram from "../../image/company/telegram.png";
import vk from "../../image/company/vk.png";
import youtub from "../../image/company/youtube.png";
import { useContext } from "react";
import { CustomContext } from "../../../utils/Context";
import { useNavigate } from "react-router-dom";

function Burger({ isActive, handleClick, AuthClick }) {
  const navigate = useNavigate();
  const { users } = useContext(CustomContext);
  const loginHandler = () => {
    handleClick();
    AuthClick();
  };
  return (
    <div className={isActive ? "burger-menu active" : "burger-menu inactive"}>
      <div className="burger-menu_prew">
        <h1>Dom1store</h1>
        <button onClick={handleClick}>x</button>
      </div>

      {users.isAuth ? (
        <div
          className="burger-menu__profile"
          onClick={() => navigate("/personal")}
        >
          <div className="burger-menu__profile_img">
            <img src={prof} alt="404" />
          </div>
          <div className="profile__content">
            <div className="profile__content_txt">
              <div className="profile__content_reg">
                <span>Особистий кобінет</span>
              </div>
            </div>
            <span>Вы успішно авторизувалися</span>
          </div>
        </div>
      ) : (
        <div className="burger-menu__profile" onClick={AuthClick}>
          <div className="burger-menu__profile_img">
            <img src={prof} alt="404" />
          </div>
          <div className="profile__content">
            <div className="profile__content_txt" onClick={AuthClick}>
              <div className="profile__content_login">
                <span>Вхід</span>
              </div>
              <div className="profile__content_reg">
                <span>Реєстрація</span>
              </div>
            </div>
            <span>Авторизуйтесь для отримання розширених можливостей</span>
          </div>
        </div>
      )}

      <div className="burger-menu__sett">
        <ul>
          <li>
            Мова :
            <div className="burger-menu__sett-img">
              <img src={rus} alt="404" />
            </div>
            <div className="burger-menu__sett-img">
              <img src={ukr} alt="404" />
            </div>
            <div className="burger-menu__sett-img">
              <img src={usa} alt="404" />
            </div>
          </li>
          <li>
            Країна :{" "}
            <div className="burger-menu__sett-city">
              <span>Дніпро</span>
            </div>
            <div className="burger-menu__sett-city">
              <span>Київ</span>
            </div>
          </li>
        </ul>
      </div>
      <ul className="burger-menu__list">
        <li
          className="burger-menu__list-item"
          onClick={() => {
            navigate("/like");
          }}
        >
          <span>Товари, що сподобалися</span>
        </li>
        <li className="burger-menu__list-item">
          <span>Довідковий центр</span>
        </li>
        <li
          onClick={() => {
            navigate("/basket");
          }}
          className="burger-menu__list-item"
        >
          <span>Кошик</span>
        </li>
        <li className="burger-menu__list-item">
          <span>О нас</span>
        </li>
        <li className="burger-menu__list-item">
          <span>Контакти</span>
        </li>
        <li className="burger-menu__list-item">
          <span>Повернення товарів</span>
        </li>
        <li className="burger-menu__list-item">
          <span>Гарантія</span>
        </li>
      </ul>
      <div className="burger-menu__app">
        <span>Завантажте наші додатки</span>
        <div className="app__button_group">
          <div className="button_app">
            <img src={google} alt="404" />
            <div className="button_app__txt">
              <p>Завантажити в</p>
              <p className="button_app__txt_store">Google Play</p>
            </div>
          </div>
          <div className="button_app">
            <img src={apple} alt="404" />
            <div className="button_app__txt">
              <p>Завантажити в</p>
              <p className="button_app__txt_store">App Store</p>
            </div>
          </div>
        </div>
      </div>
      <div className="burger-menu__social">
        <p>Наші соц. мережі</p>
        <div className="burger-menu__social-links">
          <img src={telegram} alt="404" />
          <img src={vk} alt="404" />
          <img src={youtub} alt="404" />
        </div>
      </div>
    </div>
  );
}

export default Burger;
