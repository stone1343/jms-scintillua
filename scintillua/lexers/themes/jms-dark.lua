-- JMS Dark  theme
-- 2018-10-21

local property = require('lexer').property

property['colour.black'] = '#111111'
property['colour.grey'] = '#888888'
property['colour.white'] = '#EEEEEE'
property['colour.red'] = '#EE3333'
property['colour.orange'] = '#EE8833'
property['colour.green'] = '#33EE33'
property['colour.turquoise'] = '#33EEEE'
property['colour.blue'] = '#5555FF'
property['colour.purple'] = '#EE22EE'

-- Default style.
property['style.default'] = 'fore:$(colour.white),back:$(colour.black)'

-- Token styles.
property['style.nothing'] = ''
property['style.whitespace'] = '$(style.nothing)'
property['style.identifier'] = 'fore:$(colour.white)'
property['style.comment'] = 'fore:$(colour.grey)'
property['style.error'] = 'fore:$(colour.red)'
property['style.label'] = 'fore:$(colour.orange)'
property['style.constant'] = 'fore:$(colour.orange)'
property['style.variable'] = 'fore:$(colour.orange)'
property['style.number'] = 'fore:$(colour.green)'
property['style.regex'] = 'fore:$(colour.turquoise)'
property['style.class'] = 'fore:$(colour.blue)'
property['style.definition'] = 'fore:$(colour.blue)'
property['style.embedded'] = 'fore:$(colour.blue)'
property['style.function'] = 'fore:$(colour.blue)'
property['style.keyword'] = 'fore:$(colour.blue)'
property['style.operator'] = 'fore:$(colour.blue)'
property['style.preprocessor'] = 'fore:$(colour.blue)'
property['style.tag'] = 'fore:$(colour.blue)'
property['style.type'] = 'fore:$(colour.blue)'
property['style.string'] = 'fore:$(colour.purple)'

-- Predefined styles.
property['style.indentguide'] = 'fore:$(colour.grey)'
