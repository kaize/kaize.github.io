---
layout: page
title: "Рабочее окружение"
---
{% include JB/setup %}
{% include JB/comments %}

### gitflow

[Удачная модель ветвления](http://habrahabr.ru/post/106912/)

[git extension](https://github.com/nvie/gitflow.git)

[Getting Started – Git-Flow](http://yakiloo.com/getting-started-git-flow/)

### vim

[AkitaOnRails Vimfiles](https://github.com/akitaonrails/vimfiles)

### ~/.vimrc for akita

{% highlight vim linenos %}

    let mapleader = ","
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"

    source ~/.vim/vimrc

    "explorer mappings
    nnoremap <f3> :TlistToggle<cr>
    nnoremap <f2> :NERDTreeToggle<CR>

{% endhighlight %}

### ~/.bashrc

{% highlight bash linenos %}

    export PS1='\w$(__git_ps1 "(%s)"): '
    PS1="\$(~/.rvm/bin/rvm-prompt i v p g) $PS1"

{% endhighlight %}

### ~/.gitconfig

{% highlight bash linenos %}

    [color]
      diff = auto
      status = auto
      branch = auto
      interactive = auto
      ui = true
      pager = true

    [color "branch"]
      current = yellow reverse
      local = yellow
      remote = green

    [color "diff"]
      meta = yellow bold
      frag = magenta bold
      old = red bold
      new = green bold

    [color "status"]
      added = yellow
      changed = green
      untracked = cyan
    [alias]
      co = checkout
      br = branch
      ci = commit
      st = status
        unstage = reset HEAD --
        last = log -1 HEAD
        up = pull --rebase
        put = push origin HEAD

{% endhighlight %}

### ~/.caprc

{% highlight ruby linenos %}

    # gem install capistrano_colors
    # aptitude install libnotify-bin

    def notify(message, body, urgency, icon = :info)
      system("notify-send --urgency=#{urgency} --icon=#{icon} '#{message}' '#{body}'")
    end

    on :exit do
      notify('Capistrano Task: Finished', ARGV.join(' '), :low)
    end

    require 'capistrano_colors'

{% endhighlight %}
