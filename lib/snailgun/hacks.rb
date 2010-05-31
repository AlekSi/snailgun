# Fix truncation of $0. See http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/336743
$progname = $0
alias $PROGRAM_NAME $0
alias $0 $progname
trace_var(:$0) {|val| $PROGRAM_NAME = val} # update for ps
