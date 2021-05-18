open Heroicons

let paperAirPlane = <IconBox name="PaperAirPlane">
                        <Solid.PaperAirplaneIcon className="icon" />
                    </IconBox>


module StringCmp = Belt.Id.MakeComparable({
  type t = string
  let cmp = (a, b) => Pervasives.compare(a, b)
})
let solidIcons = Belt.Map.fromArray([("PaperAirPlane", paperAirPlane)], ~id=module(StringCmp))            