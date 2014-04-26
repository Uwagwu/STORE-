<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    
    <head>
        <meta name="layout" content="main"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store front</title>
    </head>
    <body>
        Cart: ${session?.cart}
        <h1>Welcome to campus store</h1>
        <h2>List all your store items here</h2>
        <div style="padding:10px;">
        <div>
            Item properties here
            <div>
                <g:form controller="store" action="addToCart">
                    <g:field type="number" name="quantity"/>
                    <button>Add to Cart</button>
                </g:form>
            </div>
        </div>  
<div>
            Item properties here
            <div>
                <g:form controller="store" action="addToCart">
                    <g:field type="number" name="quantity"/>
                    <button>Add to Cart</button>
                </g:form>
            </div>
        </div>
        <div>
            Item properties here
            <div>
                <g:form controller="store" action="addToCart">
                    <g:field type="number" name="quantity"/>
                    <button>Add to Cart</button>
                </g:form>
            </div>
        </div>
        <div>
            Item properties here
            <div>
                <g:form controller="store" action="addToCart">
                    <g:field type="number" name="quantity"/>
                    <button>Add to Cart</button>
                </g:form>
            </div>
        </div>
        </div>
    </body>
</html>
