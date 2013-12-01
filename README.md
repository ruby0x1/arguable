
### Arguable is a simple argument parser for [Haxe](http://haxe.org/)
---

I got tired of repeatedly parsing arguments, so here is a simple argument parsing library for Haxe.

Arguable parsers arguments in the form of :   

`--argument value`   
`--argument`   

If arguments are passed incorrectly, for example `--argument value value` or `arg` the results will include the valid and invalid results for simpler parsing.

---

### Install options

`haxelib install arguable`   
`haxelib git arguable https://github.com/underscorediscovery/arguable.git`    
`haxelib local arguable /path/to/arguable-1.0.0.zip` (from releases)   
 

### Example usage

    var results = ArgParser.parse( Sys.args() );

    trace("Has any? " + results.any );
    trace("If any, how many? " + results.length );

    	// Handle any invalid arguments
    if(results.invalid.length > 0) {

    	trace("\tUnknown option/s " + results.invalid );
    	trace("\tValid option/s " + results.valid );

    } else {

    		// Handle valid arguments, 
    		// each one is a name and value property.
    	trace("Args : ");
		for(arg in results.valid) {
            trace( '\t> ' + arg.name + ' : ' + arg.value );
		}

    }

### How to run the test file
	
- Have haxe installed (obviously)
- run `neko test/argparser.n`

### To build the test file
- run `haxe build.hxml`


### That's it

- Uses `Stack` from [structural](http://github.com/underscorediscovery/structural)
- Suggestions, issues, bugs welcome.

