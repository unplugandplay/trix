Trix.config.blockAttributes = attributes =
  default:
    tagName: "div"
    parse: false
  quote:
    tagName: "blockquote"
    nestable: true
  heading1:
    tagName: "h1"
    terminal: true
    breakOnReturn: true
    groupsWithSameType: false
  code:
    tagName: "pre"
    text:
      plaintext: true
  bulletList:
    tagName: "ul"
    parse: false
  bullet:
    tagName: "li"
    listAttribute: "bulletList"
    groupsWithSameType: false
    test: (element) ->
      Trix.tagName(element.parentNode) is attributes[@listAttribute].tagName
  numberList:
    tagName: "ol"
    parse: false
  number:
    tagName: "li"
    listAttribute: "numberList"
    groupsWithSameType: false
    test: (element) ->
      Trix.tagName(element.parentNode) is attributes[@listAttribute].tagName
