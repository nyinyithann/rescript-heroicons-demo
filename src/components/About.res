let {string} = module(React)
@react.component
let make = () => {
  <div
    className="flex flex-col gap-2 text-primary_600 font-mono text-center h-full items-center justify-center">
    <div className="-mt-36">
      <h1 className="text-base md:text-2xl font-bold">
        {"ReScript binding to Heroicons"->React.string}
      </h1>
      <div className="py-4">
        <a
          target="_blank"
          className="text-primary_800 underline text-base md:text:xl text-center inline"
          href="https://github.com/nyinyithann/rescript-heroicons-demo">
          {"GitHub Repo"->React.string}
        </a>
        <span> {" | "->string} </span>
        <a
          target="_blank"
          className="inline text-primary_800 underline text-base md:text:xl text-center"
          href="https://www.npmjs.com/package/rescript-heroicons">
          {"NPM Package"->React.string}
        </a>
      </div>
      <div className="p-5 font-sans text-sm md:text-base">
        <p>
          <span className="italic font-mono"> {"Installation"->string} </span>
          <br />
          <br />
          <span> {"yarn add rescript-heroicons"->string} </span>
          <br />
          <span> {"Or"->string} </span>
          <br />
          <span> {"npm install rescript-heroicons"->string} </span>
          <span className="block uppercase drop-shadow-2xl pt-6"> {"Credit "->string} </span>
          <span>
            <a
              className="drop-shadow-2xl underline text-primary_800"
              href="https://heroicons.com/"
              target="blank">
              {"Heroicons"->string}
            </a>
          </span>
        </p>
      </div>
    </div>
  </div>
}
