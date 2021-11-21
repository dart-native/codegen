import { Token, Interval, CommonTokenStream } from 'antlr4'
import BitSet from 'bitset'
import Swift5Parser from './Swift5Parser.js'
import Swift5Lexer from './Swift5Lexer.js'


export default class SwiftSupport {
  /* TODO
  There is one caveat to the rules above. If the ! or ? predefined operator
   has no whitespace on the left, it is treated as a postfix operator,
   regardless of whether it has whitespace on the right. To use the ? as
   the optional-chaining operator, it must not have whitespace on the left.
    To use it in the ternary conditional (? :) operator, it must have
    whitespace around both sides.
  */

  /*
  operator-head : /  =  -  +  !  *  %  <  >  &  |  ^  ~  ?
    | [\u00A1-\u00A7]
    | [\u00A9\u00AB]
    | [\u00AC\u00AE]
    | [\u00B0-\u00B1\u00B6\u00BB\u00BF\u00D7\u00F7]
    | [\u2016-\u2017\u2020-\u2027]
    | [\u2030-\u203E]
    | [\u2041-\u2053]
    | [\u2055-\u205E]
    | [\u2190-\u23FF]
    | [\u2500-\u2775]
    | [\u2794-\u2BFF]
    | [\u2E00-\u2E7F]
    | [\u3001-\u3003]
    | [\u3008-\u3030]
    ;
   */
  operatorHead = new BitSet(0x10000);
  operatorCharacter;
  leftWS = new BitSet(255);
  rightWS = new BitSet(255);

  constructor() {
    // operator-head → /  =­  -­  +­  !­  *­  %­  <­  >­  &­  |­  ^­  ~­  ?­
    this.operatorHead.set('/'.codePointAt(0));
    this.operatorHead.set('='.codePointAt(0));
    this.operatorHead.set('-'.codePointAt(0));
    this.operatorHead.set('+'.codePointAt(0));
    this.operatorHead.set('!'.codePointAt(0));
    this.operatorHead.set('*'.codePointAt(0));
    this.operatorHead.set('%'.codePointAt(0));
    this.operatorHead.set('&'.codePointAt(0));
    this.operatorHead.set('|'.codePointAt(0));
    this.operatorHead.set('<'.codePointAt(0));
    this.operatorHead.set('>'.codePointAt(0));
    this.operatorHead.set('^'.codePointAt(0));
    this.operatorHead.set('~'.codePointAt(0));
    this.operatorHead.set('?'.codePointAt(0));

    // operator-head → U+00A1–U+00A7
    this.operatorHead.setRange(0x00A1, 0x00A7);

    // operator-head → U+00A9 or U+00AB
    this.operatorHead.set(0x00A9);
    this.operatorHead.set(0x00AB);

    // operator-head → U+00AC or U+00AE
    this.operatorHead.set(0x00AC);
    this.operatorHead.set(0x00AE);

    // operator-head → U+00B0–U+00B1, U+00B6, U+00BB, U+00BF, U+00D7, or U+00F7
    this.operatorHead.setRange(0x00B0, 0x00B1);
    this.operatorHead.set(0x00B6);
    this.operatorHead.set(0x00BB);
    this.operatorHead.set(0x00BF);
    this.operatorHead.set(0x00D7);
    this.operatorHead.set(0x00F7);

    // operator-head → U+2016–U+2017 or U+2020–U+2027
    this.operatorHead.setRange(0x2016, 0x2017);
    this.operatorHead.setRange(0x2020, 0x2027);

    // operator-head → U+2030–U+203E
    this.operatorHead.setRange(0x2030, 0x203E);

    // operator-head → U+2041–U+2053
    this.operatorHead.setRange(0x2041, 0x2053);

    // operator-head → U+2055–U+205E
    this.operatorHead.setRange(0x2055, 0x205E);

    // operator-head → U+2190–U+23FF
    this.operatorHead.setRange(0x2190, 0x23FF);

    // operator-head → U+2500–U+2775
    this.operatorHead.setRange(0x2500, 0x2775);

    // operator-head → U+2794–U+2BFF
    this.operatorHead.setRange(0x2794, 0x2BFF);

    // operator-head → U+2E00–U+2E7F
    this.operatorHead.setRange(0x2E00, 0x2E7F);

    // operator-head → U+3001–U+3003
    this.operatorHead.setRange(0x3001, 0x3003);

    // operator-head → U+3008–U+3030
    this.operatorHead.setRange(0x3008, 0x3020);

    this.operatorHead.set(0x3030);

    // operator-character → operator-head­
    this.operatorCharacter = this.operatorHead.clone();

    // operator-character → U+0300–U+036F
    this.operatorCharacter.setRange(0x0300, 0x036F);
    // operator-character → U+1DC0–U+1DFF
    this.operatorCharacter.setRange(0x1DC0, 0x1DFF);
    // operator-character → U+20D0–U+20FF
    this.operatorCharacter.setRange(0x20D0, 0x20FF);
    // operator-character → U+FE00–U+FE0F
    this.operatorCharacter.setRange(0xFE00, 0xFE0F);
    // operator-character → U+FE20–U+FE2F
    this.operatorCharacter.setRange(0xFE20, 0xFE2F);
    // operator-character → U+E0100–U+E01EF
    this.operatorCharacter.setRange(0xE0100, 0xE01EF);

    this.leftWS.set(Swift5Parser.WS);
    this.leftWS.set(Swift5Parser.LPAREN);
    this.leftWS.set(Swift5Parser.Interpolataion_multi_line);
    this.leftWS.set(Swift5Parser.Interpolataion_single_line);
    this.leftWS.set(Swift5Parser.LBRACK);
    this.leftWS.set(Swift5Parser.LCURLY);
    this.leftWS.set(Swift5Parser.COMMA);
    this.leftWS.set(Swift5Parser.COLON);
    this.leftWS.set(Swift5Parser.SEMI);

    this.rightWS.set(Swift5Parser.WS);
    this.rightWS.set(Swift5Parser.RPAREN);
    this.rightWS.set(Swift5Parser.RBRACK);
    this.rightWS.set(Swift5Parser.RCURLY);
    this.rightWS.set(Swift5Parser.COMMA);
    this.rightWS.set(Swift5Parser.COLON);
    this.rightWS.set(Swift5Parser.SEMI);
    this.rightWS.set(Swift5Parser.Line_comment);
    this.rightWS.set(Swift5Parser.Block_comment);
  }

