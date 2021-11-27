var database = require("../database/config");

function buscarUltimasMedidas() {
    
    instrucaoSql = `select 
    count(nivel) as quantidade,
    nivel 
    from usuario 
    group by nivel;`;
    console.log("Executando a instrução SQL: \n"+instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal() {
    
    instrucaoSql = `select 
    count(nivel) as quantidade,
    nivel 
    from usuario 
    group by nivel`;
                    
    console.log("Executando a instrução SQL: \n"+instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}