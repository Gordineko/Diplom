import React, { useEffect, useState, useCallback, useContext } from "react";
import { useParams } from "react-router-dom";
import Header from "../MainLanding/pages/Header";
import "./css/products.css";
import Renge from "./components/Reng";
import Footer from "../MainLanding/pages/Footer";
import ProductItem from "./components/ProductItem";
import Sort from "./components/Sort";
import { CustomContext } from "../utils/Context";
import { fetchBrands, fetchDevices, fetchTypes } from "../http/deviceAPI";
import { observer } from "mobx-react-lite";
import Loader from "../MainLanding/Loader";

const Prod = observer(() => {
  const [isLoading, setIsLoading] = useState(true);
  const { type } = useParams();
  const [products, setProducts] = useState([]);
  const [filteredProduct, setFilteredProduct] = useState([]);
  const [values, setValues] = useState([0, 500000]);
  const [sortBy, setSortBy] = useState(null);
  const [activeSort, setActiveSort] = useState(false);

  const { devices } = useContext(CustomContext);

  useEffect(() => {
    const timer = setTimeout(() => {
      setIsLoading(false);
    }, 500);

    return () => clearTimeout(timer);
  }, []);
  useEffect(() => {
    fetchTypes().then((data) => devices.setTypes(data));
    fetchDevices(
      devices.selectedType.id,
      devices.selectedBrand.id,
      devices.page,
      6
    ).then((data) => {
      devices.setDevices(data.rows);
      devices.setTotalCount(data.count);
    });
  }, [devices.page, devices.selectedType]);

  // useEffect(() => {
  //   const fetchData = async () => {
  //     try {
  //       const response = await fetch("http://localhost:3000/product");
  //       const jsonData = await response.json();
  //       setProducts(jsonData);
  //     } catch (error) {
  //       console.error("error fetch product data", error.message);
  //     }
  //   };
  //   fetchData();
  // }, []);

  // useEffect(() => {
  //   const filteredByCategory = devices.devices.filter(
  //     (item) => item.catigory === type
  //   );

  //   const filteredByValues = filteredByCategory.filter((item) => {
  //     const parsprice = parseFloat(item.price.replace(/[ ,]/g, ""));
  //     const price = Number(parsprice);
  //     return price >= values[0] && price <= values[1];
  //   });

  //   let sortedProducts = [...filteredByValues];

  //   if (sortBy === "priceAscending") {
  //     sortedProducts.sort((a, b) => {
  //       const priceA = parseFloat(a.price.replace(/[ ,]/g, ""));
  //       const priceB = parseFloat(b.price.replace(/[ ,]/g, ""));
  //       return priceA - priceB;
  //     });
  //   } else if (sortBy === "priceDescending") {
  //     sortedProducts.sort((a, b) => {
  //       const priceA = parseFloat(a.price.replace(/[ ,]/g, ""));
  //       const priceB = parseFloat(b.price.replace(/[ ,]/g, ""));
  //       return priceB - priceA;
  //     });
  //   } else if (sortBy === "stock") {
  //     sortedProducts.sort((a, b) => {
  //       if (a.discount === "" && b.discount !== "") {
  //         return 1;
  //       } else if (a.discount !== "" && b.discount === "") {
  //         return -1;
  //       }
  //     });
  //   }

  //   setFilteredProduct(sortedProducts);
  // }, [products, type, values, sortBy]);

  const handleSort = useCallback((sortType) => {
    setSortBy(sortType);
  }, []);
  const SortOpen = () => {
    setActiveSort(!activeSort);
  };

  return (
    <>
      {isLoading ? (
        <div>
          <Loader />
        </div>
      ) : (
        <>
          {activeSort && <div className="overlay" onClick={SortOpen}></div>}
          <div className="products-list">
            <Header />
            <div className="container products_pad">
              <div className={activeSort ? "active-sort " : "products__sort"}>
                <div className="products_pad-prew">
                  <h1>{type}</h1>
                  <button
                    className={
                      activeSort
                        ? "products_pad-prew_btn"
                        : "products_pad-prew_btn close "
                    }
                    onClick={SortOpen}
                  >
                    x
                  </button>
                </div>

                <Renge values={values} setValues={setValues} />
                <Sort handleSort={handleSort} />
              </div>
              <div className="products__catalog">
                <div className="products__sorting">
                  <button className="products__sorting-btn" onClick={SortOpen}>
                    Отсортировать
                  </button>
                </div>
                <ul className="products">
                  {devices.devices.map((product) => (
                    <ProductItem key={product.id} product={product} />
                  ))}
                </ul>
              </div>
            </div>
            <Footer />
          </div>
        </>
      )}
    </>
  );
});

export default Prod;
