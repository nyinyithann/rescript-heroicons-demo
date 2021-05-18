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
    <NavBar setTheme />
    <div className="py-20 bg-primary_50 h-screen px-6">
      {component}
      // <div>
      //   <Solid.PaperAirplaneIcon
      //     className="w-8 h-8 p-1 m-1 text-primary_900 rounded-md shadow hover:border-primary_900 hover:border-2"
      //   />
      //   <Outline.PaperAirplaneIcon
      //     className="w-8 h-8  p-1 m-1 text-primary_900 rounded-md shadow hover:border-primary_900 hover:border-2"
      //   />
      //   <Solid.VolumeOffIcon
      //     className="w-8 h-8 p-1 m-1 text-primary_900 rounded-md shadow hover:border-primary_900 hover:border-2"
      //   />
      //   <Outline.VolumeOffIcon
      //     className="w-8 h-8    p-1 m-1 text-primary_900 rounded-md shadow hover:border-primary_900 hover:border-2"
      //   />
      // </div>
    </div>
  </div>
}
