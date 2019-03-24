
# TODO

[x] | attribute / expression  | replies to parent      | cancellable        |
    |-------------------------|------------------------|--------------------|
    | normal expression       | as soon as job is done | yes                |
    | (fork?)                 | never                  | no (not reachable) |
    | forget                  | immediately            | no (not reachable) |
    | lose                    | never                  | yes                |
    | flank                   | immediately            | yes                |

[ ] use "on" as a XOR merge
    or "trap" (is it similar to :count)?

[ ] implement some kind of (ruote) "reserve"

[ ] why is that "fail" sets the failure in its parent?

[ ] have a "flor_tasks" table?
    have a local queue tasker thinggy?

[o] "merge"
[o] "merge" fail if alien, ok, if node_payload_ret is an alien
[o] `merge [] {} 1 23 4 lax: true`
    `merge [] {} 1 23 4 loose: true`
    `merge_ [] {} 1 23 4`
[x] "do-merge" vs "merge" (see spec)

[o] "split"
[o] add "trim" and/or "strip" to strings
[o] "matchr" with incoming ret

[ ] let "push" accept incoming collection
    (inspiration for "merge" with incoming ret...)
[ ] let "set" accept incoming ret as value to set ??? why not?

[x] `set f {}` to set the whole payload ???
[ ] "load" to `set_fields`
    "unload" to copy the fields to somewhere
    ```
    { a: 1 }; load _
    load (merge { a: 1 } { b: 2 })
    ```

[o] implement "array?", "object?", "boolean?", "hash?", "number?", ...
[o] implement "type"

[ ] ```
    envs/shell/ 21:22:42 ex0 > launch
    #<Flor::ParseError: syntax error at line 2 column 7>
    ```
    display the line and highlight the error somehow

[o] "cmap" with incoming f.ret
[o] "cmap" with non-att collection child
[o] "map" with non-att collection child
[o] align "cmap" vars on "map"/iterator vars (elt, idx, len, key, val)
[o] "map" without collection fails
[o] "map" without function returns collection
[o] "cmap" without collection fails
[o] "cmap" without function returns collection

[ ] "task" with children spec

[ ] "creduce"
[ ] "cinject"

