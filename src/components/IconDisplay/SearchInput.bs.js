// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Caml_option from "rescript/lib/es6/caml_option.js";
import * as Outline from "@heroicons/react/outline";

function SearchInput(Props) {
  var placeholder = Props.placeholder;
  var className = Props.className;
  var onChange = Props.onChange;
  var ref = React.useRef(null);
  React.useEffect((function () {
          var dom = ref.current;
          if (!(dom == null)) {
            dom.focus();
          }
          
        }), []);
  var defaultCN = " flex flex-row justify-center";
  var cn = className !== undefined ? className + defaultCN : defaultCN;
  var tmp = {
    ref: ref,
    className: "flex-1 h-full outline-none border-0 rounded-none pl-2",
    type: "text"
  };
  if (placeholder !== undefined) {
    tmp.placeholder = Caml_option.valFromOption(placeholder);
  }
  if (onChange !== undefined) {
    tmp.onChange = Caml_option.valFromOption(onChange);
  }
  return React.createElement("div", {
              className: cn
            }, React.createElement("div", {
                  className: "h-full w-auto bg-primary_100"
                }, React.createElement(Outline.SearchIcon, {
                      className: "h-full py-2 px-4 pl-6 md:px-6 bg-primary_transparent"
                    })), React.createElement("input", tmp));
}

var make = SearchInput;

export {
  make ,
  
}
/* react Not a pure module */