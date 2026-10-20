###### Class com.squareup.imagelib.s.b (com.squareup.imagelib.s$b)
.class public final Lcom/squareup/imagelib/s$b;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/y;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/graphics/Bitmap$Config;

.field private p:Lcom/squareup/imagelib/Picasso$Priority;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/s$b;->a:Landroid/net/Uri;

    iput p2, p0, Lcom/squareup/imagelib/s$b;->b:I

    iput-object p3, p0, Lcom/squareup/imagelib/s$b;->o:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/imagelib/s;
    .registers 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/imagelib/s$b;->g:Z

    if-eqz v1, :cond_13

    iget-boolean v2, v0, Lcom/squareup/imagelib/s$b;->f:Z

    if-nez v2, :cond_b

    goto :goto_13

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_13
    iget-boolean v2, v0, Lcom/squareup/imagelib/s$b;->f:Z

    if-eqz v2, :cond_28

    iget v2, v0, Lcom/squareup/imagelib/s$b;->d:I

    if-nez v2, :cond_28

    iget v2, v0, Lcom/squareup/imagelib/s$b;->e:I

    if-eqz v2, :cond_20

    goto :goto_28

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    :goto_28
    if-eqz v1, :cond_3b

    iget v1, v0, Lcom/squareup/imagelib/s$b;->d:I

    if-nez v1, :cond_3b

    iget v1, v0, Lcom/squareup/imagelib/s$b;->e:I

    if-eqz v1, :cond_33

    goto :goto_3b

    :cond_33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    :goto_3b
    iget-object v1, v0, Lcom/squareup/imagelib/s$b;->p:Lcom/squareup/imagelib/Picasso$Priority;

    if-nez v1, :cond_43

    sget-object v1, Lcom/squareup/imagelib/Picasso$Priority;->b:Lcom/squareup/imagelib/Picasso$Priority;

    iput-object v1, v0, Lcom/squareup/imagelib/s$b;->p:Lcom/squareup/imagelib/Picasso$Priority;

    :cond_43
    new-instance v1, Lcom/squareup/imagelib/s;

    move-object v2, v1

    iget-object v3, v0, Lcom/squareup/imagelib/s$b;->a:Landroid/net/Uri;

    iget v4, v0, Lcom/squareup/imagelib/s$b;->b:I

    iget-object v5, v0, Lcom/squareup/imagelib/s$b;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/squareup/imagelib/s$b;->n:Ljava/util/List;

    iget v7, v0, Lcom/squareup/imagelib/s$b;->d:I

    iget v8, v0, Lcom/squareup/imagelib/s$b;->e:I

    iget-boolean v9, v0, Lcom/squareup/imagelib/s$b;->f:Z

    iget-boolean v10, v0, Lcom/squareup/imagelib/s$b;->g:Z

    iget-boolean v11, v0, Lcom/squareup/imagelib/s$b;->h:Z

    iget v12, v0, Lcom/squareup/imagelib/s$b;->i:F

    iget v13, v0, Lcom/squareup/imagelib/s$b;->j:F

    iget v14, v0, Lcom/squareup/imagelib/s$b;->k:F

    iget-boolean v15, v0, Lcom/squareup/imagelib/s$b;->l:Z

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lcom/squareup/imagelib/s$b;->m:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/squareup/imagelib/s$b;->o:Landroid/graphics/Bitmap$Config;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/squareup/imagelib/s$b;->p:Lcom/squareup/imagelib/Picasso$Priority;

    move-object/from16 v18, v1

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/squareup/imagelib/s;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZZLandroid/graphics/Bitmap$Config;Lcom/squareup/imagelib/Picasso$Priority;Lcom/squareup/imagelib/s$a;)V

    return-object v20
.end method

.method public b()Lcom/squareup/imagelib/s$b;
    .registers 3

    iget-boolean v0, p0, Lcom/squareup/imagelib/s$b;->g:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/imagelib/s$b;->f:Z

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop can not be used after calling centerInside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/squareup/imagelib/s$b;
    .registers 3

    iget-boolean v0, p0, Lcom/squareup/imagelib/s$b;->f:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/imagelib/s$b;->g:Z

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside can not be used after calling centerCrop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/s$b;->a:Landroid/net/Uri;

    if-nez v0, :cond_b

    iget v0, p0, Lcom/squareup/imagelib/s$b;->b:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method e()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/s$b;->p:Lcom/squareup/imagelib/Picasso$Priority;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method f()Z
    .registers 2

    iget v0, p0, Lcom/squareup/imagelib/s$b;->d:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/squareup/imagelib/s$b;->e:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public g()Lcom/squareup/imagelib/s$b;
    .registers 3

    iget v0, p0, Lcom/squareup/imagelib/s$b;->e:I

    if-nez v0, :cond_11

    iget v0, p0, Lcom/squareup/imagelib/s$b;->d:I

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onlyScaleDown can not be applied without resize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/imagelib/s$b;->h:Z

    return-object p0
.end method

.method public h(Lcom/squareup/imagelib/Picasso$Priority;)Lcom/squareup/imagelib/s$b;
    .registers 3

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/squareup/imagelib/s$b;->p:Lcom/squareup/imagelib/Picasso$Priority;

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/squareup/imagelib/s$b;->p:Lcom/squareup/imagelib/Picasso$Priority;

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Priority already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Priority invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(II)Lcom/squareup/imagelib/s$b;
    .registers 3

    if-ltz p1, :cond_1e

    if-ltz p2, :cond_16

    if-nez p2, :cond_11

    if-eqz p1, :cond_9

    goto :goto_11

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one dimension has to be positive number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_11
    iput p1, p0, Lcom/squareup/imagelib/s$b;->d:I

    iput p2, p0, Lcom/squareup/imagelib/s$b;->e:I

    return-object p0

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lcom/squareup/imagelib/y;)Lcom/squareup/imagelib/s$b;
    .registers 4

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/squareup/imagelib/y;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/squareup/imagelib/s$b;->n:Ljava/util/List;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/imagelib/s$b;->n:Ljava/util/List;

    :cond_14
    iget-object v0, p0, Lcom/squareup/imagelib/s$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Ljava/util/List;)Lcom/squareup/imagelib/s$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/squareup/imagelib/y;",
            ">;)",
            "Lcom/squareup/imagelib/s$b;"
        }
    .end annotation

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_15

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/imagelib/y;

    invoke-virtual {p0, v2}, Lcom/squareup/imagelib/s$b;->j(Lcom/squareup/imagelib/y;)Lcom/squareup/imagelib/s$b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-object p0

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation list must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
