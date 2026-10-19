###### Class com.squareup.imagelib.t (com.squareup.imagelib.t)
.class public Lcom/squareup/imagelib/t;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Lcom/squareup/imagelib/Picasso;

.field private final c:Lcom/squareup/imagelib/s$b;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/imagelib/t;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/squareup/imagelib/Picasso;Landroid/net/Uri;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/imagelib/t;->f:Z

    iget-boolean v0, p1, Lcom/squareup/imagelib/Picasso;->q:Z

    if-nez v0, :cond_16

    iput-object p1, p0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    new-instance v0, Lcom/squareup/imagelib/s$b;

    iget-object p1, p1, Lcom/squareup/imagelib/Picasso;->n:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lcom/squareup/imagelib/s$b;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(J)Lcom/squareup/imagelib/s;
    .registers 10

    sget-object v0, Lcom/squareup/imagelib/t;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v1}, Lcom/squareup/imagelib/s$b;->a()Lcom/squareup/imagelib/s;

    move-result-object v1

    iput v0, v1, Lcom/squareup/imagelib/s;->b:I

    iput-wide p1, v1, Lcom/squareup/imagelib/s;->c:J

    iget-object v2, p0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    iget-boolean v2, v2, Lcom/squareup/imagelib/Picasso;->p:Z

    const-string v3, "Main"

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/squareup/imagelib/s;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/squareup/imagelib/s;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "created"

    invoke-static {v3, v6, v4, v5}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object v4, p0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v4, v1}, Lcom/squareup/imagelib/Picasso;->o(Lcom/squareup/imagelib/s;)Lcom/squareup/imagelib/s;

    move-result-object v4

    if-eq v4, v1, :cond_4d

    iput v0, v4, Lcom/squareup/imagelib/s;->b:I

    iput-wide p1, v4, Lcom/squareup/imagelib/s;->c:J

    if-eqz v2, :cond_4d

    invoke-virtual {v4}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "into "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "changed"

    invoke-static {v3, v0, p1, p2}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-object v4
.end method

.method private f()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget v0, p0, Lcom/squareup/imagelib/t;->g:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    iget-object v0, v0, Lcom/squareup/imagelib/Picasso;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/squareup/imagelib/t;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/squareup/imagelib/t;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/squareup/imagelib/t;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v0}, Lcom/squareup/imagelib/s$b;->b()Lcom/squareup/imagelib/s$b;

    return-object p0
.end method

.method public b()Lcom/squareup/imagelib/t;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v0}, Lcom/squareup/imagelib/s$b;->c()Lcom/squareup/imagelib/s$b;

    return-object p0
.end method

.method c()Lcom/squareup/imagelib/t;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/imagelib/t;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public e(Lcom/squareup/imagelib/e;)V
    .registers 14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/squareup/imagelib/t;->e:Z

    if-nez v2, :cond_7b

    iget-object v2, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v2}, Lcom/squareup/imagelib/s$b;->d()Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v2}, Lcom/squareup/imagelib/s$b;->e()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    sget-object v3, Lcom/squareup/imagelib/Picasso$Priority;->a:Lcom/squareup/imagelib/Picasso$Priority;

    invoke-virtual {v2, v3}, Lcom/squareup/imagelib/s$b;->h(Lcom/squareup/imagelib/Picasso$Priority;)Lcom/squareup/imagelib/s$b;

    :cond_1f
    invoke-direct {p0, v0, v1}, Lcom/squareup/imagelib/t;->d(J)Lcom/squareup/imagelib/s;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v0}, Lcom/squareup/imagelib/a0;->i(Lcom/squareup/imagelib/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    iget v0, p0, Lcom/squareup/imagelib/t;->i:I

    invoke-static {v0}, Lcom/squareup/imagelib/MemoryPolicy;->f(I)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v0, v10}, Lcom/squareup/imagelib/Picasso;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_60

    invoke-virtual {v6}, Lcom/squareup/imagelib/s;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/squareup/imagelib/Picasso$LoadedFrom;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main"

    const-string v3, "completed"

    invoke-static {v2, v3, v0, v1}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    if-eqz p1, :cond_65

    invoke-interface {p1}, Lcom/squareup/imagelib/e;->onSuccess()V

    :cond_65
    return-void

    :cond_66
    new-instance v0, Lcom/squareup/imagelib/k;

    iget-object v5, p0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    iget v7, p0, Lcom/squareup/imagelib/t;->i:I

    iget v8, p0, Lcom/squareup/imagelib/t;->j:I

    iget-object v9, p0, Lcom/squareup/imagelib/t;->m:Ljava/lang/Object;

    move-object v4, v0

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/squareup/imagelib/k;-><init>(Lcom/squareup/imagelib/Picasso;Lcom/squareup/imagelib/s;IILjava/lang/Object;Ljava/lang/String;Lcom/squareup/imagelib/e;)V

    iget-object p1, p0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {p1, v0}, Lcom/squareup/imagelib/Picasso;->n(Lcom/squareup/imagelib/a;)V

    :cond_7a
    return-void

    :cond_7b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with fetch."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Landroid/widget/ImageView;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/imagelib/t;->h(Landroid/widget/ImageView;Lcom/squareup/imagelib/e;)V

    return-void
.end method

