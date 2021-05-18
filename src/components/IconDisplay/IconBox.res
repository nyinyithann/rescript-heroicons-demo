open Heroicons

@react.component
let make = (~name, ~children) => {
  <div className="flex flex-col items-center justify-center">
    <div
      className="border border-primary_200 p-2 h-16 w-24 min-w-24
            rounded hover:border-2 hover:drop-shadow-lg 
            flex justify-center items-center">
      {children}
    </div>
    <span className="font-mono font-thin tracking-tighter text-primary_600 block pt-2 text-[0.7em]">
      {name->React.string}
    </span>
  </div>
}
