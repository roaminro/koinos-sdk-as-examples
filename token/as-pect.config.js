import { MockVM } from '@koinos/mock-vm';

export default {
  /**
   * A set of globs passed to the glob package that qualify typescript files for testing.
   */
  include: [
    "assembly/__tests__/**/*.include.ts",
  ],
  /**
   * A set of regexp that will disclude source files from testing.
   */
  disclude: [/node_modules/i],
  entries: ["assembly/__tests__/**/*.spec.ts"],

  /**
   * Add your required AssemblyScript imports here.
   */
  async instantiate(memory, createImports, instantiate, binary) {
    let instance; // Imports can reference this
    const mockVM = new MockVM();

    const myImports = {
      wasi_snapshot_preview1: {
        fd_write: () => {},
        proc_exit: () => {}
      },
      // put your web assembly imports here, and return the module
      env: {
        ...mockVM.getImports()
      }
    };
    instance = instantiate(binary, createImports(myImports));

    instance.then(function (result) {
      result.exports.memory.grow(512);
      mockVM.setInstance(result);
    });
    
    return instance;
  },
  // wasi: {
  //   // pass args here
  //   args: [],
  //   // inherit from env
  //   env: process.env,
  //   preopens: {
  //     // put your preopen's here
  //   },
  //   // let as-pect finish what it needs to finish
  //   returnOnExit: false,
  // },
  /** Enable code coverage. */
  coverage: [
    'assembly/*.ts'
  ],
  /**
   * Specify if the binary wasm file should be written to the file system.
   */
  outputBinary: false,
};
