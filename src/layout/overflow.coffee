import {r} from "../registry"
import {set} from "../core"
import {overflow} from "../properties"

r["overflow-auto"] = overflow "auto"
r["overflow-hidden"] = overflow "hidden"
r["overflow-visible"] = overflow "visible"
r["overflow-scroll"] = overflow "scroll"
r["overflow-x-auto"] = set "overflow-x", "auto"
r["overflow-y-auto"] = set "overflow-y", "auto"
r["overflow-x-hidden"] = set "overflow-x", "hidden"
r["overflow-y-hidden"] = set "overflow-y", "hidden"
r["overflow-x-visible"] = set "overflow-x", "visible"
r["overflow-y-visible"] = set "overflow-y", "visible"
r["overflow-x-scroll"] = set "overflow-x", "scroll"
r["overflow-y-scroll"] = set "overflow-y", "scroll"