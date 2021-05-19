let {string, useState} = module(React)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  let component = switch url.path {
  | list{"about"} => <About />
  | _ => <IconDisplay />
  }

  let (theme, setTheme) = useState(_ => "theme-gray")
  <div className={j`$theme flex flex-col`}>
    <NavBar setTheme /> <div className="py-[56px] bg-primary_50 h-screen px-6"> {component} </div>
  </div>
}
