
### Arguable is a simple argument parser for [Haxe](http://haxe.org/)
---

I got tired of repeatedly parsing arguments, so here is a simple argument parsing library for Haxe.

Arguable parsers arguments in the form of :   

`--argument value`   
`--argument`   

If arguments are passed incorrectly, for example `--argument value value` or `arg`,   
the results will include the valid and invalid results in the set.

### Results API

    var results = ArgParser.parse( Sys.args() );

        results.any : Bool ;
        results.length : Int;
        results.invalid : Array<Arg>;
        results.valid : Array<Arg>; 

            //the below functions on operate on valid arguments
            
        results.has( arg:String ) : Bool;
            //returns null if arg is not found
        results.get( arg:String ) : Arg 
            //returns [] if not found, or the list of args by the same name
        results.getAll( arg:String ) : Array<Arg>


---

### Install options

`haxelib install arguable`   
`haxelib git arguable https://github.com/underscorediscovery/arguable.git`    
`haxelib local arguable /path/to/arguable-1.0.0.zip` (from releases)   
 

### Example usage

    var results = ArgParser.parse( Sys.args() );

    trace("Has any? " + results.any );
    trace("If any, how many? " + results.length );

    var config_path = 'default_config.json';
    if( args.has('config') ) {
        config_path = args.get('config').value;
    }

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

### History
1.0.1 - Added has/get/getAll api
1.0.0 - Initial release

### That's it

- Uses `Stack` from [structural](http://github.com/underscorediscovery/structural)
- Suggestions, issues, bugs welcome.

