-- JMS Dark  theme
-- 2018-11-20

local property = require('lexer').property

property['colour.black'] = '#111111'
property['colour.grey'] = '#777777'
property['colour.white'] = '#DDDDDD'
property['colour.red'] = '#FF0000'
property['colour.yellow'] = '#E6DC65'
property['colour.green'] = '#77C32F'
property['colour.blue'] = '#67A2F0'
property['colour.purple'] = '#AF82FF'

-- Default style.
property['style.default'] = 'fore:$(colour.white),back:$(colour.black)'

-- Token styles.
property['style.nothing'] = ''
property['style.whitespace'] = '$(style.nothing)'
property['style.identifier'] = 'fore:$(colour.white)'
property['style.comment'] = 'fore:$(colour.grey)'
property['style.error'] = 'fore:$(colour.red)'
property['style.constant'] = 'fore:$(colour.yellow)'
property['style.label'] = 'fore:$(colour.yellow)'
property['style.regex'] = 'fore:$(colour.yellow)'
property['style.variable'] = 'fore:$(colour.yellow)'
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
