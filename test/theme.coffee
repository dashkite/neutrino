import {pipe, tee} from "@dashkite/joy/function"
import {color as _color} from "../src"

colors =
  "kite-blue": "#61d3ff"

color = (value) -> _color colors[value] ? value

export {color}
