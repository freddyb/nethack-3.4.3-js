Module.preRun.push(function() {
    var hackEnv = { // taken from the nethack shellscript
        'HACKDIR':'.',
        'HACK': './nethack',
        'MAXNROFPLAYERS': '4', // envs-values are strings, right?
        'TERM': 'color',
        'PAGER': 'less',
        'TERMCAP': './termcap',
    };
    for (var key in hackEnv) {
        var Ukey = key.toUpperCase();    
        ENV[Ukey] = hackEnv[key];    
    }
});
