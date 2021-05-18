let {string} = module(React)

@react.component
let make = (~setTheme) => {
  <nav className="bg-primary_100 py-1 fixed inset-x-0 shadow flex-1">
    <div className="px-2">
      <div className="flex justify-between items-center">
        <div className="flex space-x-2">
          <div className="pt-1 h-12 w-12"> <a href="https://heroicons.com/" target="blank"><HeroLogo /></a> </div>
          <div className="flex items-center text-primary_600">
            <button
              className="navbar-button" type_="button" onClick={_ => RescriptReactRouter.push("/")}>
              <a className="navbar-menu-text"> {"Home"->string} </a>
            </button>
            <button
              className="navbar-button"
              type_="button"
              onClick={_ => RescriptReactRouter.push("about")}>
              <a className="navbar-menu-text"> {"About"->string} </a>
            </button>
          </div>
        </div>
        <div className="flex items-center space-x-2 pr-4 relative">
         <ThemeMenu setTheme/> 
        </div>
      </div>
    </div>
  </nav>
}
