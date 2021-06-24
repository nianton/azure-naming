const _ = require('lodash')
const Handlebars = require('handlebars')
const fs = require('fs')

const resoureDefinitionFile = 'resourceDefinition.json'
const bicepTemplateFile = 'templates/naming.module.bicep.hbs'
const readmeTemplateFile = 'templates/README.md.hbs'
const bicepFile = 'dist/naming.module.bicep'
const readmeFile = 'README.md'

Handlebars.registerHelper('upper', str => str.toUpperCase())

try {

    if (!fs.existsSync(resoureDefinitionFile))
        throw new Error(`Resource definition file (${resoureDefinitionFile}) was not found.`)

    if (!fs.existsSync(bicepTemplateFile))
        throw new Error(`Template bicep generation file (${bicepTemplateFile}) was not found.`)

    if (!fs.existsSync(readmeTemplateFile))
        throw new Error(`Template README generation file (${readmeTemplateFile}) was not found.`)

    const definitions = JSON.parse(fs.readFileSync('resourceDefinition.json', { encoding: 'utf-8' }))
    const sampleOutput = JSON.parse(fs.readFileSync('templates/sample.output.json', { encoding: 'utf-8' }))

    // Prepare for camel cased property names in bicep
    _.forEach(definitions, v => v.name = _.camelCase(v.name));
    
    // Convert to array to facilitate generation
    const sampleOutputs = Object.keys(sampleOutput).map(key => ({ name: key, result: sampleOutput[key] }))
    
    // Group by first letter
    const grouppedOutputs = _.groupBy(sampleOutputs, v => v.name[0])
    
    // Convert to array to facilitate generation
    const outputGroups = Object.keys(grouppedOutputs).map(key => ({ key, values: grouppedOutputs[key] }))

    const templateInput = { definitions, outputGroups }

    // Generate the templated files
    generateFile(bicepTemplateFile, templateInput, bicepFile)
    generateFile(readmeTemplateFile, templateInput, readmeFile)
}
catch (ex) {
    console.error(`Template generation failed: ${ex.message}`)
    console.log('')
    process.exit(1)
}

/**
 * Generates a file through applying a handlebars templates on the given data.
 * 
 * @param {string} templateFilepath The handlebars template file path
 * @param {string} templateData The template data
 * @param {string} outputFilepath The output filepath
 */
function generateFile(templateFilepath, templateData, outputFilepath) {
    // Compile the template
    const template = Handlebars.compile(fs.readFileSync(templateFilepath, { encoding: 'utf-8' }))
    const output = template(templateData)
    
    // Write destination file
    fs.writeFileSync(outputFilepath, output)
    const fileStats = fs.statSync(outputFilepath)
    
    console.log(`File '${outputFilepath}' successfully generated (${fileStats.size} bytes).`)
    console.log('')
}