open Heroicons
let {string} = module(React)

@react.component
let make = () => {
  <div className="flex flex-col gap-2">
    <div className="x-rounded"> {"search panel"->string} </div>
    <div className="flex flex-col md:flex-row h-full justify-between gap-1">
      <div className="flex-1 flex flex-col gap-1">
        <span className="block text-base"> {"Outline"->string} </span>
        <div className="x-rounded items-center justify-center flex-1 h-screen p-2 gap-2">          
          {IconData.paperAirPlane}
          {IconData.solidIcons -> Belt.Map.getWithDefault("PaperAirPlane", <div/>)}
        </div>
      </div>
      <div className="flex-1 flex flex-col">
        <span className="block text-base "> {"Solid"->string} </span>
        <div className="x-rounded flex-1 h-screen" />
      </div>
    </div>
  </div>
}
