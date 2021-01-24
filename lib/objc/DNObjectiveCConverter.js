import { InputStream, CommonTokenStream, tree as _tree } from 'antlr4'
import ObjectiveCLexer from '../../parser/objc/ObjectiveCLexer.js'
import ObjectiveCParser from '../../parser/objc/ObjectiveCParser.js'
import DNObjectiveCParserListener from './DNObjectiveCParserListener.js'
import { parentPort, workerData } from 'worker_threads'

export default class DNObjectiveCConverter {
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
            const lexer = new ObjectiveCLexer(chars)

            const tokens = new CommonTokenStream(lexer)
            const parser = new ObjectiveCParser(tokens)
            const tree = parser.translationUnit()
            let isPartOfFile = workerData ? workerData.isPartOfFile : false
            const listener = new DNObjectiveCParserListener(cb, isPartOfFile)
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

new DNObjectiveCConverter().convert()