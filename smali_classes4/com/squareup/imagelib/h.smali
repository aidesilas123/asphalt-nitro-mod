###### Class com.squareup.imagelib.h (com.squareup.imagelib.h)
.class Lcom/squareup/imagelib/h;
.super Ljava/lang/Object;
.source "DeferredRequestCreator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final a:Lcom/squareup/imagelib/t;

.field final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/squareup/imagelib/e;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/t;Landroid/widget/ImageView;Lcom/squareup/imagelib/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/h;->a:Lcom/squareup/imagelib/t;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/squareup/imagelib/h;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/squareup/imagelib/h;->c:Lcom/squareup/imagelib/e;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/imagelib/h;->a:Lcom/squareup/imagelib/t;

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->c()Lcom/squareup/imagelib/t;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/imagelib/h;->c:Lcom/squareup/imagelib/e;

    iget-object v0, p0, Lcom/squareup/imagelib/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onPreDraw()Z
    .registers 6

    iget-object v0, p0, Lcom/squareup/imagelib/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_17

    return v1

    :cond_17
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    if-lez v3, :cond_36

    if-gtz v4, :cond_24

    goto :goto_36

    :cond_24
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v2, p0, Lcom/squareup/imagelib/h;->a:Lcom/squareup/imagelib/t;

    invoke-virtual {v2}, Lcom/squareup/imagelib/t;->n()Lcom/squareup/imagelib/t;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/squareup/imagelib/t;->k(II)Lcom/squareup/imagelib/t;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/imagelib/h;->c:Lcom/squareup/imagelib/e;

    invoke-virtual {v2, v0, v3}, Lcom/squareup/imagelib/t;->h(Landroid/widget/ImageView;Lcom/squareup/imagelib/e;)V

    :cond_36
    :goto_36
    return v1
.end method
