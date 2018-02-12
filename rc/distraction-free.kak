set-face DistractionFree comment

declare-option range-specs distraction_free
declare-option bool distraction_free_enabled no

define-command -hidden distraction-free-update %{
  set-option window distraction_free %val{timestamp}
  evaluate-commands -draft %{
    execute-keys -no-hooks '<a-i>p<a-;>kglGg<a-;>'
    set-option -add window distraction_free "%val{selection_desc}|DistractionFree"
  }
  evaluate-commands -draft %{
    execute-keys -no-hooks '<a-i>pjghGe'
    set-option -add window distraction_free "%val{selection_desc}|DistractionFree"
  }
}

define-command distraction-free-enable -docstring 'Enable distraction-free mode' %{
  hook window -group distraction-free NormalKey [jkJKnN] distraction-free-update
  hook window -group distraction-free NormalIdle .* distraction-free-update
  add-highlighter window ranges distraction_free
  set-option window distraction_free_enabled yes
}

define-command distraction-free-disable -docstring 'Disable distraction-free mode' %{
  remove-highlighter window/hlranges_distraction_free
  remove-hooks window distraction-free
  set-option window distraction_free_enabled no
}

define-command distraction-free-toggle -docstring 'Toggle distraction-free mode' %{ %sh{
  if [ "$kak_opt_distraction_free_enabled" = true ]; then
    echo distraction-free-disable
  else
    echo distraction-free-enable
  fi
}}
