###### Class com.squareup.imagelib.m (com.squareup.imagelib.m)
.class Lcom/squareup/imagelib/m;
.super Lcom/squareup/imagelib/a;
.source "ImageViewAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/imagelib/a<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field m:Lcom/squareup/imagelib/e;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/Picasso;Landroid/widget/ImageView;Lcom/squareup/imagelib/s;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/imagelib/e;Z)V
    .registers 23

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/squareup/imagelib/a;-><init>(Lcom/squareup/imagelib/Picasso;Ljava/lang/Object;Lcom/squareup/imagelib/s;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/squareup/imagelib/m;->m:Lcom/squareup/imagelib/e;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    invoke-super {p0}, Lcom/squareup/imagelib/a;->a()V

    iget-object v0, p0, Lcom/squareup/imagelib/m;->m:Lcom/squareup/imagelib/e;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/imagelib/m;->m:Lcom/squareup/imagelib/e;

    :cond_a
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V
    .registers 10

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/squareup/imagelib/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/squareup/imagelib/a;->a:Lcom/squareup/imagelib/Picasso;

    iget-object v2, v0, Lcom/squareup/imagelib/Picasso;->g:Landroid/content/Context;

    iget-boolean v6, v0, Lcom/squareup/imagelib/Picasso;->o:Z

    iget-boolean v5, p0, Lcom/squareup/imagelib/a;->d:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/squareup/imagelib/q;->c(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;ZZ)V

    iget-object p1, p0, Lcom/squareup/imagelib/m;->m:Lcom/squareup/imagelib/e;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/squareup/imagelib/e;->onSuccess()V

    :cond_22
    return-void

    :cond_23
    new-instance p1, Ljava/lang/AssertionError;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string v0, "Attempted to complete action with no result!\n%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_18

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_18
    iget v1, p0, Lcom/squareup/imagelib/a;->g:I

    if-eqz v1, :cond_20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    :cond_20
    iget-object v1, p0, Lcom/squareup/imagelib/a;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/squareup/imagelib/m;->m:Lcom/squareup/imagelib/e;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lcom/squareup/imagelib/e;->onError()V

    :cond_2e
    return-void
.end method
