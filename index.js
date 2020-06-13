let workerScript = './lib/objc/DNObjectiveCConverter.js'
let dataPath = "./test/objc/BoxPhoto.h"
const { Worker } = require("worker_threads");

const generateDartWithWorker = path => {
    return new Promise((resolve, reject) => {
        const worker = new Worker(workerScript, { workerData: { path: path } });
        worker.on("message", resolve);
        worker.on("error", reject);
    });
};

async function run() {
    const promise = generateDartWithWorker(dataPath).then((msg) => {
        console.log('result:\n' + msg.result.dartCode + '\n\npath:\n' + msg.path)
        if (msg.error) {
            console.log('\nerror:\n' + msg.error)
        }
    })

    const results = await Promise.all([promise])
    console.log(results)
}

run()

