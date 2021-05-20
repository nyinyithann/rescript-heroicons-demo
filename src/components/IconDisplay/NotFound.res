@react.component
let make = () => {
  <div
    className="flex flex-col h-full justify-center items-center gap-[2px] pt-[56px] md:pt-[48px] z-0">
    <Heroicons.Outline.EmojiSadIcon className="h-20 w-20  text-primary_300" />
    <span className="block text-primary_300"> {`Sorry! No icons found.`->React.string} </span>
  </div>
}