.method public h(Landroid/widget/ImageView;Lcom/squareup/imagelib/e;)V
    .registers 18

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {}, Lcom/squareup/imagelib/a0;->c()V

    if-eqz v3, :cond_e8

    iget-object v4, v0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v4}, Lcom/squareup/imagelib/s$b;->d()Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v1, v0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v1, v3}, Lcom/squareup/imagelib/Picasso;->c(Landroid/widget/ImageView;)V

    iget-boolean v1, v0, Lcom/squareup/imagelib/t;->f:Z

    if-eqz v1, :cond_26

    invoke-direct {p0}, Lcom/squareup/imagelib/t;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/imagelib/q;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_26
    return-void

    :cond_27
    iget-boolean v4, v0, Lcom/squareup/imagelib/t;->e:Z

    if-eqz v4, :cond_64

    iget-object v4, v0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v4}, Lcom/squareup/imagelib/s$b;->f()Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_46

    if-nez v5, :cond_40

    goto :goto_46

    :cond_40
    iget-object v6, v0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v6, v4, v5}, Lcom/squareup/imagelib/s$b;->i(II)Lcom/squareup/imagelib/s$b;

    goto :goto_64

    :cond_46
    :goto_46
    iget-boolean v1, v0, Lcom/squareup/imagelib/t;->f:Z

    if-eqz v1, :cond_51

    invoke-direct {p0}, Lcom/squareup/imagelib/t;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/imagelib/q;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_51
    iget-object v1, v0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    new-instance v2, Lcom/squareup/imagelib/h;

    invoke-direct {v2, p0, v3, v11}, Lcom/squareup/imagelib/h;-><init>(Lcom/squareup/imagelib/t;Landroid/widget/ImageView;Lcom/squareup/imagelib/e;)V

    invoke-virtual {v1, v3, v2}, Lcom/squareup/imagelib/Picasso;->e(Landroid/widget/ImageView;Lcom/squareup/imagelib/h;)V

    return-void

    :cond_5c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_64
    :goto_64
    invoke-direct {p0, v1, v2}, Lcom/squareup/imagelib/t;->d(J)Lcom/squareup/imagelib/s;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/imagelib/a0;->h(Lcom/squareup/imagelib/s;)Ljava/lang/String;

    move-result-object v9

    iget v1, v0, Lcom/squareup/imagelib/t;->i:I

    invoke-static {v1}, Lcom/squareup/imagelib/MemoryPolicy;->f(I)Z

    move-result v1

    if-eqz v1, :cond_ba

    iget-object v1, v0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v1, v9}, Lcom/squareup/imagelib/Picasso;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_ba

    iget-object v1, v0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v1, v3}, Lcom/squareup/imagelib/Picasso;->c(Landroid/widget/ImageView;)V

    iget-object v1, v0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    iget-object v2, v1, Lcom/squareup/imagelib/Picasso;->g:Landroid/content/Context;

    sget-object v8, Lcom/squareup/imagelib/Picasso$LoadedFrom;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    iget-boolean v5, v0, Lcom/squareup/imagelib/t;->d:Z

    iget-boolean v6, v1, Lcom/squareup/imagelib/Picasso;->o:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Lcom/squareup/imagelib/q;->c(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;ZZ)V

    iget-object v1, v0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    iget-boolean v1, v1, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v1, :cond_b4

    invoke-virtual {v7}, Lcom/squareup/imagelib/s;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    if-eqz v11, :cond_b9

    invoke-interface/range {p2 .. p2}, Lcom/squareup/imagelib/e;->onSuccess()V

    :cond_b9
    return-void

    :cond_ba
    iget-boolean v1, v0, Lcom/squareup/imagelib/t;->f:Z

    if-eqz v1, :cond_c5

    invoke-direct {p0}, Lcom/squareup/imagelib/t;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/imagelib/q;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_c5
    new-instance v13, Lcom/squareup/imagelib/m;

    iget-object v2, v0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    iget v5, v0, Lcom/squareup/imagelib/t;->i:I

    iget v6, v0, Lcom/squareup/imagelib/t;->j:I

    iget v8, v0, Lcom/squareup/imagelib/t;->h:I

    iget-object v10, v0, Lcom/squareup/imagelib/t;->l:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/squareup/imagelib/t;->m:Ljava/lang/Object;

    iget-boolean v14, v0, Lcom/squareup/imagelib/t;->d:Z

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/squareup/imagelib/m;-><init>(Lcom/squareup/imagelib/Picasso;Landroid/widget/ImageView;Lcom/squareup/imagelib/s;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/imagelib/e;Z)V

    iget-object v1, v0, Lcom/squareup/imagelib/t;->b:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v1, v13}, Lcom/squareup/imagelib/Picasso;->g(Lcom/squareup/imagelib/a;)V

    return-void

    :cond_e8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public i()Lcom/squareup/imagelib/t;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/imagelib/t;->d:Z

    return-object p0
.end method

.method public j()Lcom/squareup/imagelib/t;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v0}, Lcom/squareup/imagelib/s$b;->g()Lcom/squareup/imagelib/s$b;

    return-object p0
.end method

.method public k(II)Lcom/squareup/imagelib/t;
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/imagelib/s$b;->i(II)Lcom/squareup/imagelib/s$b;

    return-object p0
.end method

.method public l(Lcom/squareup/imagelib/y;)Lcom/squareup/imagelib/t;
    .registers 3

    iget-object v0, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/s$b;->j(Lcom/squareup/imagelib/y;)Lcom/squareup/imagelib/s$b;

    return-object p0
.end method

.method public m(Ljava/util/List;)Lcom/squareup/imagelib/t;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/squareup/imagelib/y;",
            ">;)",
            "Lcom/squareup/imagelib/t;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/imagelib/t;->c:Lcom/squareup/imagelib/s$b;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/s$b;->k(Ljava/util/List;)Lcom/squareup/imagelib/s$b;

    return-object p0
.end method

.method n()Lcom/squareup/imagelib/t;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/imagelib/t;->e:Z

    return-object p0
.end method
