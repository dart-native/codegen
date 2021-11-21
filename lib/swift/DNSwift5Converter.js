import { InputStream, CommonTokenStream, tree as _tree } from 'antlr4'
import Swift5Lexer from '../../parser/swift/Swift5Lexer.js'
import Swift5Parser from '../../parser/swift/Swift5Parser.js'
import DNSwift5ParserListener from './DNSwift5ParserListener.js'
import { parentPort, workerData } from 'worker_threads'

export default class DNSwift5Converter {
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
            const lexer = new Swift5Lexer(chars)

            const tokens = new CommonTokenStream(lexer)
            const parser = new Swift5Parser(tokens)
            const tree = parser.top_level()
            let isPartOfFile = workerData ? workerData.isPartOfFile : false
            const listener = new DNSwift5ParserListener(cb, isPartOfFile)
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

new DNSwift5Converter().convert()