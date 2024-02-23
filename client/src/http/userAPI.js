import { $authHost, $host } from ".";
import { jwtDecode } from "jwt-decode";

export const registration = async (
  email,
  password,
  name,
  surname,
  phoneNumber,
  patronymic,
  date,
  gender,
  address
) => {
  const { data } = await $host.post("api/user/registration", {
    email,
    password,
    name,
    surname,
    phoneNumber,
    patronymic,
    date,
    gender,
    address,
    role: "USER",
  });
  localStorage.setItem("token", data.token);
  return jwtDecode(data.token);
};
export const login = async (
  email,
  password,
  name,
  surname,
  phoneNumber,
  patronymic,
  date,
  gender,
  address
) => {
  const { data } = await $host.post("api/user/login", {
    email,
    password,
    name,
    surname,
    phoneNumber,
    patronymic,
    date,
    gender,
    address,
  });
  localStorage.setItem("token", data.token);
  return jwtDecode(data.token);
};
export const check = async () => {
  const { data } = await $authHost.get("api/user/auth");
  localStorage.setItem("token", data.token);
  return jwtDecode(data.token);
};
export const updateUser = async (userData) => {
  try {
    const {
      email,
      password,
      name,
      surname,
      phoneNumber,
      patronymic,
      date,
      gender,
      address,
    } = userData;

    const { data } = await $authHost.put("api/user/update", {
      email,
      password,
      name,
      surname,
      phoneNumber,
      patronymic,
      date,
      gender,
      address,
    });
    localStorage.setItem("token", data.token);
    return jwtDecode(data.token);
  } catch (error) {
    console.error("Ошибка при обновлении данных пользователя:", error);
    throw error;
  }
};
