const reporter = require("cucumber-html-reporter");

exports.config = {

    allScriptsTimeout: 120000,

    seleniumAddress: 'http://127.0.0.1:4444/wd/hub',
    baseUrl: 't.me/juan_tech_aura',
    capabilities: {
        browserName: 'firefox'
    },

    framework: 'custom',
    frameworkPath: require.resolve("protractor-cucumber-framework"),
    specs: [
        './features/**/*.feature'
    ],
    logLevel: 'ERROR',


    cucumberOpts: {
        "compiler": 'ts:ts-node/register',
        "dry-run": false,
        "fail-fast": false,
        "format": ["json:./reports/cucumber_report.json"],
        "require": ["./features/stepDefinitions/**/*.ts"],
        "tags": "",

    },
    onComplete: () => {
        const cucumberReporterOptions = {
            theme: 'bootstrap',
            jsonFile: './reports/cucumber_report.json',
            output: process.cwd() + './reports/cucumber_reporter.html',
            reportSuiteAsScenarios: true
        };
        reporter.generate(cucumberReporterOptions);
    }
};
/*
====================================================================
For full list of Protractor config options,
see- https://github.com/angular/protractor/blob/master/lib/config.ts
====================================================================
**/