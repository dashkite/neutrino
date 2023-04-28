import * as Type from "@dashkite/joy/type"
import * as It from "@dashkite/joy/iterable"
import { make, block, merge } from "../helpers"
import { Scope, Scopes } from "./scope"
import { Rules } from "./rule"

Media = {}

class Media.Scope extends Scope

  @isType: Type.isType @

  @make: make @, ( query ) ->
    scope = Scope.initialize()
    { scope..., query }
  
  @render: ({ query, rules }) ->
    block "@media #{ query }", Rules.render rules

class Media.Scopes extends Scopes

  @make: make @, Scopes.initialize

  @render: ( scopes ) ->
    It.join " ",
      ( Media.Scope.render scope for scope in scopes.list )

class Media.Query

  # for now we don't compose
  @compose: ( parent, child ) -> child

export {
  Media
}