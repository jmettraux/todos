
[o] add spec for ConflictError
[o] have a single #refresh implementation `@cache_xxx`
    done at flor level
[o] fail on Task#transition_to_x if mtime has changed?
[o] explode `Task#transition_and_or_assign(state, *as)` for readability
[o] set domain in `Task#transition_and_or_assign(state, *as)`
[o] add spec for #transition_and_or_assign vs old assignments
[o] Worklist#tasks point to class, not to class#all
[o] use flor_model_cache_ in all 3 models
[o] use status: 'active' in all 3 models
[o] make :current pseudo assignment the default
[x] enforce state for offer/allocate/start

[ ] `Task#push_payload`
    `Task#push_content`
    `Task#<<`

[ ] Task#transition_to_x accept `(:user, :bob)`

[ ] enforce single resource for allocated

[ ] factor @domain in List#list_tasks
[ ] factor @domain in List#tasks and friends class datasets

[ ] add methods to store :content in an assignments
[ ] add methods to set :description in an assignments

[ ] Task#archive and friends

[ ] let #fail and #complete reply to flor by default
[ ] have a worklist setting that prevents auto-reply to flor

[ ] use tasks not linked to flor (fantasy exid) to speed tests


## src

