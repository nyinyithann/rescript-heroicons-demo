module JsString = Js.String2
open JsArray2Ex

let {string, array} = module(React)

let initialData =
  map2(IconData.solidIcons, IconData.outlineIcons, ((_, s), (_, o)) => (s, o))->reduce((acc, x) => {
    let (a, b) = acc
    let (s, o) = x
    a->push(s)->ignore
    b->push(o)->ignore
    (a, b)
  }, ([], []))

@react.component
let make = () => {
  let (icons, setIcons) = React.useState(_ => initialData)

  let handleChange = e => {
    ReactEvent.Form.preventDefault(e)
    let searchTerm = ReactEvent.Form.target(e)["value"]

    let searchTerm = searchTerm->JsString.toLowerCase
    let solids =
      IconData.solidIcons
      ->filter(((k, _)) => k->JsString.toLowerCase->JsString.includes(searchTerm))
      ->map(((_, cmp)) => cmp)
    let outlines =
      IconData.outlineIcons
      ->filter(((k, _)) => k->JsString.toLowerCase->JsString.includes(searchTerm))
      ->map(((_, cmp)) => cmp)
    setIcons(_ => (solids, outlines))
  }

  let (solidIcons, outlineIcons) = icons
  <div className="flex flex-col gap-2">
    <SearchInput
      className="fixed inset-x-0 border-t border-b border-primary_300 text-primary_500 items-center h-12 md:h-10 pr-[20px] font-serif mb-4 z-40"
      placeholder="Search icons by name"
      onChange=handleChange
    />
    {solidIcons->length == 0 && outlineIcons->length == 0
      ? <NotFound />
      : <div
          className="flex flex-col md:flex-row h-full justify-between gap-[2px] pt-[56px] md:pt-[48px] z-0">
          <div className="icon-panel-container">
            <span className="icon-panel-header"> {"Solid"->string} </span>
            <div className="icon-panel"> {solidIcons->array} </div>
          </div>
          <div className="icon-panel-container">
            <span className="icon-panel-header"> {"Outline"->string} </span>
            <div className="icon-panel"> {outlineIcons->array} </div>
          </div>
        </div>}
  </div>
}
