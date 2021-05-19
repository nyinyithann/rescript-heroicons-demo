@send external focus: Dom.element => unit = "focus"

@react.component
let make = (~placeholder=?, ~className=?, ~onChange=?) => {
  let ref = React.useRef(Js.Nullable.null)
  React.useEffect0(() => {
    switch ref.current->Js.Nullable.toOption {
    | None => ()
    | Some(dom) => dom->focus
    }
    None
  })
  let defaultCN = " flex flex-row justify-center"
  let cn = switch className {
  | None => defaultCN
  | Some(c) => c ++ defaultCN
  }
  <div className=cn>
    <div className="h-full w-auto bg-primary_100">
      <Heroicons.Outline.SearchIcon
        className="h-full py-2 px-4 pl-6 md:px-6 bg-primary_transparent"
      />
    </div>
    <input
      type_="text"
      className="flex-1 h-full outline-none border-0 rounded-none pl-2"
      ?placeholder
      ?onChange
      ref={ReactDOM.Ref.domRef(ref)}
    />
  </div>
}
