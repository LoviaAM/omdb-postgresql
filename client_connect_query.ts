const {Client} = require('pg')

async function connectDemo() {
    const Client = new Client({database: });
    await Client.connect();

    const text = "select * from words where word like $1";
    const search = prompt();
    const values = [`%${search}%`]

    if (search === "q"){
        throw "quits"
    }
    try {
    // Prompt for and get a **search string** (or 'q' to quit) from the user
        const result = await Client.query(text, values)
    } catch (e){

    }finally{

    }
    

// 3. *Repeatedly* (until the user chooses to quit)
//     1. Prompt for and get a **search string** (or 'q' to quit) from the user
//     2. if the input is not 'q'
//         1. Query the DB for movies whose name includes the **search string** (case insensitive)
//         2. Show those movies to the user
// 4. Close the database connection