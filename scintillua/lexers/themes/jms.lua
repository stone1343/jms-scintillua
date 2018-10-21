-- JMS Light theme
-- 2018-10-20
local property = require('lexer').property

property['colour.black'] = '#111111'
property['colour.grey'] = '#AAAAAA'
property['colour.white'] = '#FFFFFF'
property['colour.red'] = '#EE3333'
property['colour.orange'] = '#EE8811'
property['colour.yellow'] = '#EEEE11'
property['colour.green'] = '11DD11'
property['colour.turquoise'] = '#11CCCC'
property['colour.blue'] = '#1111FF'
property['colour.purple'] = '#DD11DD'

-- Default style.
property['style.default'] = 'fore:$(colour.black),back:$(colour.white)'

-- Token styles.
property['style.nothing'] = ''
property['style.whitespace'] = '$(style.nothing)'
property['style.identifier'] = 'fore:$(colour.black)'
property['style.comment'] = 'fore:$(colour.grey)'
property['style.error'] = 'fore:$(colour.red)'
property['style.definition'] = 'fore:$(colour.orange)'
property['style.embedded'] = 'fore:$(colour.orange)'
property['style.label'] = 'fore:$(colour.orange)'
property['style.constant'] = 'fore:$(colour.yellow)'
property['style.variable'] = 'fore:$(colour.yellow)'
property['style.number'] = 'fore:$(colour.green)'
property['style.regex'] = 'fore:$(colour.turquoise)'
property['style.class'] = 'fore:$(colour.blue)'
property['style.function'] = 'fore:$(colour.blue)'
property['style.keyword'] = 'fore:$(colour.blue)'
property['style.operator'] = 'fore:$(colour.blue)'
property['style.preprocessor'] = 'fore:$(colour.blue)'
property['style.tag'] = 'fore:$(colour.blue)'
property['style.type'] = 'fore:$(colour.blue)'
property['style.string'] = 'fore:$(colour.purple)'

-- Predefined styles.
property['style.indentguide'] = 'fore:$(colour.grey)'