  isCharacterFromSet(token, bitSet) {
    if (token.type == Token.EOF) {
      return false;
    } else {
      let text = token.text;
      let codepoint = text.codePointAt(0);
      let count = parseInt((codepoint - 1) / 0xFFFF) + 1;
      if (count != text.length) {
        // not a single character
        return false;
      } else {
        return bitSet.get(codepoint);
      }
    }
  }

  isOperatorHead(token) {
    return this.isCharacterFromSet(token, this.operatorHead);
  }

  isOperatorCharacter(token) {
    return this.isCharacterFromSet(token, this.operatorCharacter);
  }

  isOpNext(tokens) {
    let start = tokens.index;
    let lt = tokens.get(start);
    let stop = this.getLastOpTokenIndex(tokens);
    return stop != -1;
    // System.out.printf("isOpNext: i=%d t='%s'", start, lt.text);
    // System.out.printf(", op='%s'\n", tokens.getText(new Interval(start,stop)));
  }

  /**
   * Find stop token index of next operator; return -1 if not operator.
   */
  getLastOpTokenIndex(tokens) {
    let currentTokenIndex = tokens.index; // current on-channel lookahead token index
    let currentToken = tokens.get(currentTokenIndex);

    // console.log("getLastOpTokenIndex: "+currentToken.text);


    tokens.text; // Ensures that tokens can be read
    // operator → dot-operator-head­ dot-operator-characters
    if (currentToken.type == Swift5Parser.DOT && tokens.get(currentTokenIndex + 1).type == Swift5Parser.DOT) {
      // console.log("DOT");


      // dot-operator
      currentTokenIndex += 2; // point at token after ".."
      currentToken = tokens.get(currentTokenIndex);

      // dot-operator-character → .­ | operator-character­
      while (currentToken.type == Swift5Parser.DOT || this.isOperatorCharacter(currentToken)) {
        // console.log("DOT");
        currentTokenIndex++;
        currentToken = tokens.get(currentTokenIndex);
      }

      // console.log("result: "+(currentTokenIndex - 1));
      return currentTokenIndex - 1;
    }

    // operator → operator-head­ operator-characters­?

    if (this.isOperatorHead(currentToken)) {
      // console.log("isOperatorHead");

      currentToken = tokens.get(currentTokenIndex);
      while (this.isOperatorCharacter(currentToken)) {
        // console.log("isOperatorCharacter");
        currentTokenIndex++;
        currentToken = tokens.get(currentTokenIndex);
      }
      // console.log("result: "+(currentTokenIndex - 1));
      return currentTokenIndex - 1;
    } else {
      // console.log("result: "+(-1));
      return -1;
    }
  }

