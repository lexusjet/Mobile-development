function createSimpleTable(tx, tableName) {
    const sql =
            'CREATE TABLE IF NOT EXISTS %1 ('.arg(tableName) +
            'contact_id INTEGER PRIMARY KEY,' +
            'first_name TEXT NOT NULL,' +
            'last_name TEXT NOT NULL,' +
            'email TEXT NOT NULL UNIQUE,' +
            'phone TEXT NOT NULL UNIQUE' +
            ');'
    tx.executeSql(sql)
}
function addContact(tx, tableName, first_name, last_name, email, phone) {
    const sql =
            'INSERT INTO %1 (first_name, last_name, email, phone)'.arg(tableName) +
            'VALUES("%1", "%2", "%3", "%4");'.arg(first_name).arg(last_name).arg(email).arg(phone)
    tx.executeSql(sql)
}



function readContacts(tx, model, tableName){
    const sql = 'SELECT contact_id, first_name, last_name, email, phone FROM %1'.arg(tableName);
    var result = tx.executeSql(sql)
    for(var i = 0; i < result.rows.length; ++i){
        console.log(result.rows.item(i).first_name)
        model.append({
                            number: result.rows.item(i).contact_id.toString(),
                            first_name: result.rows.item(i).first_name,
                            last_name: result.rows.item(i).last_name,
                            email: result.rows.item(i).email,
                            phone: result.rows.item(i).phone
                        })

    }
}

function changeContact(tx, model, tableName, row, first_name, last_name, email, phone){
    const sql =
            'UPDATE %1 '.arg(tableName)+
            'SET contact_id = %1, first_name = \'%2\',last_name = \'%3\', email = \'%4\', phone = \'%5\' '.arg(row).arg(first_name).arg(last_name).arg(email).arg(phone)+
            'WHERE contact_id = %1'.arg(row)
    console.log(sql)
    model.set(row, {number: model.get(row).number,
                  first_name: first_name,
                  last_name:last_name,
                  email:email,
                  phone:phone
              })
    tx.executeSql(sql)
}

