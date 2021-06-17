const _ = require('lodash')
const Handlebars = require('handlebars')
const fs = require('fs')

Handlebars.registerHelper('max', (varName, maxLength) => `substring(${varName}, 0, min(length(${varName}), ${maxLength}))`)

try {
    const resoureDefinitionFile = 'resourceDedfinition.json'
    if (!fs.existsSync(resoureDefinitionFile))
        throw new Error(`Resource definition file (${resoureDefinitionFile}) was not found.`)

    const definitions = JSON.parse(fs.readFileSync('resourceDefinition.json', { encoding: 'utf-8' }))

    // Prepare for camel cased property names in bicep
    _.forEach(definitions, v => v.name = _.camelCase(v.name));
    const templateInput = { definitions }

    // Compile the template
    const template = Handlebars.compile(fs.readFileSync('naming.module.hbs', { encoding: 'utf-8' }))
    
    // Apply the template
    const output = template(templateInput)

    // Save output to a file
    fs.writeFileSync('naming.module.bicep', output)
}
catch (ex) {
    console.error(`Template generation failed: ${ex.message}`)
    process.exit(1)
}