  /**
   * "If an operator has whitespace around both sides or around neither side,
   * it is treated as a binary operator. As an example, the + operator in a+b
   * and a + b is treated as a binary operator."
   */
  isBinaryOp(tokens) {
    let stop = this.getLastOpTokenIndex(tokens);
    if (stop == -1) return false;

    let start = tokens.index;
    let currentToken = tokens.get(start);
    let prevToken = tokens.get(start - 1); // includes hidden-channel tokens
    let nextToken = tokens.get(stop + 1);
    let prevIsWS = this.isLeftOperatorWS(prevToken);
    let nextIsWS = this.isRightOperatorWS(nextToken);
    //String text = tokens.getText(new Interval(start, stop));
    // console.log("isBinaryOp: '"+prevToken+"','"+text+"','"+nextToken+"' is "+result);
    if (prevIsWS) {
      return nextIsWS;
    } else {
      if (currentToken.type == Swift5Lexer.BANG || currentToken.type == Swift5Lexer.QUESTION) {
        return false;
      } else {
        if (!nextIsWS) return nextToken.type != Swift5Lexer.DOT;
      }
    }
    return false;
  }

  /**
   * "If an operator has whitespace on the left side only, it is treated as a
   * prefix unary operator. As an example, the ++ operator in a ++b is treated
   * as a prefix unary operator."
   */
  isPrefixOp(tokens) {
    let stop = this.getLastOpTokenIndex(tokens);
    if (stop == -1) return false;

    let start = tokens.index;
    let prevToken = tokens.get(start - 1); // includes hidden-channel tokens
    let nextToken = tokens.get(stop + 1);
    prevIsWS = this.isLeftOperatorWS(prevToken);
    nextIsWS = this.isRightOperatorWS(nextToken);
    //String text = tokens.getText(new Interval(start, stop));
    //  console.log("isPrefixOp: '"+prevToken+"','"+text+"','"+nextToken+"' is "+result);
    return prevIsWS && !nextIsWS;
  }

  /**
   * "If an operator has whitespace on the right side only, it is treated as a
   * postfix unary operator. As an example, the ++ operator in a++ b is treated
   * as a postfix unary operator."
   * <p>
   * "If an operator has no whitespace on the left but is followed immediately
   * by a dot (.), it is treated as a postfix unary operator. As an example,
   * the ++ operator in a++.b is treated as a postfix unary operator (a++ .b
   * rather than a ++ .b)."
   */
  isPostfixOp(tokens) {
    let stop = this.getLastOpTokenIndex(tokens);
    if (stop == -1) return false;

    let start = tokens.index;
    let prevToken = tokens.get(start - 1); // includes hidden-channel tokens
    let nextToken = tokens.get(stop + 1);
    let prevIsWS = this.isLeftOperatorWS(prevToken);
    let nextIsWS = this.isRightOperatorWS(nextToken);
    //String text = tokens.getText(new Interval(start, stop));
    //  console.log("isPostfixOp: '"+prevToken+"','"+text+"','"+nextToken+"' is "+result);
    return !prevIsWS && nextIsWS ||
      !prevIsWS && nextToken.type == Swift5Parser.DOT;
  }

  isOperator(tokens, op) {
    let stop = this.getLastOpTokenIndex(tokens);
    if (stop == -1) return false;

    let start = tokens.index;
    let text = tokens.getText(new Interval(start, stop));
    //  console.log("text: '"+text+"', op: '"+op+"', text.equals(op): '"+text.equals(op)+"'");

    // for (int i = 0; i <= stop; i++) {
    //      console.log("token["+i+"] = '"+tokens.getText(new Interval(i, i))+"'");
    // }

    return text == op;
  }

  isLeftOperatorWS(t) {
    return this.leftWS.get(t.type);
  }

  isRightOperatorWS(t) {
    return this.rightWS.get(t.type) || t.type == Token.EOF;
  }

  isSeparatedStatement(tokens, indexOfPreviousStatement) {
    // console.log("------");
    // console.log("indexOfPreviousStatement: " + indexOfPreviousStatement);

    var indexFrom = indexOfPreviousStatement - 1;
    let indexTo = tokens.index - 1;

    if (indexFrom >= 0) {
      // Stupid check for new line and semicolon, can be optimized
      while (indexFrom >= 0 && tokens.get(indexFrom).channel == Token.HIDDEN_CHANNEL) {
        indexFrom--;
      }

      // console.log("from: '" + tokens.getText(new Interval(indexFrom, indexFrom))+"', "+tokens.get(indexFrom));
      // console.log("to: '" + tokens.getText(new Interval(indexTo, indexTo))+"', "+tokens.get(indexTo));
      // console.log("in_between: '" + tokens.getText(new Interval(indexFrom, indexTo)));

      //for (int i = previousIndex; i < currentIndex; i++)
      for (var i = indexTo; i >= indexFrom; i--) {
        let t = tokens.get(i).text;
        if (t.includes("\n") || t.includes(";")) {
          return true;
        }
      }
      return false;
      //String text = tokens.getText(new Interval(indexFrom, indexTo));
      //return text.includes("\n") || text.includes(";");
    } else {
      return true;
    }
  }
}