<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!entity docbook.dsl PUBLIC "-//Norman Walsh//DOCUMENT DocBook HTML Stylesheet//EN" CDATA DSSSL>
]>

<!-- 

Documento: desenvolvimento-html.dsl
Vers�o: 0.3

Autor: Jorge Godoy <godoy@conectiva.com.br>
Atual mantenedor: Jorge Godoy <godoy@conectiva.com.br>

Altera��es no DocBook DTD. Essas altera��es s�o implementadas como um
estilo. Acho que assim tenho um maior controle - e isso n�o confunde
o psgml.


Changelog:
 
20000620 - Colocadas duas colunas. 
20000621 - Colocado �ndice para artigos em HTML.

-->

<style-sheet>
<style-specification id="html" use="docbook">
<style-specification-body>


;; =========================
;; �ndices.

;; Duas colunas para �ndice remissivo.
(define %page-n-columns%
  ;; Sets the number of columns on each page
  2)

;; Gerar �ndice no HTML
(define %generate-article-toc% 
  #t)


;; =========================
;; Cabe�alhos de navega��o

;; Cabe�alhos de navega��o com o assunto anterior e o pr�ximo... 
(define %header-navigation%
  #t)

(define %footer-navigation%
  #t)

;; Tabelas para os cabe�alhos de navega��o.
(define %gentext-nav-use-tables%
  #t)

;; Largura da tabela que � definida para os cabe�alhos de navega��o 
(define %gentext-nav-tblwidth% 
  "100%")


;; =========================
;; Indenta��o

;; Indenta��o para listagens de programas
(define %indent-programlisting-lines%
  "    ") ;; 4 espa�os. Pode ser #f para suprimir a indenta��o.

;; Indenta��o para telas
(define %indent-screen-lines%
  "    ") ;; 4 espa�os. Pode ser #f para suprimir a indenta��o.

;; =========================
;; Verbatim

;; Sombreamento em ambientes verbatim
(define %shade-verbatim%  
  #t)

;; Tabela de atributos usados no sombreamento
(define ($shade-verbatim-attr$)
  (list
   (list "BORDER" "0")
   (list "BGCOLOR" "#E0E0E0")
   (list "WIDTH" ($table-width$))))

;; ========================
;; Callouts

;; Coluna padr�o para callouts.
(define %callout-default-col% 
  70)

;; ========================
;; Bibliografia

(define biblio-number
  #t)

;; ========================
;; Imagens

(define %graphic-default-extension% 
  "jpg")

;; Arquivos terminados com essa extens�o n�o ter�o acrescidos o valor
;; acima. 
(define %graphic-extensions% 
  '("gif" "jpg" "jpeg" "png" "tif" "tiff" "eps" "epsf"))

;; ========================
;; Estilos CSS

;; Nome do estilo
(define %stylesheet%
  "publicacoes.css")

;; Tipo do estilo
(define %stylesheet-type%
  "text/css")


;; ========================
;; Arquivos gerados

;; Usar ID como nome de arquivo
(define %use-id-as-filename%
  #t)

;; Diret�rios de sa�da devem ser usados?
(define use-output-dir
  #t)

;; Diret�rio de sa�da
;;(define %output-dir%
;;  "html/") ;; Diret�rio em rela��o ao diret�rio atual.

;; Extens�o padr�o
(define %html-ext% 
  ".html")

;; Nome do arquivo principal padr�o.
(define %root-filename%
  "index") ;; Pode ser #f tamb�m. A extens�o � adicionada
           ;; automaticamente, de acordo com o valor definido
           ;; acima. Isso vale para todos os arquivos cujos nomes
           ;; foram gerados a partir do ID.

;; Adicionar o atributo de idioma no nome do arquivo?
(define %html-use-lang-in-filename% 
  #f)

;; Gerar HTML 4.0?
(define %html40%
  #t)

;; ====================
;; Satisfazendo os DTDs...

;; Elementos de bloco podem existir dentro do para do DocBook, mas
;; n�o no p do HTML. Isso acrescenta p e /p adicionais para
;; tentar resolver esse problema.
(define %fix-para-wrappers%
  #t)

;; ====================
;; Se��es

;; Mostra o n�mero das se��es.
(define %section-autolabel%
  #t)

;; N�o deve haver nenhuma se��o com o �ndice.
(define (chunk-skip-first-element-list)
  '())

</style-specification-body>
</style-specification>
<external-specification id="docbook" document="docbook.dsl">
</style-sheet>
