package nl.dslconsultancy.mps.inspector

import kotlin.test.Test
import kotlin.test.assertTrue

class ConfigurationTests {

    @Test
    fun `deserialize correct configuration item (object)`() {
        """
            {
              "mpsProjectPath": "../mps-open-source",
              "sortModules": true,
              "usageAnalysisPath": "target/usage.csv",
              "languageVersions": {
                "reportPath": "target/languageVersions.csv",
                "checkMinus1sInModels": true
              },
              "generations": [
                {
                  "languageName": "JsonSchema",
                  "generationPath": "src/generated"
                }
              ]
            }
        """.asConfiguration()
    }

    @Test
    fun `deserialize correct configuration items (array)`() {
        """
            [
                {
                  "mpsProjectPath": "../mps-open-source",
                  "sortModules": true,
                  "usageAnalysisPath": "target/usage.csv",
                  "languageVersions": {
                    "reportPath": "target/languageVersions.csv",
                    "checkMinus1sInModels": true
                  },
                  "generations": [
                    {
                      "languageName": "JsonSchema",
                      "generationPath": "src/generated"
                    }
                  ]
                }
            ]
        """.asConfiguration()
    }

    @Test
    fun `warn, but don't fail on incorrect input`() {
        assertTrue { "qwerty42".asConfiguration().isEmpty() }
        assertTrue { "{ foo: bar }".asConfiguration().isEmpty() }
        assertTrue { "[]".asConfiguration().isEmpty() }
        assertTrue { "[ {} ]".asConfiguration().isEmpty() }
    }

}

