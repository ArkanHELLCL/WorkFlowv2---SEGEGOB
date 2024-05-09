self.onmessage = function(evento){    
    var myRequest = new Request(evento.data.Informe);      //No debe incluir ningun include    
    self.postMessage({status:1});
    const params = {
        EST_Id : evento.data.EST_Id,        
        USR_Id : evento.data.USR_Id,
        USR_Identificador: evento.data.USR_Identificador        
    }
    const options = {
        method : 'POST',
        body: JSON.stringify( params )
    }
    fetch(myRequest,options)
        .then(res => res.json())
        .then(data => {
            data.status=0
            this.postMessage(data);
            self.close;
    })
}