-- JMS Light theme
-- 2019-01-26

local property = require('lexer').property

property['colour.black'] = '#222222'
property['colour.grey'] = '#888888'
property['colour.white'] = '#FFFFFF'
property['colour.red'] = '#FF0000'
property['colour.orange'] = '#FF8800'
property['colour.green'] = '00AA00'
property['colour.blue'] = '#4466EE'
property['colour.purple'] = '#881199'

-- Default style.
property['style.default'] = 'fore:$(colour.black),back:$(colour.white)'

-- Token styles.
property['style.nothing'] = ''
property['style.whitespace'] = '$(style.nothing)'
property['style.identifier'] = 'fore:$(colour.black)'
property['style.comment'] = 'fore:$(colour.grey)'
property['style.error'] = 'fore:$(colour.red)'
property['style.constant'] = 'fore:$(colour.orange)'
property['style.label'] = 'fore:$(colour.orange)'
property['style.regex'] = 'fore:$(colour.orange)'
property['style.variable'] = 'fore:$(colour.orange)'
property['style.number'] = 'fore:$(colour.green)'
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
