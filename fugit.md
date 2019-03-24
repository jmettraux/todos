
[ ] mirror DST transition #next_time specs for #previous_time

[o] gh-18
    `[ '0 9 29 feb *', '2016-02-29 09:00', '2019-03-23' ],`
    ```
    def dec_month
      dec(@t.day * 24 * 3600 + @t.hour * 3600 + @t.min * 60 + @t.sec + 1)
      #dec(@t.day * 24 * 3600 + 1)
    end
    ```

[ ] is EoTime#reach(points) useful for Fugit::Cron and friends?

[ ] lib/fugit/nat/every.rb
[ ] lib/fugit/nat/in.rb
[ ] lib/fugit/nat/at.rb
[ ] so that nat parsing becomes `every || in || at || ...`
[ ] rufus-scheduler `scheduler.schedule('every day at 5pm') {}`

[ ] benchmark fugit parsing
[ ] tune parsing itself
[ ] cache parsing results (LRU maybe)

## src


