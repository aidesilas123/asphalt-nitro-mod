###### Class com.squareup.imagelib.k (com.squareup.imagelib.k)
.class Lcom/squareup/imagelib/k;
.super Lcom/squareup/imagelib/a;
.source "FetchAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/imagelib/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final m:Ljava/lang/Object;

.field private n:Lcom/squareup/imagelib/e;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/Picasso;Lcom/squareup/imagelib/s;IILjava/lang/Object;Ljava/lang/String;Lcom/squareup/imagelib/e;)V
    .registers 20

    move-object v11, p0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/squareup/imagelib/a;-><init>(Lcom/squareup/imagelib/Picasso;Ljava/lang/Object;Lcom/squareup/imagelib/s;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v11, Lcom/squareup/imagelib/k;->m:Ljava/lang/Object;

    move-object/from16 v0, p7

    iput-object v0, v11, Lcom/squareup/imagelib/k;->n:Lcom/squareup/imagelib/e;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    invoke-super {p0}, Lcom/squareup/imagelib/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/imagelib/k;->n:Lcom/squareup/imagelib/e;

    return-void
.end method

.method b(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V
    .registers 3

    iget-object p1, p0, Lcom/squareup/imagelib/k;->n:Lcom/squareup/imagelib/e;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/squareup/imagelib/e;->onSuccess()V

    :cond_7
    return-void
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/k;->n:Lcom/squareup/imagelib/e;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/squareup/imagelib/e;->onError()V

    :cond_7
    return-void
.end method

.method k()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/k;->m:Ljava/lang/Object;

    return-object v0
.end method
