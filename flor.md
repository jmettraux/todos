
[o] when putting an execution, put the 'last_message'
[o] waiter.rb # TODO fail if the serie mixes msg_waiting with row_waiting...
[o] idea for the waiter, get all the pointers in one SELECT for 1 session
    see lib/flor/unit/wlist.rb:131
[o] `wait: 'entered:xxx'`
    `wait: 'left:xxx'`
[o] if possible, nuke the repeat system of the waiters...
[o] Implement `Flor::Pointer#full_value` for var pointers

[o] `wait: 'var:xxx'` name
    `wait: 'var:xxx:yyy'` name and value (JSON if `^", ^[, ^{`)?

[ ] `add` for other concurrent procedures

[ ] complete/fix Flor::Execution#full_tree

[ ] "ceach" and "ect" equivalent to "c-for-each"

[ ] `@unit0.add_tasker('hole', lambda {})` not working
    `@unit0.add_tasker('hole') {}` works

[o] add `File :content` to :flor_pointers
[ ] place cause message into :flor_pointers :content column

[ ] out of band execution
    'execute 1_0 add_branch _'
    or something like that

[ ] similar to domain variables, have domain fields (templates for launch workitems)

[ ] doc/quickstart with HashLoader

[ ] secret box, vault

[ ] ```
    define f f.x f.y
    ```
[ ] ```
    each (on f.x f.y)
      xxx
    ```

[ ] isolate closures
    currently `define x \ 3` uses "0" as closure...
    well, only if define is the root node... X maybe?
    ``` # pcore/define.rb says:
    cnode = lookup_var_node(@node, 'l')
    cnid = cnode['nid']
    ```

[o] let classical loader understand .rb
[ ] let hloader factor in messages when, well, loading


[o] Error in "on_error" and it loops wildly... Fix that!
[o] Refine cross on_error blocks...

[o] 'arguments' and then, 'args', 'hargs'?

[o] rework "_apply" and arguments, use `message['arguments']`
    ```
    [ [ 'msg', { ... } ],
      [ 'sig', ... ],
      [ nil, ... ] ]
    ```

[o] replace `@node['heat0']` with `@node['heap']`

[o] "apply" named arguments (in shuffled order)

[o] "sort" without function it uses a default function
[o] "sort" memoize comparisons? digest key pairs to minimize storage...

[ ] ```
    set a b.1
    ```
    copy or symbolic link?
    store a "_ref" ?

[o] fail on `sequence vars: [ 'a.b' ]` (deep / multi-level keys, see spec/core/)

[o] stop lookup_var in case of `vars: [ 'a' 'b' ]`
    or store the whitelist/blacklist and let lookup_var read it
       (no duplication of vars needed)

[o] |                       | replies to parent | cancellable
    +-----------------------+-------------------+--------------------
    | forget, fire          | immediately       | no (not reachable)
    | lose                  | never             | yes
    | flank (o)             | immediately       | yes
    | xxx                   | never             | no (not reachable)

    two procedures, with a switch
    one procedure with a 'reply' and with a 'cancellable' switch
    four aliases

    why not "split" or "fork" (vs "join" or "merge" (or "sink"))

    `sequence flank` lives as long as the parent proc lives
    `sequence orphan` xxx

    *procedures vs attributes*
    attributes allow flagging any procedure
    attributes can dynamic `flank: true` vs `flank: shouldFlank`
    procedures are easier to implement
      ..
    *procedures and attributes*
    attributes could be macroized... last moment... tough
      ..
    *procedures as macros*
    `flank` could be turned into `sequence flank`
      ..
    My instinct tells me that procedures are better
    I don't like the "flank()" methods in the Procedure class

                     +-------------------+--------------------+
                     | replies to parent | cancellable        |
    +-------+--------+-------------------+--------------------+
    | fork  | part   | immediately       | no (not reachable) |
    |       | flunk  | never             | no (not reachable) |
    | flank | flank  | immediately       | yes                |
    | lose  | norep  | never             | yes                |
    +-------+--------+-------------------+--------------------+

    when suffixed with "r", it returns the 'forked' nid

      split, part, diverge, detach, remove, separate, uncouple, disengage
      take off, lift
    X converge

    "norep", "no-reply", like a "sequence", but never replies
    `norep cancellable: false`

[o] `push f.l 7 if x: "y"` jumps out of postfix handling...
[o] `concurrence merge: fun` shouldn't I first implement that?
[x] `concurrence receiver: x`, how about `any_receiver: y`? `post_receiver: y`?
[o] "concurrence" make receiving sequential...
    go from `@node['receiver_nids']` to `@node['receiver_nid']` maybe?
    and let receive_from_receiver trigger the next in queue...
[o] `concurrence on_receive`
[o] `concurrence on_merge`
[o] `concurrence \ on_error` spec
[o] `concurrence \ child_on_error` spec
[ ] `concurrence \ on_cancel` spec
[ ] `concurrence \ on_timeout` spec
[ ] `{ over: true }` vs `over` when variable...
[o] "max"/"min" merge with "sort" somehow
[.] rehaul "concurrence" documentation!

[ ] array "join" (or "sjoin") (leave "join" for merge ops?)
[ ] or `[ 'a' 'b' 'c' ] | + join: ':' ---> "a:b:c"`

[x] "on_cancel" with block (it's "on cancel")
[x] "on_timeout" with block (...)
[x] "on_error" with block (...)
[ ] tighten/harmonize "on_cancel"/"on_timeout"/"on_error"/"on cte"
[ ] `on_error: noop` ... `on_error: (def \ _)` (does it preserve the payload?)
[ ] `x on_error: f` when `x` is unknown

[o] how about generalizing `child_on_error:`?
    isn't it an attribute on only "concurrence" for now?
[o] how about generalizing `child_on_cancel:`?
[o] how about generalizing `child_on_timeout:`?
[ ] how about `child_timeout:`? would be useful in concurrence...
[x] how about NUKING `child_on_error:` et al?

[ ] hloader (and caller) and `class: WhateverTasker`
[o] unit spec with hloader (all categories: taskers, libraries, hooks, ...)
[o] hloader adds #add_tasker et al to its unit (at instantiation time)
[o] hloader subflows
[ ] `unit.hook('name', class_or_block)` vs `unit.loader.add(:hook, 'name', x)`
    should probably have both
    the first one has no "domain" comprehension
[ ] let unit.hook accept class (def opts ?)
[ ] let unit.add_hook accept class (def opts ?)

[ ] launch a subflow (wait?) see SubtleTree in gitter

[ ] "adopt" to adopt a child branch...
    maybe "part"'s antonym?...
[ ] "trap" and "on" count:3, merge messages
    ..."sink", "join", "merge" ?
[ ] should a message contain "cancelled" when it comes from a cancelled
    child and is caused by a 'cancel'?
    I have probably already implemented that
[ ] ```
    sequence
      part 'a'
        abc _
      part 'b'
        def _
    # ...
    sequence
      merge
        from 'a'
        from 'b'
    ```
[ ] from mac_todo.md:
    ```
    define m payload, rank, reply_order, reply_count
    concurrence merger: m
      alpha _
      bravo _
    #
    concurrence
      def payload, rank, reply_order, reply_count
      alpha _
      bravo _
    ```
    default:
    ```
    define default-merger
      merge pl0 pl1
    ```
[ ] "concurrence" post_merge?

[ ] flor htop

[ ] "return" blank `return if x.overburn`


## src

