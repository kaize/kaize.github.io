---
layout: page
title: "Рабочее окружение"
---
{% include JB/setup %}

### gitflow

[Удачная модель ветвления](http://habrahabr.ru/post/106912/)

[git extension](https://github.com/nvie/gitflow.git)

[Getting Started – Git-Flow](http://yakiloo.com/getting-started-git-flow/)

### soft

* keepassx - password manager
* dropbox

### chrome extensions

[Ruby on Rails API Search](https://chrome.google.com/webstore/detail/ruby-on-rails-api-search/nbhhppofdccphcpbilanmljnlkmbgike)

[XV - XML Viewer](https://chrome.google.com/webstore/detail/eeocglpgjdpaefaedpblffpeebgmgddk)

[JSONView](https://chrome.google.com/webstore/detail/chklaanhfefbnpoihckbnefhakgolnmc)

[Advanced REST client Application](https://chrome.google.com/webstore/detail/hgmloofddffdnphfgcellkdfbfbjeloo/related?utm_source=chrome-ntp-icon)

[NewRelic + Airbrake](https://chrome.google.com/webstore/detail/newrelic-%2B-airbrake-for-g/emencamphkobkmeloepceomcacgejlnc)

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
  branch = auto
  diff = auto
  interactive = auto
  status = auto
  ui = auto
  pager = true

[merge]
  summary=true

[alias]
  b = branch -v
  r = remote -v
  t = tag -l
  cp = cherry-pick -x
  co = checkout
  br = branch
  ci = commit
  st = status -sb
  ds = diff --staged
  amend = commit --amend -C HEAD
  undo = reset --soft HEAD^
	unstage = reset HEAD --
  uncommit = reset --soft HEAD^
	last = log -1 HEAD
	up = pull --rebase
	put = push origin HEAD
	latest = for-each-ref --sort=-committerdate --format='%(committerdate:short) %(refname:short) [%(committername)]'
  ls = log  --decorate --date=short
  graph = log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'

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
