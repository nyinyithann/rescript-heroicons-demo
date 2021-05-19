open JsArray2Ex

module ColorButton = {
  @react.component
  let make = (~color, ~theme, ~setTheme) => {
    <button
      type_="button"
      className="theme-btn"
      style={ReactDOM.Style.make(~background=color, ())}
      onClick={_ => setTheme(_ => theme)}
    />
  }
}

type colors = {color: string, theme: string}
let themeList = [
  {color: "#9CA3AF", theme: "theme-gray"},
  {color: "#F87171", theme: "theme-red"},
  {color: "#FBBF24", theme: "theme-yellow"},
  {color: "#34D399", theme: "theme-green"},
  {color: "#60A5FA", theme: "theme-blue"},
  {color: "#818CF8", theme: "theme-indigo"},
  {color: "#A78BFA", theme: "theme-purple"},
  {color: "#F472B6", theme: "theme-pink"},
]

@react.component
let make = (~setTheme) => {
  let (f, s) = themeList->splitAt(4)
  <HLMenu as_="div" className="relative inline-block text-left">
    {({open_}) => {
      <>
        <HLMenu.Button className="theme-menu-opener">
          <Heroicons.Solid.ColorSwatchIcon />
        </HLMenu.Button>
        <HLMenu.Items static=open_ as_="div" className="theme-menu-dropdown">
          <HLMenu.Item>
            {_ => {
              <>
                <div className="flex flex-col z-10">
                  <div className="theme-menu-internal-div">
                    {f->map(({color, theme}) => <ColorButton color theme setTheme />)->React.array}
                  </div>
                  <div className="theme-menu-internal-div">
                    {s->map(({color, theme}) => <ColorButton color theme setTheme />)->React.array}
                  </div>
                </div>
              </>
            }}
          </HLMenu.Item>
        </HLMenu.Items>
      </>
    }}
  </HLMenu>
}
