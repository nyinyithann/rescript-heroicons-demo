@react.component
let make = (~name, ~type_, ~children) => {
  let handleOnClick = e => {
    ReactEvent.Mouse.preventDefault(e)
    let jsx = `<Heroicons.${type_}.${name}Icon className="h-6 w-6" />`
    Util.copy(jsx)
  }

  <div className="flex flex-col items-center justify-center w-24 antialiased">
    <div
      className="group border border-primary_200 p-2 h-16 w-24
                 rounded flex flex-col justify-center items-center relative hover:border-2">
      {<>
        {children}
        <div
          className="justify-center place-items-center font-sans tracking-tight font-light text-[0.7em] 
                     bg-primary_200 absolute w-11/12 h-1/2 bottom-1 rounded cursor-pointer hidden 
                     group-hover:flex active:bg-primary_300"
          style={ReactDOM.Style.make(~opacity="0.7", ())}
          onClick={handleOnClick}>
          <span> {"Copy JSX"->React.string} </span>
        </div>
      </>}
    </div>
    <span className="font-sans tracking-tight text-primary_600 block pt-2 text-[0.7em]">
      {name->React.string}
    </span>
  </div>
}
