import { makeAutoObservable } from "mobx";

export default class DeviceStore {
  constructor() {
    this._types = [
      { id: 1, name: "phones" },
      { id: 2, name: "laptops" },
    ];
    this._devices = [
      {
        id: 1,
        name: "Apple iPhone 13 mini 256GB (PRODUCT) Red",
        img: "http://localhost:3000/image/products/iphone_11_red.png",
        img2: "http://localhost:3000/image/products/iphone_11_red(2).png",
        img3: "http://localhost:3000/image/products/iphone_11_red(3).png",
        img4: "http://localhost:3000/image/products/iphone_11_red(4).png",
        cost: "36 000",
        discount: "0.2",
        catigory: "phones",
        series: "iPhone 13 mini",
        diagonal: "5.4",
        hz: "60 Гц",
        builtmemory: "256 ГБ",
        matrix: "OLED (Super Retina XDR)",
        CPU: "Apple A15 Bionic",
        camera: "12 Мп + 12 Мп",
      },
      {
        id: 2,
        name: "Apple iPhone 14 128GB Midnight",
        img: "http://localhost:3000/image/products/iPhone14128GBMidnight.png",
        img2: "http://localhost:3000/image/products/iPhone14128GBMidnight(2).png",
        img3: "http://localhost:3000/image/products/iPhone14128GBMidnight(3).png",
        img4: "http://localhost:3000/image/products/iPhone14128GBMidnight(4).png",
        cost: "43 000",
        catigory: "phones",
        type: "actual",
        discount: "",
        series: "iPhone 14",
        diagonal: "6.1",
        hz: "60 Гц",
        builtmemory: "128 ГБ",
        matrix: "OLED (Super Retina XDR)",
        CPU: "Apple A15 Bionic",
        camera: "12 Мп",
      },
    ];
    makeAutoObservable(this);
  }

  setTypes(types) {
    this._types = types;
  }

  setBrands(brands) {
    this._brands = brands;
  }

  setDevices(devices) {
    this._devices = devices;
  }

  get types() {
    return this._types;
  }
  get brands() {
    return this._brands;
  }
  get devices() {
    return this._devices;
  }
}
