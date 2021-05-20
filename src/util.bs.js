// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Js_exn from "rescript/lib/es6/js_exn.js";
import * as Caml_js_exceptions from "rescript/lib/es6/caml_js_exceptions.js";

function copy(text) {
  var textArea = document.createElement("textarea");
  textArea.value = text;
  textArea.style.position = "fixed";
  document.body.appendChild(textArea);
  textArea.focus();
  textArea.select();
  try {
    document.execCommand("copy");
  }
  catch (raw_obj){
    var obj = Caml_js_exceptions.internalToOCamlException(raw_obj);
    if (obj.RE_EXN_ID === Js_exn.$$Error) {
      var m = obj._1.message;
      if (m !== undefined) {
        console.log("Copy error " + m);
      }
      
    } else {
      throw obj;
    }
  }
  document.body.removeChild(textArea);
  
}

export {
  copy ,
  
}
/* No side effect */
