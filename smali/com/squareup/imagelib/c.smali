###### Class com.squareup.imagelib.c (com.squareup.imagelib.c)
.class Lcom/squareup/imagelib/c;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final d:Lcom/squareup/imagelib/u;


# instance fields
.field final e:I

.field final f:Lcom/squareup/imagelib/Picasso;

.field final g:Lcom/squareup/imagelib/i;

.field final h:Lcom/squareup/imagelib/d;

.field final i:Lcom/squareup/imagelib/w;

.field final j:Ljava/lang/String;

.field final k:Lcom/squareup/imagelib/s;

.field final l:I

.field m:I

.field final n:Lcom/squareup/imagelib/u;

.field o:Lcom/squareup/imagelib/a;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/a;",
            ">;"
        }
    .end annotation
.end field

.field q:Landroid/graphics/Bitmap;

.field r:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field s:Lcom/squareup/imagelib/Picasso$LoadedFrom;

.field t:Ljava/lang/Exception;

.field u:I

.field v:I

.field w:Lcom/squareup/imagelib/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/imagelib/c;->a:Ljava/lang/Object;

    new-instance v0, Lcom/squareup/imagelib/c$a;

    invoke-direct {v0}, Lcom/squareup/imagelib/c$a;-><init>()V

    sput-object v0, Lcom/squareup/imagelib/c;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/imagelib/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/squareup/imagelib/c$b;

    invoke-direct {v0}, Lcom/squareup/imagelib/c$b;-><init>()V

    sput-object v0, Lcom/squareup/imagelib/c;->d:Lcom/squareup/imagelib/u;

    return-void
.end method

