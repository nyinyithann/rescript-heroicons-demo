let {string} = module(React)

module AuthorLink = {
  @react.component
  let make = (~link, ~site, ~title) => {
    <div>
      <span className="text-primary_600"> {`${site}:`->string} </span>
      <a
        href=link
        target="blank"
        className="underline hover:cursor-pointer hover:text-primary_600 text-primary_400 pl-2">
        {title->string}
      </a>
    </div>
  }
}

@react.component
let make = () => {
  <div
    className="flex flex-col gap-2 text-primary_600 font-mono text-center h-full items-center justify-center">
    <div className="-mt-40">
      <h1 className="text-base md:text-2xl font-bold pt-4">
        {"ReScript binding to Heroicons"->React.string}
      </h1>
      <div className="pt-4">
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
      <div className="pt-2 font-sans text-sm md:text-base">
        <p>
          <span className="italic font-serifs"> {"Installation"->string} </span>
          <br />
          <span> {"yarn add rescript-heroicons"->string} </span>
          <br />
          <span> {"Or"->string} </span>
          <br />
          <span> {"npm install rescript-heroicons"->string} </span>
          <div
            className="flex flex-col justify-center items-center font-sans font-normal text-[0.7em] mt-4 pt-2 border-t border-primary_200">
            <div className="w-24 h-24 relative">
              <img
                src="https://avatars.githubusercontent.com/u/156037"
                alt="mygithub"
                className="w-full h-full rounded-full border-4 border-primary_300"
              />
              <span
                className="bg-primary_900 rounded-full text-xs text-primary_200 p-1 absolute right-1 -top-1 border-2 border-primary_300">
                {"By"->string}
              </span>
            </div>
            <AuthorLink link="https://github.com/nyinyithann" title="@nyinyithann" site="GitHub" />
            <AuthorLink
              link="https://www.linkedin.com/in/nyinyithan/" title="@nyinyithann" site="LinkedIn"
            />
            <AuthorLink link="https://twitter.com/JazzTuyat" title="@JazzTuyat" site="Twitter" />
          </div>
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
