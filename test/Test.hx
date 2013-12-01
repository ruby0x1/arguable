
import arguable.ArgParser;

class Test {

    static function main() {

        var results = ArgParser.parse( Sys.args() );

        trace("Has any? " + results.any );
        trace("If any, how many? " + results.length );        

        var config_path = 'default_config.json';
        if( results.has('config') ) {
            config_path = results.get('config').value;
        }

        trace("config_path " + config_path);

        if(results.invalid.length > 0) {
        	trace("\tUnknown option/s " + results.invalid );
        	trace("\tValid option/s " + results.valid );
        } else {

        	trace("Args : ");
        	for(arg in results.valid) {
                trace( '\t> ' + arg.name + ' : ' + arg.value );
            }
        }

    } //main()

} //Test