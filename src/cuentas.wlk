object cuentaDePepe {
    var saldo = 0
    method saldo() = saldo
    
    method depositar(monto) { saldo += monto }

    method extraer(monto) { saldo -= monto }
}

object cuentaDeJulian {
    var saldo = 0
    method saldo() = saldo
    
    method depositar(unaCantidadDePesos){
        saldo += unaCantidadDePesos * 0.8
    }
    
    method extraer(unaCantidadDePesos){
        if ((saldo-unaCantidadDePesos)>4){
            saldo -= unaCantidadDePesos
            saldo -= 5
        }
        else{
            saldo -= unaCantidadDePesos
        }
    }
}

object papa{
    var saldoEnDolar=0
    method saldo(){
        return saldoEnDolar*dolar.precioDeCompra()
    }
    
    method depositar(unaCantidadDePesos){
        saldoEnDolar += unaCantidadDePesos/dolar.precioDeVenta()
    }
    
    method extraer(unaCantidadDePesos){
        saldoEnDolar -= unaCantidadDePesos/dolar.precioDeCompra()
    }
    
}

object dolar{
    var precioDeVenta = 15.10
    var precioDeCompra = 14.70
    
    method precioDeVenta() = precioDeVenta
    
    method precioDeCompra() = precioDeCompra
}
