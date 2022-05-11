const fileToGenerate = process.argv.splice(2)[0]
const _ = require('lodash')
const Handlebars = require('handlebars')
const fs = require('fs')

// Data files
const resourceDefinitionsFile = 'datafiles/resourceDefinitions.json'
const regionAbbreviationsFile = 'datafiles/regionAbbreviations.json'
const sampleOutputFile = 'datafiles/sample.output.json'

// Template files
const bicepTemplateFile = 'templates/naming.module.bicep.hbs'
const readmeTemplateFile = 'templates/README.md.hbs'

// Generated files
const bicepFile = 'dist/naming.module.bicep'
const readmeFile = 'README.md'

Handlebars.registerHelper('upper', str => str.toUpperCase())

try {
    if (typeof fileToGenerate === 'undefined' || fileToGenerate === 'bicep') {
        // Generate the templated files
        generateBicepModule()
    }

    if (typeof fileToGenerate === 'undefined' || fileToGenerate === 'readme') {
        // Generate README.md documentation file
        generateReadme()
    }
}
catch (ex) {
    console.error(`Template generation failed: ${ex.message}`)
    console.log('')
    process.exit(1)
}

/**
 * Generates the bicep module file based on the template.
 */
function generateBicepModule() {
    if (!fs.existsSync(resourceDefinitionsFile))
        throw new Error(`Resource definition file (${resourceDefinitionsFile}) was not found.`)

    if (!fs.existsSync(bicepTemplateFile))
        throw new Error(`Template bicep generation file (${bicepTemplateFile}) was not found.`)    

    // Prepare for camel cased property names in bicep
    const definitions = readFileAsJson(resourceDefinitionsFile)
    _.forEach(definitions, v => v.name = _.camelCase(v.name));

    const regionAbbreviations = readFileAsJson(regionAbbreviationsFile)
    const templateInput = { definitions, regionAbbreviations }
    
    generateFile(bicepTemplateFile, templateInput, bicepFile)
}

/**
 * Generates the README.md file.
 */
function generateReadme() {
    if (!fs.existsSync(readmeTemplateFile))
        throw new Error(`Template README generation file (${readmeTemplateFile}) was not found.`)

    if (!fs.existsSync(sampleOutputFile))
        throw new Error(`Sample output file (${sampleOutputFile}) was not found.`)
    
    // Group by first letter
    const sampleOutput = readFileAsJson(sampleOutputFile)

    // Convert to array to facilitate generation
    const sampleOutputs = Object.keys(sampleOutput).map(key => ({ name: key, result: sampleOutput[key] }))
    const grouppedOutputs = _.groupBy(sampleOutputs, v => v.name[0])
    
    // Convert to array to facilitate generation
    const outputGroups = Object.keys(grouppedOutputs).map(key => ({ key, values: grouppedOutputs[key] }))
    const templateInput = { outputGroups }

    generateFile(readmeTemplateFile, templateInput, readmeFile)
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


/**
 * Returns the JSON object parsing a given file
 * 
 * @param {string} filepath The file's path to read and parse as JSON
 */
function readFileAsJson(filepath) {
    return JSON.parse(fs.readFileSync(filepath), { encoding: 'utf-8' });
}