const path = require("path");
const { MockVM } = require("koinos-mock-vm");

module.exports = {
  /**
   * A set of globs passed to the glob package that qualify typescript files for testing.
   */
  include: [__dirname + "/assembly/__tests__/**/*.spec.ts"],
  /**
   * A set of globs passed to the glob package that quality files to be added to each test.
   */
  add: [__dirname + "/assembly/__tests__/**/*.include.ts"],
  /**
   * All the compiler flags needed for this test suite. Make sure that a binary file is output.
   */
  flags: {
    /** To output a wat file, uncomment the following line. */
    // "--textFile": ["output.wat"],
    /** A runtime must be provided here. */
    "--runtime": ["incremental"], // Acceptable values are: "incremental", "minimal", and "stub"
  },
  /**
   * A set of regexp that will disclude source files from testing.
   */
  disclude: [/node_modules/],
  /**
   * Add your required AssemblyScript imports here.
   */
  imports(memory, createImports, instantiateSync, binary) {
    let instance; // Imports can reference this
    const mockVM = new MockVM();

    const myImports = {
      // put your web assembly imports here, and return the module
      env: {
        ...mockVM.getImports(),
      },
    };
    instance = instantiateSync(binary, createImports(myImports));
    mockVM.setInstance(instance);
    return instance;
  },
  wasi: {
    // pass args here
    args: [],
    // inherit from env
    env: process.env,
    preopens: {
      // put your preopen's here
    },
    // let as-pect finish what it needs to finish
    returnOnExit: false,
  },
  /** Enable code coverage. */
  coverage: [`${path.basename(__dirname)}/assembly/*.ts`],
  /**
   * Specify if the binary wasm file should be written to the file system.
   */
  outputBinary: false,
};
