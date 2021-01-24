import { InputStream, CommonTokenStream, tree as _tree } from 'antlr4'
import Java9Lexer from '../../parser/java/Java9Lexer.js'
import Java9Parser from '../../parser/java/Java9Parser.js'
import DNJavaParserListener from './DNJavaParserListener.js'
import { parentPort, workerData } from 'worker_threads'

export default class DNJavaConverter {
    convert(content, cb) {
        if (!content) {
            if (!workerData) {
                if (cb) {
                    cb(null, null)
                }
                return
            }
            content = workerData.content
        }
        if (!cb) {
            cb = this.callback
        }

        try {
            const chars = new InputStream(content)
            const lexer = new Java9Lexer(chars)

            const tokens = new CommonTokenStream(lexer)
            const parser = new Java9Parser(tokens)
            const tree = parser.compilationUnit()
            let isPartOfFile = workerData ? workerData.isPartOfFile : false
            const listener = new DNJavaParserListener(cb, content)
            _tree.ParseTreeWalker.DEFAULT.walk(listener, tree)
        } catch (e) {
            cb(null, e)
        }
    }

    callback(result, error) {
        // Send a message to the main thread.
        parentPort.postMessage({ result: result, error: error });
    }
}

new DNJavaConverter().convert()
