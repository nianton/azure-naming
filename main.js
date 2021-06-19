const _ = require('lodash')
const Handlebars = require('handlebars')
const fs = require('fs')
const { template } = require('lodash')

const resoureDefinitionFile = 'resourceDefinition.json'
const bicepTemplateFile = 'templates/naming.module.bicep.hbs'
const readmeTemplateFile = 'templates/README.md.hbs'
const bicepFile = 'dist/naming.module.bicep'
const readmeFile = 'README.md'

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
    const sampleOutputs = Object.keys(sampleOutput).map(key => {
        return { name: key, result: sampleOutput[key] }
    });

    const templateInput = { definitions, sampleOutputs }

    // Compile the templates
    const bicepTemplate = Handlebars.compile(fs.readFileSync(bicepTemplateFile, { encoding: 'utf-8' }))
    const readmeTemplate = Handlebars.compile(fs.readFileSync(readmeTemplateFile, { encoding: 'utf-8' }))

    // Apply the templates
    const bicepOutput = bicepTemplate(templateInput)
    const readmeOutput = readmeTemplate(templateInput)

    // Save output to a file
    fs.writeFileSync(bicepFile, bicepOutput)
    const bicepFileStats = fs.statSync(bicepFile)
    console.log(`File '${bicepFile}' successfully generated (${bicepFileStats.size} bytes).`)
    console.log('')
    
    fs.writeFileSync(readmeFile, readmeOutput)
    const readmeFileStats = fs.statSync(readmeFile)
    console.log(`File '${readmeFile}' successfully generated (${readmeFileStats.size} bytes).`)
    console.log('')
}
catch (ex) {
    console.error(`Template generation failed: ${ex.message}`)
    console.log('')
    process.exit(1)
}
