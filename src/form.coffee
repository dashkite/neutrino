import {pipe, pipeWith} from "@pandastrike/garden"
import {select, set, lookup} from "./core"
import {reset} from "./reset"
import {rem} from "./units"
import {padding, max, width} from "./dimension"
import {text, bold} from "./typography"
import {rows, columns} from "./flexbox"
import {borders} from "./borders"

form = pipeWith lookup

  header: select "header", [
    reset [ "block" ]
    columns
    set "margin-bottom", rem 3
    select "h1", [
      reset [ "block" ]
      # TODO adjust text styles
      text (rem 6), 4/5
      bold
    ]
  ]

  section: select "section", [
    reset [ "block" ]
    rows
    set "margin-bottom", rem 3
    select "label", [
      width "stretch"
      # TODO adjust text styles
      text (rem 3), 4/5
      select "p", [
        reset [ "block" ]
        set "margin-bottom", rem 2
      ]
    ]
  ]

  input: select "input", [
    reset [ "block" ]
    width "stretch"
    max width "96rem"
    set "margin-bottom", rem 1
    borders [ "round", "silver" ]
    padding rem 1.5
    # TODO adjust text styles
    text (rem 3), 4/5
    # TODO can't do this correctly in quark yet
    # &:disabled
    #   colors kite-gray lightest-kite-gray
  ]

export {form}
