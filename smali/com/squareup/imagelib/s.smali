###### Class com.squareup.imagelib.s (com.squareup.imagelib.s)
.class public final Lcom/squareup/imagelib/s;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/s$b;
    }
.end annotation


# static fields
.field private static final a:J


# instance fields
.field b:I

.field c:J

.field d:I

.field public final e:Landroid/net/Uri;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/y;",
            ">;"
        }
    .end annotation
.end field

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:Z

.field public final r:Z

.field public final s:Landroid/graphics/Bitmap$Config;

.field public final t:Lcom/squareup/imagelib/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/squareup/imagelib/s;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZZLandroid/graphics/Bitmap$Config;Lcom/squareup/imagelib/Picasso$Priority;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/y;",
            ">;IIZZZFFFZZ",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/squareup/imagelib/Picasso$Priority;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    move v1, p2

    iput v1, v0, Lcom/squareup/imagelib/s;->f:I

    move-object v1, p3

    iput-object v1, v0, Lcom/squareup/imagelib/s;->g:Ljava/lang/String;

    if-nez p4, :cond_13

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/squareup/imagelib/s;->h:Ljava/util/List;

    goto :goto_19

    :cond_13
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/imagelib/s;->h:Ljava/util/List;

    :goto_19
    move v1, p5

    iput v1, v0, Lcom/squareup/imagelib/s;->i:I

    move v1, p6

    iput v1, v0, Lcom/squareup/imagelib/s;->j:I

    move v1, p7

    iput-boolean v1, v0, Lcom/squareup/imagelib/s;->k:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/squareup/imagelib/s;->l:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/squareup/imagelib/s;->m:Z

    move v1, p10

    iput v1, v0, Lcom/squareup/imagelib/s;->n:F

    move v1, p11

    iput v1, v0, Lcom/squareup/imagelib/s;->o:F

    move v1, p12

    iput v1, v0, Lcom/squareup/imagelib/s;->p:F

    move v1, p13

    iput-boolean v1, v0, Lcom/squareup/imagelib/s;->q:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/squareup/imagelib/s;->r:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/squareup/imagelib/s;->s:Landroid/graphics/Bitmap$Config;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/squareup/imagelib/s;->t:Lcom/squareup/imagelib/Picasso$Priority;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZZLandroid/graphics/Bitmap$Config;Lcom/squareup/imagelib/Picasso$Priority;Lcom/squareup/imagelib/s$a;)V
    .registers 18

    invoke-direct/range {p0 .. p16}, Lcom/squareup/imagelib/s;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZZLandroid/graphics/Bitmap$Config;Lcom/squareup/imagelib/Picasso$Priority;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget v0, p0, Lcom/squareup/imagelib/s;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/s;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c()Z
    .registers 2

    iget v0, p0, Lcom/squareup/imagelib/s;->i:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/squareup/imagelib/s;->j:I

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

.method d()Ljava/lang/String;
    .registers 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/squareup/imagelib/s;->c:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/squareup/imagelib/s;->a:J

    const/16 v4, 0x2b

    cmp-long v5, v0, v2

    if-lez v5, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/imagelib/s;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x73

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/imagelib/s;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Z
    .registers 3

    invoke-virtual {p0}, Lcom/squareup/imagelib/s;->c()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/squareup/imagelib/s;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/squareup/imagelib/s;->e()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/squareup/imagelib/s;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method g()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/imagelib/s;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/squareup/imagelib/s;->f:I

    if-lez v1, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_f
    iget-object v1, p0, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_14
    iget-object v1, p0, Lcom/squareup/imagelib/s;->h:Ljava/util/List;

    const/16 v2, 0x20

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/squareup/imagelib/s;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/imagelib/y;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/squareup/imagelib/y;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_3d
    iget-object v1, p0, Lcom/squareup/imagelib/s;->g:Ljava/lang/String;

    const/16 v3, 0x29

    if-eqz v1, :cond_50

    const-string v1, " stableKey("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/imagelib/s;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_50
    iget v1, p0, Lcom/squareup/imagelib/s;->i:I

    const/16 v4, 0x2c

    if-lez v1, :cond_6b

    const-string v1, " resize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/imagelib/s;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/imagelib/s;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6b
    iget-boolean v1, p0, Lcom/squareup/imagelib/s;->k:Z

    if-eqz v1, :cond_74

    const-string v1, " centerCrop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    iget-boolean v1, p0, Lcom/squareup/imagelib/s;->l:Z

    if-eqz v1, :cond_7d

    const-string v1, " centerInside"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    iget v1, p0, Lcom/squareup/imagelib/s;->n:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_a7

    const-string v1, " rotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/imagelib/s;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/squareup/imagelib/s;->q:Z

    if-eqz v1, :cond_a4

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/imagelib/s;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/imagelib/s;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_a4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a7
    iget-boolean v1, p0, Lcom/squareup/imagelib/s;->r:Z

    if-eqz v1, :cond_b0

    const-string v1, " purgeable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b0
    iget-object v1, p0, Lcom/squareup/imagelib/s;->s:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_bc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/imagelib/s;->s:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_bc
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.squareup.imagelib.s.a (com.squareup.imagelib.s$a)
.class synthetic Lcom/squareup/imagelib/s$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

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
