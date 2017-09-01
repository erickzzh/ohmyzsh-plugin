function espn() {
  emulate -L zsh

showHelp () {
    echo "  [league name] scoreboard                         # gets the scoredboard for today";
    echo "  [league name] standings                          # gets the standing of the league";
    echo "  [league name] schedule                           # gets the game schedule";

}
  if [ $# = 0 ]; then
    showHelp;
  else
    # declear an array of searches
    typeset -A urls
    urls=(
        nba         "http://www.espn.com/nba/"
        mlb         "http://www.espn.com/mlb/"
        nfl         "http://www.espn.com/nfl/"
        ncaaf       "http://www.espn.com/college-football/"
    )
    #     check if the leagua is supported
    if [[ -z "$urls[$1]" ]]; then
        echo "league $1 not supported."
        return 1
    fi

    # check for the number of param
    if [[ $# -gt 1 ]]; then
        # build search url:
        # join arguments passed with '+', then append to search engine URL
        url="${urls[$1]}${(j:+:)@[2,-1]}"
    else
        # goto the main page
        url="${(j://:)${urls[$1]}}"
    fi


    open_command "$url"
  fi
}


alias nba='espn nba'
alias mlb='espn mlb'
alias nfl='espn nfl'
alias ncaaf='espn ncaaf'
