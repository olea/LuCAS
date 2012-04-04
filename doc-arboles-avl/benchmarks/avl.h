/* * * * * * * * * * * * * * * * */
/*    � R B O L    A V L         */
/* * * * * * * * * * * * * * * * */


#ifndef bool
#ifndef false
#define false 0
#define true 1
#endif
#define bool int
#endif


/* Declaraci�n del Meta dato almacenado en el AVLTree */
/* Definido por el usuario                            */

typedef int AVL_TipoDato;
typedef int (*AVL_TipoDatoCompareFunc) (AVL_TipoDato a, AVL_TipoDato b);
/* Las funciones de este tipo deben cumplir con: (comp(a,b)<0
   sii. a<b), (comp(a,b)==0 sii. a==b), (comp(a,b)>0 sii. a>b).*/

typedef void (*AVL_TipoDatoDestroyFunc) (AVL_TipoDato a);
/* Las funciones de este tipo deben liberar la memoria ocupada
   por un objeto del tipo AVL_TipoDato. */

typedef AVL_TipoDato (*AVL_TipoDatoMakeCpy) (AVL_TipoDato a);
/* las funciones de este tipo deben encargarse de hacer copias en memoria
   (posiblemente din�micas) de los objetos AVL_TipoDato */


/* Declaraci�n del TAD AVLTree (�rbol AVL) */

typedef struct AVLNode AVLTree;

struct AVLNode
{
  AVL_TipoDato dato;
  AVLTree *izq;
  AVLTree *der;
  int altura;
};



/* Constructores */

AVLTree *AVL_vacio (void);
/* devuelve un �rbol AVL vac�o */

AVLTree *AVL_hacer (AVL_TipoDato x, AVLTree * izq, AVLTree * der);
/* devuelve un nuevo �rbol formado por una ra�z con valor x,
   sub�rbol AVL_izquierdo el �rbol izq y sub�rbol AVL_derecho el �rbol
   der. */



/*  Predicados   */

bool AVL_es_vacio (AVLTree * t);
/* devuelve true sii. t es un �rbol vac�o. */



/*  Selectores   */

AVLTree *AVL_izquierdo (AVLTree * t);
/* devuelve el sub�rbol AVL_izquierdo de t. */

AVLTree *AVL_derecho (AVLTree * t);
/* devuelve el sub�rbol AVL_derecho de t. */

AVL_TipoDato AVL_raiz (AVLTree * t);
/* devuelve el valor de la ra�z del �rbol t. Precondici�n:
   !AVL_es_vacio(t) */

int AVL_altura (AVLTree * t);
/* devuelve la AVL_altura del nodo t en el �rbol */



/*  Destructures */

void AVL_destruir (AVLTree * t, AVL_TipoDatoDestroyFunc free_dato);
/* libera la memoria ocupada por los nodos del �rbol. Si los
   datos almacenados en cada nodo est�n almacenados din�micamente
   y se los quiere liberar tambi�n, debe pasarse como segundo
   par�metro una funci�n de tipo void func(int t) que libere
   la memoria de objetos int. Si los datos no est�n
   almacenados din�micamente o simplemente no se los quiere
   AVL_destruir (liberar de memoria), p�sese como segundo par�metro
   NULL. Nota: Funci�n Recursiva! */



/*  Rotaciones y balance del �rbol  */

void AVL_rotar_s (AVLTree ** t, bool izq);
/* realiza una rotaci�n simple del �rbol t el cual se
   pasa por referencia. La rotaci�n ser� izquierda
   sii. (izq==true) o ser� derecha
   sii. (izq==false). 

   Nota: las AVL_alturas de t y sus sub�rboles ser�n actualizadas
   dentro de esta funci�n!

   Precondici�n:
   si (izq==true) ==> !AVL_es_vacio(AVL_izquierdo(t)) 
   si (izq==false) ==> !AVL_es_vacio(AVL_derecho(t))
*/

void AVL_rotar_d (AVLTree ** t, bool izq);
/* realiza una rotaci�n doble. Funciona an�logamente a
   AVL_rotar_s(). */

void AVL_balancear (AVLTree ** t);
/* Detecta y corrige por medio de un n�mero finito de rotaciones
   un desequilibrio en el �rbol *t. Dicho desequilibrio no debe
   tener una diferencia de AVL_alturas de m�s de 2. */

void AVL_actualizar_altura (AVLTree * t);




/*   Inserci�n y eliminaci�n   */

void AVL_insertar (AVLTree ** t, AVL_TipoDato x,
		   AVL_TipoDatoCompareFunc comp);
/* inserta x en el �rbol en un tiempo O(log(n)) peor caso. */

void AVL_eliminar (AVLTree ** t, AVL_TipoDato x, AVL_TipoDatoCompareFunc comp,
		   AVL_TipoDatoDestroyFunc destroy, AVL_TipoDatoMakeCpy makecpy);
/* elimina x del �rbol en un tiempo O(log(n)) peor caso. 
   Precondici�n: existe un nodo con valor x en el �rbol
   t. */




/* Funciones Auxiliares */

#define AVL_max(A,B) ((A>B)?(A):(B))

AVL_TipoDato AVL_eliminar_min (AVLTree ** t, AVL_TipoDatoDestroyFunc destroy, AVL_TipoDatoMakeCpy makecpy);
/* Funci�n auxiliar a AVL_eliminar(). Elimina el menor nodo del �rbol
   *t devolviendo su contenido (el cual no se libera de
   memoria). Se actualizan las AVL_alturas de los nodos. precond:
   !AVL_es_vacio(*t) */