[ ] enhance "concurrence"
[ ] ```
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

[x] Idea: the ret at the beginning of a function call is
    the value of the first argument
    "apply" changes the ret
    NO! WHY NOT? Do it, watch what breaks.
    NO, because it copies

[o] `r/nada/` or `(/nada/)`

[ ] `o.length`
    `original.length` (original binding of length)
    `global.length` (haven't I already thought of that?)

[ ] tags and tag_nids pseudo? (pseudo vars?)
[o] passing the tags through task

[o] a timeout triggers on_cancel
[o] if on_timeout/on_cancel, the timeout triggers the on_timeout
    but not the on_cancel

[ ] on_up_timeout:
[ ] on_local_cancel:

[ ] bring back {black|white}list "deep"?
    thanks to `Dense.force_set(coll, k, v)` maybe

---

[o] `nid`, `exid`, then `domain` ?
[ ] in_domain?('org.acme')
    in_domain?(current, 'org.acme')

[o] "on" spec / it 'traps multiple signals'

[o] "do-trap", "trap" with a block
[o] "on" with functions, it's `trap 'signal' name: 'x'`
[o] "on" with functions, it's `trap signal: 'x'` ?
[o] `on /xxx/`

[x] get rid of #last_receive?
[o] wrap the #last_receive? pattern! Use `@node['last_ret']`

[o] paste "iterating functions" in every iterator implementation
[o] paste "iterating blocks" in every iterator blocks implementation
[x] look at "cmap" for iterating functions et al
[o] stop making xxx _ (the _ att) a special case to avoid, message it!

[o] "reject"
[o] "for-each" ("map" alias)
[o] `rand 10`
[o] `slice`
[o] `flatten`
[o] `shuffle` array shuffle might be super helpful
[o] `sample` array or simply `shuffle 1`
[x] `take 2` ? `slice`
[ ] "take x" as alias to "slice 0 count: x"
[ ] "drop x" as alias to "slice x"
[o] "any?" / "all?"
[o] `$(quickfox|s)` or `$(quickfox|z)` for `size`... `|l`
[o] "size" core proc
[o] "any?", "empty?" (no function given)
[o] "include?" ("includes?" ?) "includes?"
[o] ensure "any?" accepts incoming ret as coll
[o] ensure "empty?" accepts incoming ret as coll
[o] ensure "includes?" accepts incoming ret as coll

[o] add "!=" to "cmp"

[o] let _obj and _arr do the literalization upon executing
[o] remove '_lit' from pcore/atom.rb

[o] error { kla, msg, trc }, add { prc } for "to-object", ... { lin } ?
[o] use FlorError in every procedure

[o] rename last? to last_receive?

[o] bring in "rewrite_iterator_tree" inspired by "rewrite_schedule_tree"
[o] "map" vs hashes (objects)
[o] to-array
[o] to-object
[o] keys, values

[x] https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Lists.html#Lists
[ ] reduce, fold, ...
    https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Reduction-of-Lists.html
[o] "find", "detect"
    https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Searching-Lists.html

[o] "inject"
[o] "map" and "collect" for objects
[o] "filter" and "select" for objects
[o] "reduce" and "inject" for objects
[o] "find" and "detect" for objects
[o] ects for objects

[ ] John's ects, inflect, deflect, bisect: partition/dissect

[x] ternary operator?
    ```
    push f.l (if true 'then' 'else') # <--- That's already good
    ```

* JRuby 1) Flor unit a timeout is removed if the node ends before timing out

[ ] "exists?" / "defined?"
    ```
    if v1
    if v.v1  # Javascript window.v1
    ```
    has_key?

[o] continue "to_s'ing" lib/flor/log.rb
[ ] implement core/logger.rb (parent to texecutor logger and unit/logger.rb)

[ ] are Executions #zero_node and #zero_variables good names???

[o]
  #launchSEQUEL DEPRECATION WARNING: Setting a model class dataset to an invalid dataset is deprecated and will be removed in Sequel 5.  Either use a valid dataset or set require_valid_table = false for the model class.
  /gems/sequel-4.49.0/lib/sequel/model/base.rb:1008:in `rescue in check_non_connection_error'
  /gems/sequel-4.49.0/lib/sequel/model/base.rb:1001:in `check_non_connection_error'
  /flor/vendor/bundle/ruby/2.4.0/gems/sequel-4.49.0/lib/sequel/model/base.rb:1123:in `block in get_db_schema'
  /flor/vendor/bundle/ruby/2.4.0/gems/sequel-4.49.0/lib/sequel/model/base.rb:1156:in `get_db_schema'
  /flor/vendor/bundle/ruby/2.4.0/gems/sequel-4.49.0/lib/sequel/model/base.rb:893:in `set_dataset'
  /flor/vendor/bundle/ruby/2.4.0/gems/sequel-4.49.0/lib/sequel/model/base.rb:311:in `dataset='
  /flor/lib/flor/unit/models.rb:68:in `block (3 levels) in <class:Storage>'
  /flor/lib/flor/unit/models.rb:67:in `initialize'
  /flor/lib/flor/unit/models.rb:67:in `new'
  /flor/lib/flor/unit/models.rb:67:in `block (2 levels) in <class:Storage>'

[x] `range -5 -10` gets turned into `- range 5 10` :-(
[o] `range (-5) (-10)` solves it

[o] "iota" count start step
    racket "range" http://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket/list..rkt%29._range%29%29
[ ] "partition" http://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._partition%29%29
 .  http://docs.racket-lang.org/reference/pairs.html

[ ] "even" and "odd" or "even?" and "odd?" ...

* What I don't like about storing the tree in _func, is that the tree may
  change and that change is not reflected...
  Oh, it doesn't matter, users should change the vars...
  They should re-apply the definition...

[o] finish _val rework
[o] nuke somehow the 'head' trick
[o] store tree in `[ 'func', { 'cid' => ... `
[o] fix "do-return"
[o] fix/spec % (modulo) precedence
[x] follow "push" in "set" (last att and co...)

[ ] isolate closures
    currently `define x \ 3` uses "0" as closure...
    well, only if define is the root node... X maybe?
    ``` # pcore/define.rb says:
    cnode = lookup_var_node(@node, 'l')
    cnid = cnode['nid']
    ```

[o] `set b \ (do-return 'two')`
[o] `set b (do-return 'two')`
[o] `set a f.ret` sets "a" in variable 'a' ...

[ ] `lib/procs/`

[o] `sequence on_error: 1` idea
    became `sequence on_error: (do-return 1)`
[o] how about making "do-return" a macro?

[o] `f.status` ... "cannot apply" :-(
    `status` vs `status _` and `f.status` vs `f.status _`
    get closer to javascript, maybe
    `f.status` yields null
    `v.x` yields null
    `x` raises
    `y.0` should yield null if y is an array

[x] `<=` and `>=` don't work, `=<` and `=>` do.
    in fact, it interprets `=<` as `=` and `<`...
    (and so it doesn't work either)
[x] "on_receive_last" and flanking cnodes, how to go about it?"
    ```
    def receive_from_child_when_closed

      (cnodes.empty? && pop_on_receive_last) || wrap_reply
    end
    ```
    For now, let's just trigger on_receive_last when the last cnodes replied...

[o] should "schedule" also have a different #wrap_cancel_children ?
[ ] `@message['cancellable']` and `@node['cancellable']`

[ ] killall?
    determines all roots and sends them a cancel message
[ ] terminate?

[o] "schedule" and "trap" should be flanking
    the timer mecha works for "schedule" and timeout:
    the trap only works for "trap" (iirc)
    'cnodes' vs 'fnodes'?
    point: 'receive', flank: true?
[o] "schedule" should reply immediately like "trap" does
    That's easy since we have timers and traps, that get removed when
    their node gets removed...
[x] the noreply keyword could be brought back but for
    ```
    schedule in: '5m' noreply
      def msg \ echo 'nada'
    ```
    :-( "blocking" or "block" is better?

[ ] graft or redir inside of a .flo
    ```
    twig 'x' # <-- store tree in var 'x'
      sequence \ a | b | c
    twig 'y' # <-- store tree in var 'y'
      sequence \ d | e | f
    concurrence
      graft 'x'
      graft 'y'
    ```
    VS
    ```
    def x
      sequence \ a | b | c
    twig y
      sequence \ d | e | f
    concurrence
      x _
      y _
      nada.flo _
    ```
    Would be nice to turn `x _` into `graft x` automagically.

[o] "cond"
[o] implement "case"
[o] case and array children
    ```
    case x
      [ 0 1 2 ]
        task 'a'
        task 'b'
      [ 3 4 5 ]
        task 'c'
    ```
[x] if case#flatten has to go for "cond", why not make flatten more general?
    simply detected weird nesting and flatten them ("cond" and "case") ???
    rename "flatten" to "unnest"
[x] same for "cond"? for "if"? Not for "if".
[o] "case" + regex patterns?
[o] "case" + regex patterns? then present matches as vars
[o] "match" + regex patterns? _pat_regex!!!
[o]   "_pat_arr" + regex
[ ] double-check 'match' and 'matched'...
[ ] rewrite if/then?/elsif/else as a cond
[ ] `[ 1 (bind b (/^b.+/)) ]; "match b:$(b)"` forced to surround the rex
    else it becomes a division /

[ ] how about moving the "ret" out of the "payload"?
[ ] how about using changesets for "payload"?

[ ] eventually, re-apply in -{sub} node???

[x] ```
    concurrence
      alpha 'do this'
      every '5s'
        alpha 'do that'
    ```
    fails funnily
    and resists cancelling
[o] unbreak `every '5s'`

[ ] `Flor.[parent_]tree_locate` ignore subnid (seems OK...)

[ ] some callback when messages come back to the unit...  "return"
    tasker "on_return:" ?
    `untask` != `detask`

[ ] log_message, display `tasker` as `tr:alpha` maybe

[ ] is `@execution['tasks'][nid]` somehow useful?
    :flor_pointers removes the need for it, imo...
[ ] does scheduler yield on task messages?
    do taskers "happen" in their own thread? (waiting for IO there?)
    The tasker could choose `threaded: true`

[ ] flows vs trees, subflows vs subtrees, clarify nomenclature

[ ] loader: allow for /etc/variables.json
    or variables.rb
[ ] `etc/variables/acme.org.hr.rb` returns a Hash

[o] lib/subflows/x binds x as a variable?
    lib/library/y why not?
    function tree bound in variable?
    `import xyz` subflow (unit, not core then)
    insert, embed, implant, lodge, graft, engraft
    `graft xyz`

[ ] why not? stop having a transient scheduler, have a null storage

[ ] tasker postpones task
    for now, in sg, avoided by starting flor after having gather ldap creds

[x] separate logging from msg logging
[x] logger pass level to out
[x] logger restrict logging?
[x] log to envs/xxx/var/log ? NO, 12factor.net

[o] make unit.logger a non-hook, well, no, make it initialize like the ganger
[ ] implement 'log' punit

[ ] . task 'clean up' by: 'alan'
    . task 'clean up' for: 'alan'
    . task 'clean up' assign: 'alan'
    . task 'alan' with: 'clean up'
    . clean_up assign: 'alan'
    . "clean up" assign: 'alan'
    . alan task: 'clean up'

[ ] etc/variables/iwm.asia.pfs.travel_approval.json just for that flow
    eventually set `execution['flow_name']` or set a domain variable?
    How about, simply, a '0' variable? As done in sg?

[ ] `fail immediately` triggers "node  is gone, cannot flag it as failed"

[o] `unit.wait(@exid, %w[ task task ])`
[o] `unit.wait(@exid, '0_0 task|cancel')`
[o] `unit.wait(:run_end)`

[ ] something to extract the task payload given an exid and a nid
    (use flor_pointers as a task list)
    `Pointer#node` maybe?

[ ] add external "move" to unknown tag/target spec,
    should not derail the "cursor"

[o] re-apply, useful concept, or not...
    loot at ruote's doc
    . could it be done with `@node['on_receive_last']` ?
[ ] replay_at_error?

[o] bring in Procedure#end_node
    .
[ ] go on with spec/pcore/procedure_spec.rb  # @executor.step      xxxxxxxxxxxxx
[ ] start with spec/pcore/until_spec.rb      # @executor.step
[ ] start with spec/pcore/cursor_spec.rb     # @executor.step
    .
    . then
    .
[o] merge 'move' and 'continue' in "cursor"
    RETHINK `@node['status']` et alii
    .
    . the problem is that cnodes is empty when the break comes
    . it sees no cnodes and assumes the expression is over
    .
    . Have to clean `@node['status']` and `['on_receive_last']` upon
    . successful reception (from child?)

[x] stop having "tree" in each 'execute' message
    It's OK, messages are not, usually, persisted...
    `tree = message['tree'] || lookup_tree(self)`

[?] add Gemfile.lock to .gitignore ?
    no, because there's a gemspec

[ ] cron, every, interval

[ ] add vanilla "cancel on cancel" spec

[ ] add spec for concurrence + on_error (#receive_when_closed)
[ ] add spec for task + on_error (#receive_when_closed)

[o] `kill`: like cancel, but replies to parent then cancels children
[o] break/continue on break/continue enhance "until"
[o] break/continue/move on break/continue enhance "cursor"
[o] "break"/"continue" from outside
[o] `move approval to: traveller` find way to accept "symbols" for some atts

[ ] bind functions in "global" variables? in scope "above"?

[o] "irb" equivalent, repl, `make repl`
    flack is the "web repl"
    "flosh"

[ ] read the notes for Danny's missing parts
[ ] read the paper notes for Danny's missing parts

[ ] "player" concept, "autoplay", "autoplayer"
    Could it work at the task(er) level?
    launch(flow, forwarder: { '0_0': { pl }, 'thomas': { pl } })
    the "nid" thing could work for anything... taking shortcuts...
    rather a "forwarder"
    a stack of responses, popped for each tasker call

[ ] "trap" 'hold' concept
[ ] "trap" and tconsumed, the (sick) hope would be to let the trap
    modify the msg, it's the trap after all...
[ ] rename trap to "on"? Deny it any chance to tamper the msg...

[x] carefully remove traps for "terminated" executions
    hence, carefully determine what is a terminated execution...
    remember: this is done at the node level...
    (that will break "trap" tests that don't "stall" after their "trap"s)

[ ] `trap bind: parent` default
    `trap bind: root` default
    `trap at: parent` default... Implies we don't trap 'under'...
    `trap at: root` default
[ ] `schedule bind: parent`
    `schedule at: parent`

[ ] what if "trap" trapped only under a subtree? Is that why I made `nids: xxx`?

[o] align "trap" on "map" (last ret is fun)
[ ] how about "mapb" and "trapb" for "map block" / "trap block"?

[ ] try to have an execution go "out of memory"... place limit on node count?
    recurse???

[o] on_error attribute
  \
[ ] on_error expression
[ ] `trap failure` ~ `trap point: failed` ~ `trap error`
  \
[x] why not: `att on_error: x`
    doesn't work well with timeout... This is sufficient:
    ```
      sequence
        sequence on_error: x
          a | b
        sequence on_error: y
          c | d
    ```

[ ] Parser, fnames, start offset lines?

[o] allow for creation of a Unit with a hash conf (not a path)
[ ] it should be OK to bind a tasker on the fly
    unit.tasker.bind(tasker_name, class_or_instance)
[o] Tasker vs domain tasker vs tasker (participant)

[ ] focus on map and cmap
    have a single reduce but no creduce, have reverse/take/drop

[o] concurrence: remaining

[ ] "cmap" and its distance to "concurrence"
    array and object?
    _carr, _cobj
[ ] alias _arr to cmap?
    no for small arrays, yes for things involving tasks...
    but "cmap" needs a fun

[ ] taskers and tasks
    task statuses (as per wflow patterns)

[ ] ```$ diff <(curl http://somesite/file1) <(curl http://somesite/file2)```
    bash makes it concurrent... while flon would sequence it
    not necessarily copy, find inspiration, elegant way to have same effect...
[ ] "secon" sequence or concurrence? ^^^

[ ] gv.x is ok, allow g.x as well
[x] how about ev.x? collides with vars upon termination message... evars?

[ ] have a general logger, easily pipable to the local app logger
    (stargate logger maybe)

[ ] car/cdr/cons
    easy for arrays, how about objects? cons pair...
[ ] assoc/rassoc, lookup?
    not really necessary, unless we have non-simple keys

[ ] curry (well...)
    study currying in Scheme
    partial evaluation rather...

[ ] implement .json to .flon decompiler

[ ] `"$(xxx|J)"` to serialize as JSON

---

[o] Silence Ruby warnings thanks to `make cw`

[o] document "slice" and "index"
[o] implement "timestamp"
[x] implement `lookup "f.xyz"` or is `f["xyz"]` sufficient?

[o] BREAK reference f.a.0... and v.b.x...
    error (not like dollar)
[o] BREAK dollar
    "indexnull" inside of dollar
[o] remove unnecessary dollar

[o] `on error # block ...`
[o] `on_error \ func`
[o] document `on_error (func)`
[o] `on cancel # block ...`
[o] `on_cancel \ func`
[o] document `on_cancel (func)`
[o] `xxx on_timeout: func`
[o] `on timeout # block ...`
[o] `on_timeout \ func` punit/ !
[o] document `on_timeout (func)`
[o] document `on error \ block`
[o] document `on cancel \ block`
[o] document `on timeout \ block`

[o] Flor.const_lookup too kind??? to fix!
    ```
    class ::DummyOut < Flor::Logger::Out
    end
    @unit.conf['log_out'] = 'Flor::DummyOut'
    ~~> ::DummyOut
    ```
[o] deep /xx/    |
[o] deep ..      |-- dense
[o] deep_select  |
[x] `define return x \ def err \ x` is interpreted as
    `define return x def err` ...
    ...`%q{`... ;-)
[x] beware "_pat_guard" and "or" (conditional !== pattern)
[o] "_pat_obj" and `only`
[o] "_pat_arr" when empty
[o] ```
    match a
      [ 1 2 _ ]; do_this _
      [ _ 2 3 ]; do_that _
    # ==>
    match a
      matchup [ 1 2 _ ]; do_this _
      matchup [ _ 2 3 ]; do_that _
    ```
    could return nil (no match) or a binding (empty or not) of vars
    Should "matchup" match on f.ret?
    ```
    match a
      matchup v._val [ 1 2 _ ]; do_this _
      matchup v._val [ _ 2 3 ]; do_that _
    ```
    or
    ```
    match a
      [ 1 2 _ ]; do_this _
      [ _ 2 3 ]; do_that _
    # ==>
    match a
      _pat_arr \ 1 2 _; do_this _
      _pat_arr \ _ 2 3; do_that _
    ```
    Should _pat_arr match immediately or build a pseudo-arr for matching
    at the "match" level?
    ```
    _pat_arr v._val 1 2 3
      # that v._val could be implicit...
    _pat_arr 1 2 3
      # but what when we get into a sub _pat_arr or sub _pat_obj ?
    ```
    "or" and "guard" should be supported (as vars?)
    Avoid having vars at the _pat_arr or _pat_obj level...
    A way to push node values to nodes on execution (like vars: ...)
    .
    scheme equivalent?
    * https://github.com/clojure/core.match
    * https://github.com/clojure/core.match/wiki/Overview
    * http://blog.klipse.tech/clojure/2016/10/25/core-match.html
    * https://wiki.call-cc.org/man/3/Pattern%20matching
    * https://www.gnu.org/software/guile/manual/html_node/Pattern-Matching.html
    * https://docs.racket-lang.org/reference/match.html
    * http://www.cs.indiana.edu/chezscheme/match/
    * http://practical-scheme.net/gauche/man/gauche-refe/Pattern-matching.html#index-util_002ematch
    ```
    (doseq [n (range 1 101)]
      (println
        (match [(mod n 3) (mod n 5)]
          [0 0] "FizzBuzz"
          [0 _] "Fizz"
          [_ 0] "Buzz"
          :else n)))
    ```
[x] tasker `accept_vars: [ 'x' 'y' 'z' ]` ? meh
[o] tasker `include_vars: [ 'x', 'y', 'z' ]`
[o] this idea of a flor_tags table |tag|exid|nid| eventually
[o] let Journal and Logger use Hooker#match? 'consumed' check
    Journal or Logger #core_opts ? Or something like that.
[o] make trapper a hook?
[o] reload every minute (not yet back)
[o] better @unit.identifier string (pid, class, etc...)
[o] rework flor_messages created/consumed, introduce "held" ?
    wrap in transaction
    have a held timeout?
    if process pa takes launch message for exe1, then, as it is still processing
    exe1, message exe1.1 comes, process pb should not take exe1.1
    "holding", so that other processes know the execution is being performed...
    we already have the "loaded" status
    .
    . need something to clean messages "loaded" for too long
    . max_loaded_time (2 minutes?)
    .
    . http://sequel.jeremyevans.net/2010/03/09/pessimistic-locking.html
    . `messages = DB[:flor_messages].for_update.where(exid: exid)` ...
    ```
    # optimistic locking
    (0.000021s) BEGIN
    (0.000142s) UPDATE `flor_messages` SET `point` = 'relaunch', `lock_version` = 1 WHERE ((`id` = 1) AND (`lock_version` = 0))
    (0.000412s) COMMIT
    (0.000021s) BEGIN
    (0.000061s) UPDATE `flor_messages` SET `point` = 'relaunch', `lock_version` = 1 WHERE ((`id` = 1) AND (`lock_version` = 0))
    (0.000036s) ROLLBACK
    /Users/jmettraux/.gem/ruby/2.2.5/gems/sequel-4.38.0/lib/sequel/model/base.rb:2117:in `_update': Attempt to update object did not result in a single row modification (SQL: UPDATE `flor_messages` SET `point` = 'relaunch', `lock_version` = 1 WHERE ((`id` = 1) AND (`lock_version` = 0))) (Sequel::NoExistingObject)
    ```
[o] `open_form 'x' notify: true` accept "notify" tasker as att key name
[o] `include_vars: [ /\Aflow_/, 'd' ]` backslash A lost...
[o] taskname/tagname table DO IT BEFORE flor gets into sg
    save to / update this table upon put_execution
[o] until inside until, nested subnids?
    how about a single counter for every subnid out there?
    currently the count is held at the node level... `@node['count']`
    ```
    until x
      until y
    ```
    The same counter generates x and y, most of the time y will be x + 1.
    The counter is at the execution level, not at the proc level.
[o] use cmap to prove current `@node['count']` approach wrong for until/until
[x] counters: 'csub' vs 'sub'
    would that create collisions? -1 sub vs -1 csub
    would that create confusion? an integer for all (c)subs is less confusing
[o] log rewritten trees, 'log_tree_rw' ?
[x] how about having a single table?
[o] why the "on" block exception?
    * because "on" is higher level than "map"...
    * because "on" is a macro (from now on)...
[o] should "accept_symbol" fully dup the payload? yes
[o] ln sequence.md to https://github.com/floraison/.../lib/.../sequence.rb
[o] ln sequence.md to https://github.com/floraison/.../spec/.../sequence_spec.rb
[x] eventually rewrite "loop" to "while true"
[o] "terminated" message should have a source message
[o] `break ref: 'x'`
[o] `continue ref: 'x'`
[o] "error" or "fail" procedure
[o] Travis + JRuby
[o] "fail" and/or "error"
[o] use `@node['status']` instead of `@node['cflavour']` for until/while
    ride the on_error infra
[o] ensure until/while "continue" cancel childrens first
    (nested concurrence spec?)
[o] until/while break
    cf https://www.gnu.org/software/guile/manual/html_node/while-do.html
[o] until/while continue
[x] *ash* gc, at some point, at Storage#put_execution time?
[o] bring in Sequel connection validation
    bring it commented out?
[o] "trap" should watch under own domain and subdomains! not `exid: any`
    `trap x, execution: self/domain/subdomain`
[o] domain variables
[o] `trap heat: fun0`
[o] `trap heap: sequence`
[o] `$(node)`
[o] "trap" without child ~~ blocks... (blocks on left by default???)
[o] by default "trap" should trap with texid == {current exid}
[o] verify that "trap" only triggers once (count = 1)
[o] `trap tag: b, count: 2`
[o] `trap exid: any`
[o] fix `set f.atts { a: 0, b: -1 }`
[x] fix traps vs "#{nid}_1", what if more than one trigger?
[o] "trigger" message
[o] callbacks... hooks... for @northox
[o] make journal a hook
[o] make the logger a hook
[o] make waiters hooks? or make the waiting room a hook?
[o] compress json content in flon_xxx db? Yes, we have that.
[o] have a payload store/cache using sha...
[x] or simply compress payload, all the time...
  \ fearing to have deep trees with one copy per node of a fat payload
[o] tasker applications (applying taskers)
    ```
      sequence
        task tasker0
          # or
        tasker0
    ```
[o] `rescue Exception` might be needed inside of threads
[o] use #first_unkeyed_child_id in "ife" and company
[x] push - rename or alias to the Scheme equivalent?
[x] fix pcore/define.rb (see its TODO)
[o] display tag name(s) when entered/left tag
[o] use cancel to implement timeout
[o] fix punit/sleep.rb (see its TODO)
[o] add spec for trapping tags
[o] work on tags
[x] log to file, not to the db, drop table flon_log
[x] how about making flon_log a copy of flon_messages?
[o] inflate "ceased"
[o] have an "archive" configuration mode
[o] drop domain and its index in the migrations
    since the domain is the exid prefix...
[o] rename table names from flor_x to flon_x
[o] load procedures when the Executor subclass is instantiated
[o] rename "rad"/"radial" to "flon"
[o] 'until'/'while' (loop until / loop while)
    ```
      until > f.a 3
        x
        y
      while
        > f.a 3
        a
        b
    ```
[o] "match" as in `match f.val /stuff$/`
[o] BAG (1, 2, a: "b")
    eventually use it for hed/grp parsing...
[o] alias "sequence" and "begin"
[o] have a "set" that doesn't touch f.ret (should it be the default?)
    "setr"
[o] implement "then" and "else" same procedure
    ```
      if
        > x y
      then
        a
      else
        b
    ```
[x] fix that
    ```
      if
        true
      then
        false
      else
        echo "hello!"
    ```
[o] ensure @node mtime is set set when @node rets get collected
[o] push - pushing to "l" (unknown variable) should yield a better error msg
[o] idea `map; def x; + x 3` and `sequence; a. b. c.` (oops for dot)
    why not `;;` and `;`  and `\`
    ```
      map; def x; + x 3
      sequence; a;; b;;
      sequence; a . b
      sequence; a . b
      map; [ 1 2 3 ] . + ;
    ```
    2 cases, nl+ind and nl, ; ;;
[o] idea - have a radial "this line is at indentation 0 but is meant to be at
    same indentation as previous line"
    why not `; x` ?
[o] make @journal into a custom/configurable logger
[x] move journal to executor, so that journal: j is shared by any executor?
[x] fix pcore/set.rb (see its TODO)
[o] add spec for `sequence 3: 'stuff'`
[o] generalize `Thread.current[:errored_items]` in Storage
[o] Execution#tags, so we know where an execution stands
[o] `(make-fun 'xxx') _` not working...
[o] noop "mark name" (f.ret left untouched...)
[o] ret: common attribute
    ```
      until ret: 'over'
        # ... whatever
        # this until always returns "over"
    ```
[o] `sequence tag: tasker-name` doesn't fail...
[o] how about deleting them from #put_execution ?
  ```
  .000033s BEGIN
  .000047s DELETE FROM `flor_timers` WHERE ((`exid` = 'x') AND (`nid` = '0'))
  .000040s DELETE FROM `flor_traps` WHERE ((`exid` = 'x') AND (`nid` = '0'))
  .000057s DELETE FROM `flor_pointers` WHERE ((`exid` = 'x') AND (`nid` = '0'))
  .000021s COMMIT
  ```
  ~~~
  ```
    nids = exe['nodes'].keys
    %w[ timers traps pointers ].each do |t|
      @db["flor_#{t}"].where(exid: exid).exclude(nid: nids).delete
    end
  ```
[o] `acme_tasker` didn't work...
    so, "domain tasker" VS "foretasker"
    domain tasker is invisible to has_tasker?  while foretasker is not
    foretasker must respond immediately
    OR
    simply have a specific Loader OR Tasker implementation, since
    .
    .  @hooker =
    .    (Flor::Conf.get_class(@conf, 'hooker') || Flor::Hooker).new(self)
    .  @storage =
    .    (Flor::Conf.get_class(@conf, 'storage') || Flor::Storage).new(self)
    .  @loader =
    .    (Flor::Conf.get_class(@conf, 'loader') || Flor::Loader).new(self)
    .  @tasker =
    .    (Flor::Conf.get_class(@conf, 'tasker') || Flor::Tasker).new(self)
[o] hard munit, too hard?
    ```
    sto t4044 INFO (0.001000s) UPDATE `flor_executions` SET `content` = X'789c(...len1710)', `status` = 'terminated', `mtime` = '2017-03-12T20:31:31.494000Z', `munit` = 'sch-u0-ife80:0:0:0:3e39:806e:f2e9:f401%utun2-p26083-o3ka' WHERE (`id` = 1265)
    ```
    remove 'utun2' and 'ife'?
[o] Flor.to_djan
    ```
    awm mandate updated brilliant-fire-4 {status:active,startDate:2017-03-14}
    ```
    should we quote the date? -+/%...
[o] fear:
    it's ok not to have unit 0 pick messages of unit 1,
    but how about unit 0 picking message 0 of execution x, while
    unit 1 pickes message 1 of execution x?
    ... Double check!
    It's OK, it's exid oriented.
[o] in pcore/ and punit/ replace "reply(x" with "wrap(x"
[o] allow `'archive' => true` for texecutor (Cf spec/pcore/procedure_spec.rb)

[x] "path" vs "index" (`@node['pth']` instead of `vars['path']`)
[x] "path"/"index" to "_path"/"_index"


## src