.method constructor <init>(Lcom/squareup/imagelib/Picasso;Lcom/squareup/imagelib/i;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/w;Lcom/squareup/imagelib/a;Lcom/squareup/imagelib/u;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/squareup/imagelib/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/imagelib/c;->e:I

    iput-object p1, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    iput-object p2, p0, Lcom/squareup/imagelib/c;->g:Lcom/squareup/imagelib/i;

    iput-object p3, p0, Lcom/squareup/imagelib/c;->h:Lcom/squareup/imagelib/d;

    iput-object p4, p0, Lcom/squareup/imagelib/c;->i:Lcom/squareup/imagelib/w;

    iput-object p5, p0, Lcom/squareup/imagelib/c;->o:Lcom/squareup/imagelib/a;

    invoke-virtual {p5}, Lcom/squareup/imagelib/a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/imagelib/c;->j:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/squareup/imagelib/a;->i()Lcom/squareup/imagelib/s;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-virtual {p5}, Lcom/squareup/imagelib/a;->h()Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/imagelib/c;->w:Lcom/squareup/imagelib/Picasso$Priority;

    invoke-virtual {p5}, Lcom/squareup/imagelib/a;->e()I

    move-result p1

    iput p1, p0, Lcom/squareup/imagelib/c;->l:I

    invoke-virtual {p5}, Lcom/squareup/imagelib/a;->f()I

    move-result p1

    iput p1, p0, Lcom/squareup/imagelib/c;->m:I

    iput-object p6, p0, Lcom/squareup/imagelib/c;->n:Lcom/squareup/imagelib/u;

    invoke-virtual {p6}, Lcom/squareup/imagelib/u;->e()I

    move-result p1

    iput p1, p0, Lcom/squareup/imagelib/c;->v:I

    return-void
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/y;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_90

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/imagelib/y;

    const/4 v3, 0x0

    :try_start_e
    invoke-interface {v2, p1}, Lcom/squareup/imagelib/y;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_12} :catch_84

    if-nez v4, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transformation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/squareup/imagelib/y;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/imagelib/y;

    invoke-interface {v0}, Lcom/squareup/imagelib/y;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_4f
    sget-object p0, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/imagelib/c$d;

    invoke-direct {v0, p1}, Lcom/squareup/imagelib/c$d;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_5a
    if-ne v4, p1, :cond_6d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_6d

    sget-object p0, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/imagelib/c$e;

    invoke-direct {p1, v2}, Lcom/squareup/imagelib/c$e;-><init>(Lcom/squareup/imagelib/y;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_6d
    if-eq v4, p1, :cond_80

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_80

    sget-object p0, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/imagelib/c$f;

    invoke-direct {p1, v2}, Lcom/squareup/imagelib/c$f;-><init>(Lcom/squareup/imagelib/y;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_80
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_5

    :catch_84
    move-exception p0

    sget-object p1, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/imagelib/c$c;

    invoke-direct {v0, v2, p0}, Lcom/squareup/imagelib/c$c;-><init>(Lcom/squareup/imagelib/y;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_90
    return-object p1
.end method

.method private d()Lcom/squareup/imagelib/Picasso$Priority;
    .registers 7

    sget-object v0, Lcom/squareup/imagelib/Picasso$Priority;->a:Lcom/squareup/imagelib/Picasso$Priority;

    iget-object v1, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iget-object v4, p0, Lcom/squareup/imagelib/c;->o:Lcom/squareup/imagelib/a;

    if-nez v4, :cond_19

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :cond_19
    :goto_19
    if-nez v2, :cond_1c

    return-object v0

    :cond_1c
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lcom/squareup/imagelib/a;->h()Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object v0

    :cond_22
    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2a
    if-ge v3, v1, :cond_46

    iget-object v2, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/imagelib/a;

    invoke-virtual {v2}, Lcom/squareup/imagelib/a;->h()Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_43

    move-object v0, v2

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_46
    return-object v0
.end method

.method static e(Ljava/io/InputStream;Lcom/squareup/imagelib/s;)Landroid/graphics/Bitmap;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/squareup/imagelib/o;

    invoke-direct {v0, p0}, Lcom/squareup/imagelib/o;-><init>(Ljava/io/InputStream;)V

    const/high16 p0, 0x10000

    invoke-virtual {v0, p0}, Lcom/squareup/imagelib/o;->b(I)J

    move-result-wide v1

    invoke-static {p1}, Lcom/squareup/imagelib/u;->d(Lcom/squareup/imagelib/s;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/imagelib/u;->g(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    invoke-static {v0}, Lcom/squareup/imagelib/a0;->t(Ljava/io/InputStream;)Z

    move-result v4

    iget-boolean v5, p1, Lcom/squareup/imagelib/s;->r:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_24

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v5, v7, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    invoke-virtual {v0, v1, v2}, Lcom/squareup/imagelib/o;->a(J)V

    if-nez v4, :cond_4c

    if-eqz v5, :cond_2d

    goto :goto_4c

    :cond_2d
    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    invoke-static {v0, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, p1, Lcom/squareup/imagelib/s;->i:I

    iget v5, p1, Lcom/squareup/imagelib/s;->j:I

    invoke-static {v3, v5, p0, p1}, Lcom/squareup/imagelib/u;->b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/imagelib/s;)V

    invoke-virtual {v0, v1, v2}, Lcom/squareup/imagelib/o;->a(J)V

    :cond_3d
    invoke-static {v0, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_44

    return-object p0

    :cond_44
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    :goto_4c
    invoke-static {v0}, Lcom/squareup/imagelib/a0;->x(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v3, :cond_5d

    array-length v1, v0

    invoke-static {v0, v6, v1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/squareup/imagelib/s;->i:I

    iget v2, p1, Lcom/squareup/imagelib/s;->j:I

    invoke-static {v1, v2, p0, p1}, Lcom/squareup/imagelib/u;->b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/imagelib/s;)V

    :cond_5d
    array-length p1, v0

    invoke-static {v0, v6, p1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static g(Lcom/squareup/imagelib/Picasso;Lcom/squareup/imagelib/i;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/w;Lcom/squareup/imagelib/a;)Lcom/squareup/imagelib/c;
    .registers 17

    invoke-virtual/range {p4 .. p4}, Lcom/squareup/imagelib/a;->i()Lcom/squareup/imagelib/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/imagelib/Picasso;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_2c

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/squareup/imagelib/u;

    invoke-virtual {v11, v0}, Lcom/squareup/imagelib/u;->c(Lcom/squareup/imagelib/s;)Z

    move-result v4

    if-eqz v4, :cond_29

    new-instance v0, Lcom/squareup/imagelib/c;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/squareup/imagelib/c;-><init>(Lcom/squareup/imagelib/Picasso;Lcom/squareup/imagelib/i;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/w;Lcom/squareup/imagelib/a;Lcom/squareup/imagelib/u;)V

    return-object v0

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2c
    new-instance v0, Lcom/squareup/imagelib/c;

    sget-object v10, Lcom/squareup/imagelib/c;->d:Lcom/squareup/imagelib/u;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/squareup/imagelib/c;-><init>(Lcom/squareup/imagelib/Picasso;Lcom/squareup/imagelib/i;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/w;Lcom/squareup/imagelib/a;Lcom/squareup/imagelib/u;)V

    return-object v0
.end method

.method static l(I)I
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    goto :goto_d

    :pswitch_5
    const/16 p0, 0x10e

    goto :goto_d

    :pswitch_8
    const/16 p0, 0x5a

    goto :goto_d

    :pswitch_b
    const/16 p0, 0xb4

    :goto_d
    return p0

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static m(I)I
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x7

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, -0x1

    :goto_f
    return p0
.end method

.method private static v(ZIIII)Z
    .registers 5

    if-eqz p0, :cond_9

    if-gt p1, p3, :cond_9

    if-le p2, p4, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method static y(Lcom/squareup/imagelib/s;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 29

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-boolean v3, v0, Lcom/squareup/imagelib/s;->m:Z

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/squareup/imagelib/s;->e()Z

    move-result v4

    if-nez v4, :cond_1f

    if-eqz p2, :cond_1a

    goto :goto_1f

    :cond_1a
    move v3, v2

    move-object v0, v9

    move v2, v1

    goto/16 :goto_22f

    :cond_1f
    :goto_1f
    iget v4, v0, Lcom/squareup/imagelib/s;->i:I

    iget v6, v0, Lcom/squareup/imagelib/s;->j:I

    iget v7, v0, Lcom/squareup/imagelib/s;->n:F

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_144

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget-boolean v4, v0, Lcom/squareup/imagelib/s;->q:Z

    if-eqz v4, :cond_d5

    iget v4, v0, Lcom/squareup/imagelib/s;->o:F

    iget v6, v0, Lcom/squareup/imagelib/s;->p:F

    invoke-virtual {v9, v7, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget v4, v0, Lcom/squareup/imagelib/s;->o:F

    float-to-double v6, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    mul-double v6, v6, v14

    iget v8, v0, Lcom/squareup/imagelib/s;->p:F

    move/from16 v16, v2

    move/from16 v17, v3

    float-to-double v2, v8

    mul-double v2, v2, v10

    add-double/2addr v6, v2

    float-to-double v2, v8

    mul-double v2, v2, v14

    float-to-double v14, v4

    mul-double v14, v14, v10

    sub-double/2addr v2, v14

    iget v4, v0, Lcom/squareup/imagelib/s;->i:I

    int-to-double v14, v4

    mul-double v14, v14, v12

    add-double/2addr v14, v6

    move-wide/from16 v18, v6

    int-to-double v5, v4

    mul-double v5, v5, v10

    add-double/2addr v5, v2

    move-object/from16 v20, v9

    int-to-double v8, v4

    mul-double v8, v8, v12

    add-double v7, v18, v8

    iget v9, v0, Lcom/squareup/imagelib/s;->j:I

    move/from16 v22, v1

    int-to-double v0, v9

    mul-double v0, v0, v10

    sub-double/2addr v7, v0

    int-to-double v0, v4

    mul-double v0, v0, v10

    add-double/2addr v0, v2

    move-wide/from16 v23, v5

    int-to-double v4, v9

    mul-double v4, v4, v12

    add-double/2addr v0, v4

    int-to-double v4, v9

    mul-double v4, v4, v10

    sub-double v4, v18, v4

    int-to-double v9, v9

    mul-double v9, v9, v12

    add-double/2addr v9, v2

    move-wide/from16 v11, v18

    move-wide/from16 v18, v9

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide/from16 v6, v23

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    move-wide/from16 v13, v18

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sub-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v4, v2

    sub-double/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v6, v0

    move-object/from16 v0, v20

    goto/16 :goto_14b

    :cond_d5
    move/from16 v22, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object v0, v9

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    move-object/from16 v1, p0

    iget v2, v1, Lcom/squareup/imagelib/s;->i:I

    int-to-double v3, v2

    mul-double v3, v3, v12

    int-to-double v5, v2

    mul-double v5, v5, v10

    int-to-double v7, v2

    mul-double v7, v7, v12

    iget v9, v1, Lcom/squareup/imagelib/s;->j:I

    int-to-double v14, v9

    mul-double v14, v14, v10

    sub-double/2addr v7, v14

    int-to-double v14, v2

    mul-double v14, v14, v10

    int-to-double v1, v9

    mul-double v1, v1, v12

    add-double/2addr v14, v1

    int-to-double v1, v9

    mul-double v1, v1, v10

    neg-double v1, v1

    int-to-double v9, v9

    mul-double v9, v9, v12

    const-wide/16 v11, 0x0

    move-wide/from16 v18, v9

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    move-wide/from16 v7, v18

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    sub-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v6, v2

    move v4, v1

    goto :goto_14b

    :cond_144
    move/from16 v22, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object v0, v9

    :goto_14b
    if-eqz p2, :cond_171

    invoke-static/range {p2 .. p2}, Lcom/squareup/imagelib/c;->l(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Lcom/squareup/imagelib/c;->m(I)I

    move-result v2

    if-eqz v1, :cond_168

    int-to-float v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_163

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_168

    :cond_163
    move/from16 v25, v6

    move v6, v4

    move/from16 v4, v25

    :cond_168
    const/4 v1, 0x1

    if-eq v2, v1, :cond_171

    int-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_171
    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcom/squareup/imagelib/s;->k:Z

    if-eqz v2, :cond_1e4

    if-eqz v4, :cond_181

    int-to-float v1, v4

    move/from16 v2, v22

    int-to-float v3, v2

    div-float/2addr v1, v3

    move/from16 v3, v16

    goto :goto_188

    :cond_181
    move/from16 v2, v22

    int-to-float v1, v6

    move/from16 v3, v16

    int-to-float v5, v3

    div-float/2addr v1, v5

    :goto_188
    if-eqz v6, :cond_18d

    int-to-float v5, v6

    int-to-float v7, v3

    goto :goto_18f

    :cond_18d
    int-to-float v5, v4

    int-to-float v7, v2

    :goto_18f
    div-float/2addr v5, v7

    cmpl-float v7, v1, v5

    if-lez v7, :cond_1ac

    int-to-float v7, v3

    div-float/2addr v5, v1

    mul-float v7, v7, v5

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    sub-int v7, v3, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v8, v6

    int-to-float v9, v5

    div-float/2addr v8, v9

    move v9, v5

    move/from16 v10, v17

    :goto_1a8
    const/16 v21, 0x0

    move v5, v2

    goto :goto_1d5

    :cond_1ac
    cmpg-float v7, v1, v5

    if-gez v7, :cond_1ce

    int-to-float v7, v2

    div-float/2addr v1, v5

    mul-float v7, v7, v1

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v1, v7

    sub-int v7, v2, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v8, v4

    int-to-float v9, v1

    div-float/2addr v8, v9

    move v9, v3

    move/from16 v21, v7

    move/from16 v10, v17

    const/4 v7, 0x0

    move/from16 v25, v5

    move v5, v1

    move v1, v8

    move/from16 v8, v25

    goto :goto_1d5

    :cond_1ce
    move v9, v3

    move v1, v5

    move v8, v1

    move/from16 v10, v17

    const/4 v7, 0x0

    goto :goto_1a8

    :goto_1d5
    invoke-static {v10, v2, v3, v4, v6}, Lcom/squareup/imagelib/c;->v(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_1de

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1de
    move v6, v7

    move v8, v9

    move v7, v5

    move/from16 v5, v21

    goto :goto_233

    :cond_1e4
    move/from16 v3, v16

    move/from16 v10, v17

    move/from16 v2, v22

    iget-boolean v1, v1, Lcom/squareup/imagelib/s;->l:Z

    if-eqz v1, :cond_20e

    if-eqz v4, :cond_1f3

    int-to-float v1, v4

    int-to-float v5, v2

    goto :goto_1f5

    :cond_1f3
    int-to-float v1, v6

    int-to-float v5, v3

    :goto_1f5
    div-float/2addr v1, v5

    if-eqz v6, :cond_1fb

    int-to-float v5, v6

    int-to-float v7, v3

    goto :goto_1fd

    :cond_1fb
    int-to-float v5, v4

    int-to-float v7, v2

    :goto_1fd
    div-float/2addr v5, v7

    cmpg-float v7, v1, v5

    if-gez v7, :cond_203

    goto :goto_204

    :cond_203
    move v1, v5

    :goto_204
    invoke-static {v10, v2, v3, v4, v6}, Lcom/squareup/imagelib/c;->v(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_22f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_22f

    :cond_20e
    if-nez v4, :cond_212

    if-eqz v6, :cond_22f

    :cond_212
    if-ne v4, v2, :cond_216

    if-eq v6, v3, :cond_22f

    :cond_216
    if-eqz v4, :cond_21b

    int-to-float v1, v4

    int-to-float v5, v2

    goto :goto_21d

    :cond_21b
    int-to-float v1, v6

    int-to-float v5, v3

    :goto_21d
    div-float/2addr v1, v5

    if-eqz v6, :cond_223

    int-to-float v5, v6

    int-to-float v7, v3

    goto :goto_225

    :cond_223
    int-to-float v5, v4

    int-to-float v7, v2

    :goto_225
    div-float/2addr v5, v7

    invoke-static {v10, v2, v3, v4, v6}, Lcom/squareup/imagelib/c;->v(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_22f

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_22f
    :goto_22f
    move v7, v2

    move v8, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_233
    const/4 v10, 0x1

    move-object/from16 v4, p1

    move-object v9, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_243

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_244

    :cond_243
    move-object v0, v1

    :goto_244
    return-object v0
.end method

.method static z(Lcom/squareup/imagelib/s;)V
    .registers 4

    invoke-virtual {p0}, Lcom/squareup/imagelib/s;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/squareup/imagelib/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method b(Lcom/squareup/imagelib/a;)V
    .registers 9

    iget-object v0, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    iget-object v1, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    iget-object v2, p0, Lcom/squareup/imagelib/c;->o:Lcom/squareup/imagelib/a;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_35

    iput-object p1, p0, Lcom/squareup/imagelib/c;->o:Lcom/squareup/imagelib/a;

    if-eqz v0, :cond_34

    iget-object p1, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_2b

    :cond_1f
    invoke-virtual {v1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3}, Lcom/squareup/imagelib/a0;->m(Lcom/squareup/imagelib/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, p1, v0}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "to empty hunter"

    invoke-static {v5, v4, p1, v0}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    iget-object v2, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    if-nez v2, :cond_41

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    :cond_41
    iget-object v2, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_53

    invoke-virtual {v1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/squareup/imagelib/a0;->m(Lcom/squareup/imagelib/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v0, v1}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->h()Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/imagelib/c;->w:Lcom/squareup/imagelib/Picasso$Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_65

    iput-object p1, p0, Lcom/squareup/imagelib/c;->w:Lcom/squareup/imagelib/Picasso$Priority;

    :cond_65
    return-void
.end method

.method c()Z
    .registers 3

    iget-object v0, p0, Lcom/squareup/imagelib/c;->o:Lcom/squareup/imagelib/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_f
    iget-object v0, p0, Lcom/squareup/imagelib/c;->r:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1a

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method f(Lcom/squareup/imagelib/a;)V
    .registers 5

    iget-object v0, p0, Lcom/squareup/imagelib/c;->o:Lcom/squareup/imagelib/a;

    if-ne v0, p1, :cond_9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/imagelib/c;->o:Lcom/squareup/imagelib/a;

    const/4 v0, 0x1

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->h()Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/imagelib/c;->w:Lcom/squareup/imagelib/Picasso$Priority;

    if-ne v0, v1, :cond_23

    invoke-direct {p0}, Lcom/squareup/imagelib/c;->d()Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/imagelib/c;->w:Lcom/squareup/imagelib/Picasso$Priority;

    :cond_23
    iget-object v0, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_3c

    iget-object p1, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {p1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lcom/squareup/imagelib/a0;->m(Lcom/squareup/imagelib/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method h()Lcom/squareup/imagelib/a;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->o:Lcom/squareup/imagelib/a;

    return-object v0
.end method

.method i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/imagelib/c;->p:Ljava/util/List;

    return-object v0
.end method

.method j()Lcom/squareup/imagelib/s;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    return-object v0
.end method

.method k()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->t:Ljava/lang/Exception;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method o()Lcom/squareup/imagelib/Picasso$LoadedFrom;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->s:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    return-object v0
.end method

.method p()I
    .registers 2

    iget v0, p0, Lcom/squareup/imagelib/c;->l:I

    return v0
.end method

.method q()Lcom/squareup/imagelib/Picasso;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    return-object v0
.end method

.method r()Lcom/squareup/imagelib/Picasso$Priority;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->w:Lcom/squareup/imagelib/Picasso$Priority;

    return-object v0
.end method

.method public run()V
    .registers 6

    const-string v0, "Picasso-Idle"

    :try_start_2
    iget-object v1, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-static {v1}, Lcom/squareup/imagelib/c;->z(Lcom/squareup/imagelib/s;)V

    iget-object v1, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    iget-boolean v1, v1, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v1, :cond_18

    const-string v1, "Hunter"

    const-string v2, "executing"

    invoke-static {p0}, Lcom/squareup/imagelib/a0;->l(Lcom/squareup/imagelib/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p0}, Lcom/squareup/imagelib/c;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/imagelib/c;->q:Landroid/graphics/Bitmap;

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/squareup/imagelib/c;->g:Lcom/squareup/imagelib/i;

    invoke-virtual {v1, p0}, Lcom/squareup/imagelib/i;->e(Lcom/squareup/imagelib/c;)V

    goto :goto_6d

    :cond_26
    iget-object v1, p0, Lcom/squareup/imagelib/c;->g:Lcom/squareup/imagelib/i;

    invoke-virtual {v1, p0}, Lcom/squareup/imagelib/i;->d(Lcom/squareup/imagelib/c;)V
    :try_end_2b
    .catch Lcom/squareup/imagelib/j$b; {:try_start_2 .. :try_end_2b} :catch_75
    .catch Lcom/squareup/imagelib/p$a; {:try_start_2 .. :try_end_2b} :catch_65
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2b} :catch_5c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2b} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2e
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    goto :goto_6d

    :catchall_2c
    move-exception v1

    goto :goto_89

    :catch_2e
    move-exception v1

    :try_start_2f
    iput-object v1, p0, Lcom/squareup/imagelib/c;->t:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/squareup/imagelib/c;->g:Lcom/squareup/imagelib/i;

    invoke-virtual {v1, p0}, Lcom/squareup/imagelib/i;->e(Lcom/squareup/imagelib/c;)V

    goto :goto_6d

    :catch_37
    move-exception v1

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    iget-object v3, p0, Lcom/squareup/imagelib/c;->i:Lcom/squareup/imagelib/w;

    invoke-virtual {v3}, Lcom/squareup/imagelib/w;->a()Lcom/squareup/imagelib/x;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Lcom/squareup/imagelib/x;->a(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/squareup/imagelib/c;->t:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/squareup/imagelib/c;->g:Lcom/squareup/imagelib/i;

    invoke-virtual {v1, p0}, Lcom/squareup/imagelib/i;->e(Lcom/squareup/imagelib/c;)V

    goto :goto_6d

    :catch_5c
    move-exception v1

    iput-object v1, p0, Lcom/squareup/imagelib/c;->t:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/squareup/imagelib/c;->g:Lcom/squareup/imagelib/i;

    invoke-virtual {v1, p0}, Lcom/squareup/imagelib/i;->g(Lcom/squareup/imagelib/c;)V

    goto :goto_6d

    :catch_65
    move-exception v1

    iput-object v1, p0, Lcom/squareup/imagelib/c;->t:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/squareup/imagelib/c;->g:Lcom/squareup/imagelib/i;

    invoke-virtual {v1, p0}, Lcom/squareup/imagelib/i;->g(Lcom/squareup/imagelib/c;)V
    :try_end_6d
    .catchall {:try_start_2f .. :try_end_6d} :catchall_2c

    :goto_6d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_88

    :catch_75
    move-exception v1

    :try_start_76
    iget-boolean v2, v1, Lcom/squareup/imagelib/j$b;->a:Z

    if-eqz v2, :cond_80

    iget v2, v1, Lcom/squareup/imagelib/j$b;->b:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_82

    :cond_80
    iput-object v1, p0, Lcom/squareup/imagelib/c;->t:Ljava/lang/Exception;

    :cond_82
    iget-object v1, p0, Lcom/squareup/imagelib/c;->g:Lcom/squareup/imagelib/i;

    invoke-virtual {v1, p0}, Lcom/squareup/imagelib/i;->e(Lcom/squareup/imagelib/c;)V
    :try_end_87
    .catchall {:try_start_76 .. :try_end_87} :catchall_2c

    goto :goto_6d

    :goto_88
    return-void

    :goto_89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method s()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method t()Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/imagelib/c;->l:I

    invoke-static {v0}, Lcom/squareup/imagelib/MemoryPolicy;->f(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/squareup/imagelib/c;->h:Lcom/squareup/imagelib/d;

    iget-object v1, p0, Lcom/squareup/imagelib/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/squareup/imagelib/d;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/squareup/imagelib/c;->i:Lcom/squareup/imagelib/w;

    invoke-virtual {v1}, Lcom/squareup/imagelib/w;->d()V

    sget-object v1, Lcom/squareup/imagelib/Picasso$LoadedFrom;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    iput-object v1, p0, Lcom/squareup/imagelib/c;->s:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    iget-object v1, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    iget-boolean v1, v1, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v1, :cond_30

    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-virtual {v3}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    :cond_32
    iget-object v1, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    iget v2, p0, Lcom/squareup/imagelib/c;->v:I

    if-nez v2, :cond_3d

    sget-object v2, Lcom/squareup/imagelib/NetworkPolicy;->c:Lcom/squareup/imagelib/NetworkPolicy;

    iget v2, v2, Lcom/squareup/imagelib/NetworkPolicy;->e:I

    goto :goto_3f

    :cond_3d
    iget v2, p0, Lcom/squareup/imagelib/c;->m:I

    :goto_3f
    iput v2, v1, Lcom/squareup/imagelib/s;->d:I

    iget-object v2, p0, Lcom/squareup/imagelib/c;->n:Lcom/squareup/imagelib/u;

    iget v3, p0, Lcom/squareup/imagelib/c;->m:I

    invoke-virtual {v2, v1, v3}, Lcom/squareup/imagelib/u;->f(Lcom/squareup/imagelib/s;I)Lcom/squareup/imagelib/u$a;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Lcom/squareup/imagelib/u$a;->c()Lcom/squareup/imagelib/Picasso$LoadedFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/imagelib/c;->s:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-virtual {v1}, Lcom/squareup/imagelib/u$a;->b()I

    move-result v0

    iput v0, p0, Lcom/squareup/imagelib/c;->u:I

    invoke-virtual {v1}, Lcom/squareup/imagelib/u$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_71

    invoke-virtual {v1}, Lcom/squareup/imagelib/u$a;->d()Ljava/io/InputStream;

    move-result-object v0

    :try_start_61
    iget-object v1, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-static {v0, v1}, Lcom/squareup/imagelib/c;->e(Ljava/io/InputStream;Lcom/squareup/imagelib/s;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_6c

    invoke-static {v0}, Lcom/squareup/imagelib/a0;->e(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_71

    :catchall_6c
    move-exception v1

    invoke-static {v0}, Lcom/squareup/imagelib/a0;->e(Ljava/io/InputStream;)V

    throw v1

    :cond_71
    :goto_71
    if-eqz v0, :cond_f2

    iget-object v1, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    iget-boolean v1, v1, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v1, :cond_86

    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-virtual {v3}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    iget-object v1, p0, Lcom/squareup/imagelib/c;->i:Lcom/squareup/imagelib/w;

    invoke-virtual {v1, v0}, Lcom/squareup/imagelib/w;->b(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-virtual {v1}, Lcom/squareup/imagelib/s;->f()Z

    move-result v1

    if-nez v1, :cond_97

    iget v1, p0, Lcom/squareup/imagelib/c;->u:I

    if-eqz v1, :cond_f2

    :cond_97
    sget-object v1, Lcom/squareup/imagelib/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9a
    iget-object v2, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-virtual {v2}, Lcom/squareup/imagelib/s;->e()Z

    move-result v2

    if-nez v2, :cond_a6

    iget v2, p0, Lcom/squareup/imagelib/c;->u:I

    if-eqz v2, :cond_c1

    :cond_a6
    iget-object v2, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    iget v3, p0, Lcom/squareup/imagelib/c;->u:I

    invoke-static {v2, v0, v3}, Lcom/squareup/imagelib/c;->y(Lcom/squareup/imagelib/s;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    iget-boolean v2, v2, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v2, :cond_c1

    const-string v2, "Hunter"

    const-string v3, "transformed"

    iget-object v4, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-virtual {v4}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    iget-object v2, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-virtual {v2}, Lcom/squareup/imagelib/s;->b()Z

    move-result v2

    if-eqz v2, :cond_e6

    iget-object v2, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    iget-object v2, v2, Lcom/squareup/imagelib/s;->h:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/squareup/imagelib/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    iget-boolean v2, v2, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v2, :cond_e6

    const-string v2, "Hunter"

    const-string v3, "transformed"

    iget-object v4, p0, Lcom/squareup/imagelib/c;->k:Lcom/squareup/imagelib/s;

    invoke-virtual {v4}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_9a .. :try_end_e7} :catchall_ef

    if-eqz v0, :cond_f2

    iget-object v1, p0, Lcom/squareup/imagelib/c;->i:Lcom/squareup/imagelib/w;

    invoke-virtual {v1, v0}, Lcom/squareup/imagelib/w;->c(Landroid/graphics/Bitmap;)V

    goto :goto_f2

    :catchall_ef
    move-exception v0

    :try_start_f0
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v0

    :cond_f2
    :goto_f2
    return-object v0
.end method

.method u()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->r:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method w(ZLandroid/net/NetworkInfo;)Z
    .registers 7

    iget v0, p0, Lcom/squareup/imagelib/c;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_c

    return v2

    :cond_c
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/imagelib/c;->v:I

    iget-object v0, p0, Lcom/squareup/imagelib/c;->n:Lcom/squareup/imagelib/u;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/imagelib/u;->h(ZLandroid/net/NetworkInfo;)Z

    move-result p1

    return p1
.end method

.method x()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/c;->n:Lcom/squareup/imagelib/u;

    invoke-virtual {v0}, Lcom/squareup/imagelib/u;->i()Z

    move-result v0

    return v0
.end method

###### Class com.squareup.imagelib.c.a (com.squareup.imagelib.c$a)
.class Lcom/squareup/imagelib/c$a;
.super Ljava/lang/ThreadLocal;
.source "BitmapHunter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/StringBuilder;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Picasso-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/squareup/imagelib/c$a;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

###### Class com.squareup.imagelib.c.b (com.squareup.imagelib.c$b)
.class Lcom/squareup/imagelib/c$b;
.super Lcom/squareup/imagelib/u;
.source "BitmapHunter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/squareup/imagelib/u;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/squareup/imagelib/s;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcom/squareup/imagelib/s;I)Lcom/squareup/imagelib/u$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized type of request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

###### Class com.squareup.imagelib.c.RunnableC0443c (com.squareup.imagelib.c$c)
.class Lcom/squareup/imagelib/c$c;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/imagelib/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/imagelib/y;

.field final synthetic b:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/y;Ljava/lang/RuntimeException;)V
    .registers 3

    iput-object p1, p0, Lcom/squareup/imagelib/c$c;->a:Lcom/squareup/imagelib/y;

    iput-object p2, p0, Lcom/squareup/imagelib/c$c;->b:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transformation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/imagelib/c$c;->a:Lcom/squareup/imagelib/y;

    invoke-interface {v2}, Lcom/squareup/imagelib/y;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " crashed with exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/imagelib/c$c;->b:Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class com.squareup.imagelib.c.d (com.squareup.imagelib.c$d)
.class Lcom/squareup/imagelib/c$d;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/imagelib/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/imagelib/c$d;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lcom/squareup/imagelib/c$d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.squareup.imagelib.c.e (com.squareup.imagelib.c$e)
.class Lcom/squareup/imagelib/c$e;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/imagelib/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/imagelib/y;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/y;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/imagelib/c$e;->a:Lcom/squareup/imagelib/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transformation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/imagelib/c$e;->a:Lcom/squareup/imagelib/y;

    invoke-interface {v2}, Lcom/squareup/imagelib/y;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned input Bitmap but recycled it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.squareup.imagelib.c.f (com.squareup.imagelib.c$f)
.class Lcom/squareup/imagelib/c$f;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/imagelib/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/imagelib/y;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/y;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/imagelib/c$f;->a:Lcom/squareup/imagelib/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transformation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/imagelib/c$f;->a:Lcom/squareup/imagelib/y;

    invoke-interface {v2}, Lcom/squareup/imagelib/y;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mutated input Bitmap but failed to recycle the original."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
