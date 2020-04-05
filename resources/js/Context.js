import React, { useState, createContext } from "react";

export const Context = createContext();

export const Provider = ({ children }) => {
  const [isAuth, setIsAuth] = useState(() => {
    return window.sessionStorage.getItem("token");
  });
  const [userType, setUserType] = useState(() => {
    return window.sessionStorage.getItem("user_type");
  });

  const value = {
    isAuth,
    userType,
    activateAuth: (token, user_type) => {
      setIsAuth(true);
      setUserType(user_type);
      window.sessionStorage.setItem("token", token);
      window.sessionStorage.setItem("user_type", user_type);
    },
    removeAuth: () => {
      setIsAuth(false);
      setUserType(null);
      window.sessionStorage.removeItem("token");
      window.sessionStorage.removeItem("user_type");
    },
    getToken: () => {
      if (window.sessionStorage.getItem("token")) {
        return window.sessionStorage.getItem("token");
      } else {
        return "";
      }
    }
  };
  return <Context.Provider value={value}>{children}</Context.Provider>;
};
export default {
  Consumer: Context.Consumer
};

