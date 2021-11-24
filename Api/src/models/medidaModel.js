var database = require("../database/config");

function buscarUltimasMedidas(idLeitura, limite_linhas) {
    instrucaoSql = `select id
                        from usuario
                        order by id desc limit ${limite_linhas}`;
    console.log("Executando a instrução SQL: \n"+instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idLeitura) {
    instrucaoSql = `select id
                            from usuario`;
                    
    console.log("Executando a instrução SQL: \n"+instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}