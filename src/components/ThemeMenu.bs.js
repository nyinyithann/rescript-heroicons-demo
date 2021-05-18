// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as JsArray2Ex from "js-array2-ex/src/JsArray2Ex.bs.js";
import * as React$1 from "@headlessui/react";
import * as Solid from "@heroicons/react/solid";

function ThemeMenu$ColorButton(Props) {
  var color = Props.color;
  var theme = Props.theme;
  var setTheme = Props.setTheme;
  return React.createElement("button", {
              className: "theme-btn",
              style: {
                background: color
              },
              type: "button",
              onClick: (function (param) {
                  return Curry._1(setTheme, (function (param) {
                                return theme;
                              }));
                })
            });
}

var ColorButton = {
  make: ThemeMenu$ColorButton
};

var themeList = [
  {
    color: "#9CA3AF",
    theme: "theme-gray"
  },
  {
    color: "#F87171",
    theme: "theme-red"
  },
  {
    color: "#FBBF24",
    theme: "theme-yellow"
  },
  {
    color: "#34D399",
    theme: "theme-green"
  },
  {
    color: "#60A5FA",
    theme: "theme-blue"
  },
  {
    color: "#818CF8",
    theme: "theme-indigo"
  },
  {
    color: "#A78BFA",
    theme: "theme-purple"
  },
  {
    color: "#F472B6",
    theme: "theme-pink"
  }
];

function ThemeMenu(Props) {
  var setTheme = Props.setTheme;
  var match = JsArray2Ex.splitAt(themeList, 4);
  var s = match[1];
  var f = match[0];
  return React.createElement(React$1.Menu, {
              as_: "div",
              children: (function (param) {
                  return React.createElement(React.Fragment, undefined, React.createElement(React$1.Menu.Button, {
                                  children: React.createElement(Solid.ColorSwatchIcon, {}),
                                  className: "theme-menu-opener"
                                }), React.createElement(React$1.Menu.Items, {
                                  as_: "div",
                                  children: React.createElement(React$1.Menu.Item, {
                                        children: (function (param) {
                                            return React.createElement(React.Fragment, undefined, React.createElement("div", {
                                                            className: "flex flex-col"
                                                          }, React.createElement("div", {
                                                                className: "theme-menu-internal-div"
                                                              }, f.map(function (param) {
                                                                    return React.createElement(ThemeMenu$ColorButton, {
                                                                                color: param.color,
                                                                                theme: param.theme,
                                                                                setTheme: setTheme
                                                                              });
                                                                  })), React.createElement("div", {
                                                                className: "theme-menu-internal-div"
                                                              }, s.map(function (param) {
                                                                    return React.createElement(ThemeMenu$ColorButton, {
                                                                                color: param.color,
                                                                                theme: param.theme,
                                                                                setTheme: setTheme
                                                                              });
                                                                  }))));
                                          })
                                      }),
                                  className: "theme-menu-dropdown",
                                  static: param.open
                                }));
                }),
              className: "relative inline-block text-left"
            });
}

var make = ThemeMenu;

export {
  ColorButton ,
  themeList ,
  make ,
  
}
/* react Not a pure module */