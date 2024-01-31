import React, { useContext } from "react";
import { Route, Routes } from "react-router-dom";
import { authRoutes, publicRoutes } from "./routes";
import NotFound from "../404/NotFound";
import { CustomContext } from "../utils/Context";

function AppRouter() {
  // const isAuth = false;
  const { users } = useContext(CustomContext);
  console.log(users);
  return (
    <Routes>
      {users.isAuth &&
        authRoutes.map(({ path, element }) => (
          <Route key={path} path={path} element={element} />
        ))}
      {publicRoutes.map(({ path, element, children }) => (
        <Route key={path} path={path} element={element}>
          {children &&
            children.map(({ path: childPath, element: childElement }) => (
              <Route key={childPath} path={childPath} element={childElement} />
            ))}
        </Route>
      ))}
      <Route path="*" element={<NotFound />} />
    </Routes>
  );
}

export default AppRouter;
