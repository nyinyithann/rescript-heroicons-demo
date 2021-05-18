// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Belt_Id from "rescript/lib/es6/belt_Id.js";
import * as Belt_Map from "rescript/lib/es6/belt_Map.js";
import * as Caml_obj from "rescript/lib/es6/caml_obj.js";
import * as Solid from "@heroicons/react/solid";
import * as IconBox$RescriptReactWebpackTailwindTemplate from "./IconBox.bs.js";

var paperAirPlane = React.createElement(IconBox$RescriptReactWebpackTailwindTemplate.make, {
      name: "PaperAirPlane",
      children: React.createElement(Solid.PaperAirplaneIcon, {
            className: "icon"
          })
    });

var cmp = Caml_obj.caml_compare;

var StringCmp = Belt_Id.MakeComparable({
      cmp: cmp
    });

var solidIcons = Belt_Map.fromArray([[
        "PaperAirPlane",
        paperAirPlane
      ]], StringCmp);

export {
  paperAirPlane ,
  StringCmp ,
  solidIcons ,
  
}
/* paperAirPlane Not a pure module */