
import arguable.ArgParser;

class Test {

    static function main() {

        var results = ArgParser.parse( Sys.args() );

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