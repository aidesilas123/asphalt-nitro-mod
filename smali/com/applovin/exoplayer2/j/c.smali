###### Class com.applovin.exoplayer2.j.c (com.applovin.exoplayer2.j.c)
.class public Lcom/applovin/exoplayer2/j/c;
.super Lcom/applovin/exoplayer2/j/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/j/c$b;,
        Lcom/applovin/exoplayer2/j/c$f;,
        Lcom/applovin/exoplayer2/j/c$a;,
        Lcom/applovin/exoplayer2/j/c$g;,
        Lcom/applovin/exoplayer2/j/c$e;,
        Lcom/applovin/exoplayer2/j/c$c;,
        Lcom/applovin/exoplayer2/j/c$d;
    }
.end annotation


# static fields
.field private static final Ug:[I

.field private static final Uh:Lcom/applovin/exoplayer2/common/a/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/ai<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final Ui:Lcom/applovin/exoplayer2/common/a/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/ai<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Uj:Lcom/applovin/exoplayer2/j/d$b;

.field private final Uk:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/exoplayer2/j/c$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/applovin/exoplayer2/j/c;->Ug:[I

    sget-object v0, Lcom/applovin/exoplayer2/j/p;->a:Lcom/applovin/exoplayer2/j/p;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/ai;->b(Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/j/c;->Uh:Lcom/applovin/exoplayer2/common/a/ai;

    sget-object v0, Lcom/applovin/exoplayer2/j/o;->a:Lcom/applovin/exoplayer2/j/o;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/ai;->b(Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/j/c;->Ui:Lcom/applovin/exoplayer2/common/a/ai;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/j/c$c;->Uw:Lcom/applovin/exoplayer2/j/c$c;

    new-instance v1, Lcom/applovin/exoplayer2/j/a$b;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/j/a$b;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/j/c;-><init>(Lcom/applovin/exoplayer2/j/c$c;Lcom/applovin/exoplayer2/j/d$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/j/a$b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/a$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/j/c;-><init>(Landroid/content/Context;Lcom/applovin/exoplayer2/j/d$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applovin/exoplayer2/j/d$b;)V
    .registers 3

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$c;->e(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/j/c;-><init>(Lcom/applovin/exoplayer2/j/c$c;Lcom/applovin/exoplayer2/j/d$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/j/c$c;Lcom/applovin/exoplayer2/j/d$b;)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/f;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/j/c;->Uj:Lcom/applovin/exoplayer2/j/d$b;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/j/c;->Uk:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/h/ac;[IILjava/lang/String;IIIIIIIILjava/util/List;)I
    .registers 30
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/h/ac;",
            "[II",
            "Ljava/lang/String;",
            "IIIIIIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3b

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v5

    aget v7, p1, v3

    move-object/from16 v6, p3

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-static/range {v5 .. v16}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;IIIIIIIIII)Z

    move-result v3

    if-eqz v3, :cond_38

    add-int/lit8 v1, v1, 0x1

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3b
    return v1
.end method

.method protected static a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Z)I
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/applovin/exoplayer2/v;->dq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x4

    return p0

    :cond_10
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/applovin/exoplayer2/v;->dq:Ljava/lang/String;

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    if-nez p1, :cond_20

    goto :goto_46

    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_44

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto :goto_44

    :cond_2d
    const-string p2, "-"

    invoke-static {p0, p2}, Lcom/applovin/exoplayer2/l/ai;->m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/l/ai;->m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x2

    return p0

    :cond_43
    return v0

    :cond_44
    :goto_44
    const/4 p0, 0x3

    return p0

    :cond_46
    :goto_46
    if-eqz p2, :cond_4b

    if-nez p0, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    return v0
.end method

.method private static synthetic a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private static a(ZIIII)Landroid/graphics/Point;
    .registers 8

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-le p1, p2, :cond_c

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-eq v1, p0, :cond_10

    goto :goto_13

    :cond_10
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_13
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_23

    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_23
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static a(Lcom/applovin/exoplayer2/h/ad;[[IILcom/applovin/exoplayer2/j/c$c;)Lcom/applovin/exoplayer2/j/d$a;
    .registers 24
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-boolean v2, v1, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x18

    goto :goto_d

    :cond_b
    const/16 v2, 0x10

    :goto_d
    iget-boolean v3, v1, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    and-int v3, p2, v2

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    const/16 v18, 0x1

    goto :goto_1c

    :cond_1a
    const/16 v18, 0x0

    :goto_1c
    const/4 v15, 0x0

    :goto_1d
    iget v3, v0, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-ge v15, v3, :cond_64

    invoke-virtual {v0, v15}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v14

    aget-object v4, p1, v15

    iget v7, v1, Lcom/applovin/exoplayer2/j/i;->Vf:I

    iget v8, v1, Lcom/applovin/exoplayer2/j/i;->Vg:I

    iget v9, v1, Lcom/applovin/exoplayer2/j/i;->Vh:I

    iget v10, v1, Lcom/applovin/exoplayer2/j/i;->Vi:I

    iget v11, v1, Lcom/applovin/exoplayer2/j/i;->Vj:I

    iget v12, v1, Lcom/applovin/exoplayer2/j/i;->Vk:I

    iget v13, v1, Lcom/applovin/exoplayer2/j/i;->Vl:I

    iget v6, v1, Lcom/applovin/exoplayer2/j/i;->Vm:I

    iget v5, v1, Lcom/applovin/exoplayer2/j/i;->Vn:I

    iget v3, v1, Lcom/applovin/exoplayer2/j/i;->Vo:I

    iget-boolean v0, v1, Lcom/applovin/exoplayer2/j/i;->Vp:Z

    move/from16 v16, v3

    move-object v3, v14

    move/from16 v17, v5

    move/from16 v5, v18

    move/from16 v19, v6

    move v6, v2

    move-object v1, v14

    move/from16 v14, v19

    move/from16 v19, v15

    move/from16 v15, v17

    move/from16 v17, v0

    invoke-static/range {v3 .. v17}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ac;[IZIIIIIIIIIIIZ)[I

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_5d

    new-instance v2, Lcom/applovin/exoplayer2/j/d$a;

    invoke-direct {v2, v1, v0}, Lcom/applovin/exoplayer2/j/d$a;-><init>(Lcom/applovin/exoplayer2/h/ac;[I)V

    return-object v2

    :cond_5d
    add-int/lit8 v15, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    goto :goto_1d

    :cond_64
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Lcom/applovin/exoplayer2/h/ad;[[ILcom/applovin/exoplayer2/j/c$c;)Lcom/applovin/exoplayer2/j/d$a;
    .registers 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, v3

    move-object v7, v6

    const/4 v5, 0x0

    :goto_a
    iget v8, v0, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-ge v5, v8, :cond_61

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v8

    iget v9, v1, Lcom/applovin/exoplayer2/j/i;->Vn:I

    iget v10, v1, Lcom/applovin/exoplayer2/j/i;->Vo:I

    iget-boolean v11, v1, Lcom/applovin/exoplayer2/j/i;->Vp:Z

    invoke-static {v8, v9, v10, v11}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ac;IIZ)Ljava/util/List;

    move-result-object v9

    aget-object v10, p1, v5

    const/4 v11, 0x0

    :goto_1f
    iget v12, v8, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v11, v12, :cond_5e

    invoke-virtual {v8, v11}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v12

    iget v13, v12, Lcom/applovin/exoplayer2/v;->ds:I

    and-int/lit16 v13, v13, 0x4000

    if-eqz v13, :cond_2e

    goto :goto_5b

    :cond_2e
    aget v13, v10, v11

    iget-boolean v14, v1, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    invoke-static {v13, v14}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result v13

    if-eqz v13, :cond_5b

    new-instance v13, Lcom/applovin/exoplayer2/j/c$g;

    aget v14, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-direct {v13, v12, v1, v14, v15}, Lcom/applovin/exoplayer2/j/c$g;-><init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/j/c$c;IZ)V

    iget-boolean v12, v13, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    if-nez v12, :cond_50

    iget-boolean v12, v1, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    if-nez v12, :cond_50

    goto :goto_5b

    :cond_50
    if-eqz v7, :cond_58

    invoke-virtual {v13, v7}, Lcom/applovin/exoplayer2/j/c$g;->a(Lcom/applovin/exoplayer2/j/c$g;)I

    move-result v12

    if-lez v12, :cond_5b

    :cond_58
    move-object v6, v8

    move v4, v11

    move-object v7, v13

    :cond_5b
    :goto_5b
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_61
    if-nez v6, :cond_64

    goto :goto_6e

    :cond_64
    new-instance v3, Lcom/applovin/exoplayer2/j/d$a;

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v4, v0, v2

    invoke-direct {v3, v6, v0}, Lcom/applovin/exoplayer2/j/d$a;-><init>(Lcom/applovin/exoplayer2/h/ac;[I)V

    :goto_6e
    return-object v3
.end method

.method private static a(Lcom/applovin/exoplayer2/h/ac;IIZ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/h/ac;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/applovin/exoplayer2/h/ac;->fR:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    iget v3, p0, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v2, v3, :cond_17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_7c

    if-ne p2, v2, :cond_1f

    goto :goto_7c

    :cond_1f
    const v3, 0x7fffffff

    :goto_22
    iget v4, p0, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v1, v4, :cond_55

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v4

    iget v5, v4, Lcom/applovin/exoplayer2/v;->dE:I

    if-lez v5, :cond_52

    iget v6, v4, Lcom/applovin/exoplayer2/v;->height:I

    if-lez v6, :cond_52

    invoke-static {p3, p1, p2, v5, v6}, Lcom/applovin/exoplayer2/j/c;->a(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    iget v6, v4, Lcom/applovin/exoplayer2/v;->dE:I

    iget v4, v4, Lcom/applovin/exoplayer2/v;->height:I

    mul-int v7, v6, v4

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v6, v8, :cond_52

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_52

    if-ge v7, v3, :cond_52

    move v3, v7

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_55
    if-eq v3, v2, :cond_7c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_5d
    if-ltz p1, :cond_7c

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v;->bS()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_76

    if-le p2, v3, :cond_79

    :cond_76
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_79
    add-int/lit8 p1, p1, -0x1

    goto :goto_5d

    :cond_7c
    :goto_7c
    return-object v0
.end method

.method private static a(Lcom/applovin/exoplayer2/j/f$a;[[[I[Lcom/applovin/exoplayer2/at;[Lcom/applovin/exoplayer2/j/d;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_5
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/j/f$a;->np()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_34

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/j/f$a;->eS(I)I

    move-result v5

    aget-object v7, p3, v2

    if-eq v5, v6, :cond_17

    const/4 v8, 0x2

    if-ne v5, v8, :cond_31

    :cond_17
    if-eqz v7, :cond_31

    aget-object v8, p1, v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/j/f$a;->eT(I)Lcom/applovin/exoplayer2/h/ad;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/applovin/exoplayer2/j/c;->a([[ILcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/d;)Z

    move-result v7

    if-eqz v7, :cond_31

    if-ne v5, v6, :cond_2c

    if-eq v4, v1, :cond_2a

    goto :goto_2e

    :cond_2a
    move v4, v2

    goto :goto_31

    :cond_2c
    if-eq v3, v1, :cond_30

    :goto_2e
    const/4 p0, 0x0

    goto :goto_35

    :cond_30
    move v3, v2

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_34
    const/4 p0, 0x1

    :goto_35
    if-eq v4, v1, :cond_3a

    if-eq v3, v1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    and-int/2addr p0, v0

    if-eqz p0, :cond_46

    new-instance p0, Lcom/applovin/exoplayer2/at;

    invoke-direct {p0, v6}, Lcom/applovin/exoplayer2/at;-><init>(Z)V

    aput-object p0, p2, v4

    aput-object p0, p2, v3

    :cond_46
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/v;ILcom/applovin/exoplayer2/v;IZZZ)Z
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result p1

    if-eqz p1, :cond_31

    iget p1, p0, Lcom/applovin/exoplayer2/v;->dv:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_31

    if-gt p1, p3, :cond_31

    if-nez p6, :cond_18

    iget p1, p0, Lcom/applovin/exoplayer2/v;->dL:I

    if-eq p1, v1, :cond_31

    iget p3, p2, Lcom/applovin/exoplayer2/v;->dL:I

    if-ne p1, p3, :cond_31

    :cond_18
    if-nez p4, :cond_26

    iget-object p1, p0, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    if-eqz p1, :cond_31

    iget-object p3, p2, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    :cond_26
    if-nez p5, :cond_30

    iget p0, p0, Lcom/applovin/exoplayer2/v;->dM:I

    if-eq p0, v1, :cond_31

    iget p1, p2, Lcom/applovin/exoplayer2/v;->dM:I

    if-ne p0, p1, :cond_31

    :cond_30
    const/4 v0, 0x1

    :cond_31
    return v0
.end method

.method private static a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;IIIIIIIIII)Z
    .registers 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/applovin/exoplayer2/v;->ds:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p2, v1}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result v0

    if-eqz v0, :cond_47

    and-int/2addr p2, p3

    if-eqz p2, :cond_47

    if-eqz p1, :cond_1b

    iget-object p2, p0, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    :cond_1b
    iget p1, p0, Lcom/applovin/exoplayer2/v;->dE:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_24

    if-gt p8, p1, :cond_47

    if-gt p1, p4, :cond_47

    :cond_24
    iget p1, p0, Lcom/applovin/exoplayer2/v;->height:I

    if-eq p1, p2, :cond_2c

    if-gt p9, p1, :cond_47

    if-gt p1, p5, :cond_47

    :cond_2c
    iget p1, p0, Lcom/applovin/exoplayer2/v;->dF:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p1, p3

    if-eqz p3, :cond_3e

    int-to-float p3, p10

    cmpg-float p3, p3, p1

    if-gtz p3, :cond_47

    int-to-float p3, p6

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_47

    :cond_3e
    iget p0, p0, Lcom/applovin/exoplayer2/v;->dv:I

    if-eq p0, p2, :cond_47

    if-gt p11, p0, :cond_47

    if-gt p0, p7, :cond_47

    const/4 v1, 0x1

    :cond_47
    return v1
.end method

.method private static a([[ILcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/d;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    invoke-interface {p2}, Lcom/applovin/exoplayer2/j/g;->nf()Lcom/applovin/exoplayer2/h/ac;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/h/ad;->a(Lcom/applovin/exoplayer2/h/ac;)I

    move-result p1

    const/4 v1, 0x0

    :goto_d
    invoke-interface {p2}, Lcom/applovin/exoplayer2/j/g;->kD()I

    move-result v2

    if-ge v1, v2, :cond_27

    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/applovin/exoplayer2/j/g;->eP(I)I

    move-result v3

    aget v2, v2, v3

    invoke-static {v2}, Lcom/applovin/exoplayer2/z1;->d(I)I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_24

    return v0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/applovin/exoplayer2/h/ac;[IIIZZZ)[I
    .registers 20

    move-object v0, p0

    move v1, p2

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v9

    iget v2, v0, Lcom/applovin/exoplayer2/h/ac;->fR:I

    new-array v10, v2, [I

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_d
    iget v2, v0, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v11, v2, :cond_30

    if-eq v11, v1, :cond_28

    invoke-virtual {p0, v11}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v2

    aget v3, p1, v11

    move-object v4, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;ILcom/applovin/exoplayer2/v;IZZZ)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_28
    add-int/lit8 v2, v12, 0x1

    aput v11, v10, v12

    move v12, v2

    :cond_2d
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_30
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/applovin/exoplayer2/h/ac;[IZIIIIIIIIIIIZ)[I
    .registers 35

    move-object/from16 v13, p0

    iget v0, v13, Lcom/applovin/exoplayer2/h/ac;->fR:I

    const/4 v14, 0x2

    if-ge v0, v14, :cond_a

    sget-object v0, Lcom/applovin/exoplayer2/j/c;->Ug:[I

    return-object v0

    :cond_a
    move/from16 v0, p12

    move/from16 v1, p13

    move/from16 v2, p14

    invoke-static {v13, v0, v1, v2}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ac;IIZ)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v14, :cond_1d

    sget-object v0, Lcom/applovin/exoplayer2/j/c;->Ug:[I

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    if-nez p2, :cond_7e

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v16, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2a
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_7b

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v0

    iget-object v9, v0, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v17, v9

    move/from16 v9, p9

    move v14, v10

    move/from16 v10, p10

    move/from16 v18, v11

    move/from16 v11, p11

    move-object/from16 v19, v12

    move-object v12, v15

    invoke-static/range {v0 .. v12}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ac;[IILjava/lang/String;IIIIIIIILjava/util/List;)I

    move-result v0

    if-le v0, v14, :cond_74

    move v10, v0

    move-object/from16 v16, v17

    goto :goto_75

    :cond_6f
    move v14, v10

    move/from16 v18, v11

    move-object/from16 v19, v12

    :cond_74
    move v10, v14

    :goto_75
    add-int/lit8 v11, v18, 0x1

    move-object/from16 v12, v19

    const/4 v14, 0x2

    goto :goto_2a

    :cond_7b
    move-object/from16 v3, v16

    goto :goto_7f

    :cond_7e
    move-object v3, v0

    :goto_7f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v12, v15

    invoke-static/range {v0 .. v12}, Lcom/applovin/exoplayer2/j/c;->b(Lcom/applovin/exoplayer2/h/ac;[IILjava/lang/String;IIIIIIIILjava/util/List;)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a3

    sget-object v0, Lcom/applovin/exoplayer2/j/c;->Ug:[I

    goto :goto_a7

    :cond_a3
    invoke-static {v15}, Lcom/applovin/exoplayer2/common/b/c;->f(Ljava/util/Collection;)[I

    move-result-object v0

    :goto_a7
    return-object v0
.end method

.method protected static aI(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/4 p0, 0x0

    :cond_f
    return-object p0
.end method

.method private static synthetic b(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_21

    const/4 v1, 0x0

    goto :goto_21

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_17

    const/4 v1, 0x1

    goto :goto_21

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p0, p1

    :cond_21
    :goto_21
    return v1
.end method

.method private static b(Lcom/applovin/exoplayer2/h/ac;[IILjava/lang/String;IIIIIIIILjava/util/List;)V
    .registers 29
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/h/ac;",
            "[II",
            "Ljava/lang/String;",
            "IIIIIIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p12

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_3c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v4

    aget v6, p1, v2

    move-object/from16 v5, p3

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-static/range {v4 .. v15}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;IIIIIIIIII)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public static synthetic c(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/j/c;->a(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/j/c;->b(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method protected static n(IZ)Z
    .registers 3

    invoke-static {p0}, Lcom/applovin/exoplayer2/z1;->c(I)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    if-eqz p1, :cond_d

    const/4 p1, 0x3

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method static synthetic ni()Lcom/applovin/exoplayer2/common/a/ai;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/j/c;->Uh:Lcom/applovin/exoplayer2/common/a/ai;

    return-object v0
.end method

.method static synthetic nj()Lcom/applovin/exoplayer2/common/a/ai;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/j/c;->Ui:Lcom/applovin/exoplayer2/common/a/ai;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/applovin/exoplayer2/h/ad;[[ILcom/applovin/exoplayer2/j/c$c;Ljava/lang/String;)Landroid/util/Pair;
    .registers 20
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/h/ad;",
            "[[I",
            "Lcom/applovin/exoplayer2/j/c$c;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/applovin/exoplayer2/j/d$a;",
            "Lcom/applovin/exoplayer2/j/c$f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, v3

    move-object v7, v6

    const/4 v5, 0x0

    :goto_a
    iget v8, v0, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-ge v5, v8, :cond_4a

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v8

    aget-object v9, p2, v5

    const/4 v10, 0x0

    :goto_15
    iget v11, v8, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v10, v11, :cond_45

    aget v11, v9, v10

    iget-boolean v12, v1, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    invoke-static {v11, v12}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-virtual {v8, v10}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v11

    new-instance v12, Lcom/applovin/exoplayer2/j/c$f;

    aget v13, v9, v10

    move-object/from16 v14, p4

    invoke-direct {v12, v11, v1, v13, v14}, Lcom/applovin/exoplayer2/j/c$f;-><init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/j/c$c;ILjava/lang/String;)V

    iget-boolean v11, v12, Lcom/applovin/exoplayer2/j/c$f;->Ul:Z

    if-eqz v11, :cond_42

    if-eqz v7, :cond_3c

    invoke-virtual {v12, v7}, Lcom/applovin/exoplayer2/j/c$f;->a(Lcom/applovin/exoplayer2/j/c$f;)I

    move-result v11

    if-lez v11, :cond_42

    :cond_3c
    move-object v6, v8

    move v4, v10

    move-object v7, v12

    goto :goto_42

    :cond_40
    move-object/from16 v14, p4

    :cond_42
    :goto_42
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_45
    move-object/from16 v14, p4

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_4a
    if-nez v6, :cond_4d

    goto :goto_61

    :cond_4d
    new-instance v0, Lcom/applovin/exoplayer2/j/d$a;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v4, v1, v2

    invoke-direct {v0, v6, v1}, Lcom/applovin/exoplayer2/j/d$a;-><init>(Lcom/applovin/exoplayer2/h/ac;[I)V

    invoke-static {v7}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/j/c$f;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_61
    return-object v3
.end method

.method protected final a(Lcom/applovin/exoplayer2/j/f$a;[[[I[ILcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/j/f$a;",
            "[[[I[I",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Lcom/applovin/exoplayer2/ba;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/applovin/exoplayer2/at;",
            "[",
            "Lcom/applovin/exoplayer2/j/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c;->Uk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/j/c$c;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/j/f$a;->np()I

    move-result v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/j/f$a;[[[I[ILcom/applovin/exoplayer2/j/c$c;)[Lcom/applovin/exoplayer2/j/d$a;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    const/4 v4, 0x0

    if-ge v3, v1, :cond_54

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/j/f$a;->eS(I)I

    move-result v5

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/j/c$c;->eQ(I)Z

    move-result v6

    if-nez v6, :cond_4f

    iget-object v6, v0, Lcom/applovin/exoplayer2/j/i;->VB:Lcom/applovin/exoplayer2/common/a/w;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/common/a/q;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_4f

    :cond_2c
    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/j/f$a;->eT(I)Lcom/applovin/exoplayer2/h/ad;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/applovin/exoplayer2/j/c$c;->a(ILcom/applovin/exoplayer2/h/ad;)Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-virtual {v0, v3, v5}, Lcom/applovin/exoplayer2/j/c$c;->b(ILcom/applovin/exoplayer2/h/ad;)Lcom/applovin/exoplayer2/j/c$e;

    move-result-object v6

    if-nez v6, :cond_3d

    goto :goto_4c

    :cond_3d
    new-instance v4, Lcom/applovin/exoplayer2/j/d$a;

    iget v7, v6, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    invoke-virtual {v5, v7}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v5

    iget-object v7, v6, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    iget v6, v6, Lcom/applovin/exoplayer2/j/c$e;->bs:I

    invoke-direct {v4, v5, v7, v6}, Lcom/applovin/exoplayer2/j/d$a;-><init>(Lcom/applovin/exoplayer2/h/ac;[II)V

    :goto_4c
    aput-object v4, p3, v3

    goto :goto_51

    :cond_4f
    :goto_4f
    aput-object v4, p3, v3

    :cond_51
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_54
    iget-object v3, p0, Lcom/applovin/exoplayer2/j/c;->Uj:Lcom/applovin/exoplayer2/j/d$b;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/j/j;->nq()Lcom/applovin/exoplayer2/k/d;

    move-result-object v5

    invoke-interface {v3, p3, v5, p4, p5}, Lcom/applovin/exoplayer2/j/d$b;->a([Lcom/applovin/exoplayer2/j/d$a;Lcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)[Lcom/applovin/exoplayer2/j/d;

    move-result-object p3

    new-array p4, v1, [Lcom/applovin/exoplayer2/at;

    const/4 p5, 0x0

    :goto_61
    if-ge p5, v1, :cond_98

    invoke-virtual {p1, p5}, Lcom/applovin/exoplayer2/j/f$a;->eS(I)I

    move-result v3

    invoke-virtual {v0, p5}, Lcom/applovin/exoplayer2/j/c$c;->eQ(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_7d

    iget-object v5, v0, Lcom/applovin/exoplayer2/j/i;->VB:Lcom/applovin/exoplayer2/common/a/w;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/applovin/exoplayer2/common/a/q;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 v3, 0x0

    goto :goto_7e

    :cond_7d
    :goto_7d
    const/4 v3, 0x1

    :goto_7e
    if-nez v3, :cond_8c

    invoke-virtual {p1, p5}, Lcom/applovin/exoplayer2/j/f$a;->eS(I)I

    move-result v3

    const/4 v5, -0x2

    if-eq v3, v5, :cond_8d

    aget-object v3, p3, p5

    if-eqz v3, :cond_8c

    goto :goto_8d

    :cond_8c
    const/4 v6, 0x0

    :cond_8d
    :goto_8d
    if-eqz v6, :cond_92

    sget-object v3, Lcom/applovin/exoplayer2/at;->hh:Lcom/applovin/exoplayer2/at;

    goto :goto_93

    :cond_92
    move-object v3, v4

    :goto_93
    aput-object v3, p4, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_61

    :cond_98
    iget-boolean p5, v0, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    if-eqz p5, :cond_9f

    invoke-static {p1, p2, p4, p3}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/j/f$a;[[[I[Lcom/applovin/exoplayer2/at;[Lcom/applovin/exoplayer2/j/d;)V

    :cond_9f
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected a(ILcom/applovin/exoplayer2/h/ad;[[ILcom/applovin/exoplayer2/j/c$c;)Lcom/applovin/exoplayer2/j/d$a;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    move-object v4, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    iget v5, p2, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-ge v1, v5, :cond_3b

    invoke-virtual {p2, v1}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v5

    aget-object v6, p3, v1

    const/4 v7, 0x0

    :goto_11
    iget v8, v5, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v7, v8, :cond_38

    aget v8, v6, v7

    iget-boolean v9, p4, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    invoke-static {v8, v9}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {v5, v7}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v8

    new-instance v9, Lcom/applovin/exoplayer2/j/c$b;

    aget v10, v6, v7

    invoke-direct {v9, v8, v10}, Lcom/applovin/exoplayer2/j/c$b;-><init>(Lcom/applovin/exoplayer2/v;I)V

    if-eqz v4, :cond_32

    invoke-virtual {v9, v4}, Lcom/applovin/exoplayer2/j/c$b;->a(Lcom/applovin/exoplayer2/j/c$b;)I

    move-result v8

    if-lez v8, :cond_35

    :cond_32
    move-object v2, v5

    move v3, v7

    move-object v4, v9

    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3b
    if-nez v2, :cond_3e

    goto :goto_48

    :cond_3e
    new-instance p1, Lcom/applovin/exoplayer2/j/d$a;

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput v3, p2, v0

    invoke-direct {p1, v2, p2}, Lcom/applovin/exoplayer2/j/d$a;-><init>(Lcom/applovin/exoplayer2/h/ac;[I)V

    :goto_48
    return-object p1
.end method

.method protected a(Lcom/applovin/exoplayer2/h/ad;[[IILcom/applovin/exoplayer2/j/c$c;Z)Lcom/applovin/exoplayer2/j/d$a;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-boolean v0, p4, Lcom/applovin/exoplayer2/j/i;->VA:Z

    if-nez v0, :cond_f

    iget-boolean v0, p4, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    if-nez v0, :cond_f

    if-eqz p5, :cond_f

    invoke-static {p1, p2, p3, p4}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ad;[[IILcom/applovin/exoplayer2/j/c$c;)Lcom/applovin/exoplayer2/j/d$a;

    move-result-object p3

    goto :goto_10

    :cond_f
    const/4 p3, 0x0

    :goto_10
    if-nez p3, :cond_16

    invoke-static {p1, p2, p4}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ad;[[ILcom/applovin/exoplayer2/j/c$c;)Lcom/applovin/exoplayer2/j/d$a;

    move-result-object p3

    :cond_16
    return-object p3
.end method

.method protected a(Lcom/applovin/exoplayer2/j/f$a;[[[I[ILcom/applovin/exoplayer2/j/c$c;)[Lcom/applovin/exoplayer2/j/d$a;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/j/f$a;->np()I

    move-result v9

    new-array v10, v9, [Lcom/applovin/exoplayer2/j/d$a;

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_10
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ge v12, v9, :cond_44

    invoke-virtual {v7, v12}, Lcom/applovin/exoplayer2/j/f$a;->eS(I)I

    move-result v1

    if-ne v14, v1, :cond_41

    if-nez v0, :cond_36

    invoke-virtual {v7, v12}, Lcom/applovin/exoplayer2/j/f$a;->eT(I)Lcom/applovin/exoplayer2/h/ad;

    move-result-object v1

    aget-object v2, p2, v12

    aget v3, p3, v12

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ad;[[IILcom/applovin/exoplayer2/j/c$c;Z)Lcom/applovin/exoplayer2/j/d$a;

    move-result-object v0

    aput-object v0, v10, v12

    aget-object v0, v10, v12

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :cond_36
    :goto_36
    invoke-virtual {v7, v12}, Lcom/applovin/exoplayer2/j/f$a;->eT(I)Lcom/applovin/exoplayer2/h/ad;

    move-result-object v1

    iget v1, v1, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-lez v1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v15, 0x0

    :goto_40
    or-int/2addr v13, v15

    :cond_41
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_44
    const/4 v12, -0x1

    const/16 v16, 0x0

    move-object/from16 v3, v16

    move-object v4, v3

    const/4 v2, -0x1

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v9, :cond_b7

    invoke-virtual {v7, v5}, Lcom/applovin/exoplayer2/j/f$a;->eS(I)I

    move-result v0

    if-ne v15, v0, :cond_a8

    iget-boolean v0, v8, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    if-nez v0, :cond_5e

    if-nez v13, :cond_5b

    goto :goto_5e

    :cond_5b
    const/16 v17, 0x0

    goto :goto_60

    :cond_5e
    :goto_5e
    const/16 v17, 0x1

    :goto_60
    invoke-virtual {v7, v5}, Lcom/applovin/exoplayer2/j/f$a;->eT(I)Lcom/applovin/exoplayer2/h/ad;

    move-result-object v1

    aget-object v18, p2, v5

    aget v19, p3, v5

    move-object/from16 v0, p0

    move v14, v2

    move-object/from16 v2, v18

    move-object v15, v3

    move/from16 v3, v19

    move-object/from16 v20, v4

    move-object/from16 v4, p4

    move/from16 v19, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/j/c;->b(Lcom/applovin/exoplayer2/h/ad;[[IILcom/applovin/exoplayer2/j/c$c;Z)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_ae

    if-eqz v15, :cond_8a

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/applovin/exoplayer2/j/c$a;

    invoke-virtual {v1, v15}, Lcom/applovin/exoplayer2/j/c$a;->a(Lcom/applovin/exoplayer2/j/c$a;)I

    move-result v1

    if-lez v1, :cond_ae

    :cond_8a
    if-eq v14, v12, :cond_8e

    aput-object v16, v10, v14

    :cond_8e
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/applovin/exoplayer2/j/d$a;

    aput-object v1, v10, v19

    iget-object v2, v1, Lcom/applovin/exoplayer2/j/d$a;->Ud:Lcom/applovin/exoplayer2/h/ac;

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/d$a;->Ue:[I

    aget v1, v1, v11

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v1

    iget-object v4, v1, Lcom/applovin/exoplayer2/v;->dq:Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/applovin/exoplayer2/j/c$a;

    move/from16 v2, v19

    goto :goto_b2

    :cond_a8
    move v14, v2

    move-object v15, v3

    move-object/from16 v20, v4

    move/from16 v19, v5

    :cond_ae
    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v20

    :goto_b2
    add-int/lit8 v5, v19, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_4c

    :cond_b7
    move-object/from16 v20, v4

    move-object/from16 v0, v16

    const/4 v1, -0x1

    :goto_bc
    if-ge v11, v9, :cond_10d

    invoke-virtual {v7, v11}, Lcom/applovin/exoplayer2/j/f$a;->eS(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_105

    const/4 v4, 0x2

    if-eq v2, v4, :cond_102

    const/4 v5, 0x3

    if-eq v2, v5, :cond_d8

    invoke-virtual {v7, v11}, Lcom/applovin/exoplayer2/j/f$a;->eT(I)Lcom/applovin/exoplayer2/h/ad;

    move-result-object v5

    aget-object v13, p2, v11

    invoke-virtual {v6, v2, v5, v13, v8}, Lcom/applovin/exoplayer2/j/c;->a(ILcom/applovin/exoplayer2/h/ad;[[ILcom/applovin/exoplayer2/j/c$c;)Lcom/applovin/exoplayer2/j/d$a;

    move-result-object v2

    aput-object v2, v10, v11

    goto :goto_102

    :cond_d8
    invoke-virtual {v7, v11}, Lcom/applovin/exoplayer2/j/f$a;->eT(I)Lcom/applovin/exoplayer2/h/ad;

    move-result-object v2

    aget-object v5, p2, v11

    move-object/from16 v13, v20

    invoke-virtual {v6, v2, v5, v8, v13}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ad;[[ILcom/applovin/exoplayer2/j/c$c;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_108

    if-eqz v0, :cond_f2

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/applovin/exoplayer2/j/c$f;

    invoke-virtual {v5, v0}, Lcom/applovin/exoplayer2/j/c$f;->a(Lcom/applovin/exoplayer2/j/c$f;)I

    move-result v5

    if-lez v5, :cond_108

    :cond_f2
    if-eq v1, v12, :cond_f6

    aput-object v16, v10, v1

    :cond_f6
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/applovin/exoplayer2/j/d$a;

    aput-object v0, v10, v11

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/applovin/exoplayer2/j/c$f;

    move v1, v11

    goto :goto_108

    :cond_102
    :goto_102
    move-object/from16 v13, v20

    goto :goto_108

    :cond_105
    move-object/from16 v13, v20

    const/4 v4, 0x2

    :cond_108
    :goto_108
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v13

    goto :goto_bc

    :cond_10d
    return-object v10
.end method

.method protected b(Lcom/applovin/exoplayer2/h/ad;[[IILcom/applovin/exoplayer2/j/c$c;Z)Landroid/util/Pair;
    .registers 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/h/ad;",
            "[[II",
            "Lcom/applovin/exoplayer2/j/c$c;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/applovin/exoplayer2/j/d$a;",
            "Lcom/applovin/exoplayer2/j/c$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v15, v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v14, -0x1

    :goto_b
    iget v7, v0, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-ge v5, v7, :cond_49

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v7

    aget-object v8, p2, v5

    const/4 v9, 0x0

    :goto_16
    iget v10, v7, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v9, v10, :cond_46

    aget v10, v8, v9

    iget-boolean v11, v1, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    invoke-static {v10, v11}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result v10

    if-eqz v10, :cond_43

    invoke-virtual {v7, v9}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v10

    new-instance v11, Lcom/applovin/exoplayer2/j/c$a;

    aget v12, v8, v9

    invoke-direct {v11, v10, v1, v12}, Lcom/applovin/exoplayer2/j/c$a;-><init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/j/c$c;I)V

    iget-boolean v10, v11, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    if-nez v10, :cond_38

    iget-boolean v10, v1, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    if-nez v10, :cond_38

    goto :goto_43

    :cond_38
    if-eqz v15, :cond_40

    invoke-virtual {v11, v15}, Lcom/applovin/exoplayer2/j/c$a;->a(Lcom/applovin/exoplayer2/j/c$a;)I

    move-result v10

    if-lez v10, :cond_43

    :cond_40
    move v6, v5

    move v14, v9

    move-object v15, v11

    :cond_43
    :goto_43
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_49
    if-ne v6, v4, :cond_4c

    return-object v3

    :cond_4c
    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v0

    iget-boolean v4, v1, Lcom/applovin/exoplayer2/j/i;->VA:Z

    const/4 v5, 0x1

    if-nez v4, :cond_73

    iget-boolean v4, v1, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    if-nez v4, :cond_73

    if-eqz p5, :cond_73

    aget-object v8, p2, v6

    iget v10, v1, Lcom/applovin/exoplayer2/j/i;->Vu:I

    iget-boolean v11, v1, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    iget-boolean v12, v1, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    iget-boolean v13, v1, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    move-object v7, v0

    move v9, v14

    invoke-static/range {v7 .. v13}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/h/ac;[IIIZZZ)[I

    move-result-object v1

    array-length v4, v1

    if-le v4, v5, :cond_73

    new-instance v3, Lcom/applovin/exoplayer2/j/d$a;

    invoke-direct {v3, v0, v1}, Lcom/applovin/exoplayer2/j/d$a;-><init>(Lcom/applovin/exoplayer2/h/ac;[I)V

    :cond_73
    if-nez v3, :cond_7e

    new-instance v3, Lcom/applovin/exoplayer2/j/d$a;

    new-array v1, v5, [I

    aput v14, v1, v2

    invoke-direct {v3, v0, v1}, Lcom/applovin/exoplayer2/j/d$a;-><init>(Lcom/applovin/exoplayer2/h/ac;[I)V

    :cond_7e
    invoke-static {v15}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/j/c$a;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public nh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.applovin.exoplayer2.j.c.AnonymousClass1 (com.applovin.exoplayer2.j.c$1)
.class synthetic Lcom/applovin/exoplayer2/j/c$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.j.c.a (com.applovin.exoplayer2.j.c$a)
.class public final Lcom/applovin/exoplayer2/j/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/exoplayer2/j/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final Ul:Z

.field private final Um:Lcom/applovin/exoplayer2/j/c$c;

.field private final Un:Z

.field private final Uo:I

.field private final Up:I

.field private final Uq:I

.field private final Ur:I

.field private final Us:I

.field private final Ut:Z

.field private final Uu:I

.field private final dL:I

.field private final dM:I

.field private final dq:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dv:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/j/c$c;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/j/c$a;->Um:Lcom/applovin/exoplayer2/j/c$c;

    iget-object v0, p1, Lcom/applovin/exoplayer2/v;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/c;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$a;->dq:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/c$a;->Un:Z

    const/4 p3, 0x0

    :goto_15
    iget-object v1, p2, Lcom/applovin/exoplayer2/j/i;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_32

    iget-object v1, p2, Lcom/applovin/exoplayer2/j/i;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_2f

    goto :goto_36

    :cond_2f
    add-int/lit8 p3, p3, 0x1

    goto :goto_15

    :cond_32
    const p3, 0x7fffffff

    const/4 v1, 0x0

    :goto_36
    iput p3, p0, Lcom/applovin/exoplayer2/j/c$a;->Up:I

    iput v1, p0, Lcom/applovin/exoplayer2/j/c$a;->Uo:I

    iget p3, p1, Lcom/applovin/exoplayer2/v;->ds:I

    iget v1, p2, Lcom/applovin/exoplayer2/j/i;->Vs:I

    and-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$a;->Uq:I

    iget p3, p1, Lcom/applovin/exoplayer2/v;->dr:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_4d

    const/4 p3, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p3, 0x0

    :goto_4e
    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/c$a;->Ut:Z

    iget p3, p1, Lcom/applovin/exoplayer2/v;->dL:I

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$a;->dL:I

    iget v3, p1, Lcom/applovin/exoplayer2/v;->dM:I

    iput v3, p0, Lcom/applovin/exoplayer2/j/c$a;->dM:I

    iget v3, p1, Lcom/applovin/exoplayer2/v;->dv:I

    iput v3, p0, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_63

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vu:I

    if-gt v3, v5, :cond_6a

    :cond_63
    if-eq p3, v4, :cond_6b

    iget v3, p2, Lcom/applovin/exoplayer2/j/i;->Vt:I

    if-gt p3, v3, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    :cond_6b
    :goto_6b
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    invoke-static {}, Lcom/applovin/exoplayer2/l/ai;->qa()[Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    :goto_72
    array-length v3, p3

    if-ge v1, v3, :cond_81

    aget-object v3, p3, v1

    invoke-static {p1, v3, v0}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_7e

    goto :goto_85

    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_81
    const v1, 0x7fffffff

    const/4 v3, 0x0

    :goto_85
    iput v1, p0, Lcom/applovin/exoplayer2/j/c$a;->Ur:I

    iput v3, p0, Lcom/applovin/exoplayer2/j/c$a;->Us:I

    :goto_89
    iget-object p3, p2, Lcom/applovin/exoplayer2/j/i;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v0, p3, :cond_a6

    iget-object p3, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    if-eqz p3, :cond_a3

    iget-object v1, p2, Lcom/applovin/exoplayer2/j/i;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a3

    move v2, v0

    goto :goto_a6

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    :cond_a6
    :goto_a6
    iput v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Uu:I

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/j/c$a;)I
    .registers 7

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$a;->Un:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    goto :goto_15

    :cond_d
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    :goto_15
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/n;->fP()Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Un:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Un:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Up:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Up:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Uo:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Uo:I

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Uq:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Uq:I

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Uu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Uu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/j/c$a;->Um:Lcom/applovin/exoplayer2/j/c$c;

    iget-boolean v4, v4, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    if-eqz v4, :cond_84

    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    goto :goto_88

    :cond_84
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->nj()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    :goto_88
    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Ut:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Ut:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Ur:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Ur:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Us:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Us:I

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->dL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->dL:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->dM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/j/c$a;->dq:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/exoplayer2/j/c$a;->dq:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_eb

    goto :goto_ef

    :cond_eb
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->nj()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    :goto_ef
    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/a/n;->fQ()I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/j/c$a;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/c$a;->a(Lcom/applovin/exoplayer2/j/c$a;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.j.c.b (com.applovin.exoplayer2.j.c$b)
.class public final Lcom/applovin/exoplayer2/j/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/exoplayer2/j/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final Un:Z

.field private final Uv:Z


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/v;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lcom/applovin/exoplayer2/v;->dr:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$b;->Uv:Z

    invoke-static {p2, v1}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$b;->Un:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/j/c$b;)I
    .registers 5

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/n;->fP()Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$b;->Un:Z

    iget-boolean v2, p1, Lcom/applovin/exoplayer2/j/c$b;->Un:Z

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$b;->Uv:Z

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/j/c$b;->Uv:Z

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/a/n;->fQ()I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/j/c$b;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/c$b;->a(Lcom/applovin/exoplayer2/j/c$b;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.j.c.C0049c (com.applovin.exoplayer2.j.c$c)
.class public final Lcom/applovin/exoplayer2/j/c$c;
.super Lcom/applovin/exoplayer2/j/i;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final Uw:Lcom/applovin/exoplayer2/j/c$c;

.field public static final Ux:Lcom/applovin/exoplayer2/j/c$c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/j/c$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final UA:Z

.field public final UB:Z

.field public final UC:Z

.field public final UD:Z

.field public final UE:Z

.field public final UF:Z

.field public final UG:Z

.field public final UH:Z

.field public final UI:Z

.field private final UJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final UK:Landroid/util/SparseBooleanArray;

.field public final Uy:I

.field public final Uz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/c$d;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->nk()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->Uw:Lcom/applovin/exoplayer2/j/c$c;

    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->Ux:Lcom/applovin/exoplayer2/j/c$c;

    sget-object v0, Lcom/applovin/exoplayer2/j/m;->a:Lcom/applovin/exoplayer2/j/m;

    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/j/c$d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i;-><init>(Lcom/applovin/exoplayer2/j/i$a;)V

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->a(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->b(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->c(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->d(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->e(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->f(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->g(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->h(Lcom/applovin/exoplayer2/j/c$d;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->i(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->j(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->k(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->l(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->m(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$c;->UK:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/j/c$d;Lcom/applovin/exoplayer2/j/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$c;-><init>(Lcom/applovin/exoplayer2/j/c$d;)V

    return-void
.end method

.method private static synthetic A(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/j/c$d;-><init>(Landroid/os/Bundle;Lcom/applovin/exoplayer2/j/c$1;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->nk()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_30

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2f

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v4, v3}, Lcom/applovin/exoplayer2/j/c$c;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2f
    :goto_2f
    return v2

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/h/ad;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_3a
    return v2

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic c(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c$c;->A(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic cM(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c$c;->t(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/c$c;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/j/c$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->nk()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/applovin/exoplayer2/h/ad;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_12

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public final b(ILcom/applovin/exoplayer2/h/ad;)Lcom/applovin/exoplayer2/j/c$e;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_11

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/j/c$e;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method public final eQ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_71

    const-class v2, Lcom/applovin/exoplayer2/j/c$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_71

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/j/c$c;

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/j/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    if-ne v2, v3, :cond_6f

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    if-ne v2, v3, :cond_6f

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UK:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UK:Landroid/util/SparseBooleanArray;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/j/c$c;->a(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/j/c$c;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    return v0

    :cond_71
    :goto_71
    return v1
.end method

.method public hashCode()I
    .registers 4

    invoke-super {p0}, Lcom/applovin/exoplayer2/j/i;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.applovin.exoplayer2.j.m (com.applovin.exoplayer2.j.m)
.class public final synthetic Lcom/applovin/exoplayer2/j/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/j/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/m;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/m;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/m;->a:Lcom/applovin/exoplayer2/j/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$c;->c(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.j.c.d (com.applovin.exoplayer2.j.c$d)
.class public final Lcom/applovin/exoplayer2/j/c$d;
.super Lcom/applovin/exoplayer2/j/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private UA:Z

.field private UB:Z

.field private UC:Z

.field private UD:Z

.field private UE:Z

.field private UF:Z

.field private UG:Z

.field private UH:Z

.field private UI:Z

.field private final UJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final UK:Landroid/util/SparseBooleanArray;

.field private Uy:I

.field private Uz:Z


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/i$a;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$d;->UJ:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$d;->UK:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/c$d;->nl()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UJ:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UK:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/c$d;->nl()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Lcom/applovin/exoplayer2/j/c$c;->Uw:Lcom/applovin/exoplayer2/j/c$c;

    const/16 v1, 0x3e8

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->ac(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3e9

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->ad(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ea

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->ae(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3eb

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->af(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ec

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->ag(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ed

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->ah(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ee

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->ai(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ef

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->eR(I)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3f0

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->aj(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3f1

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->ak(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3f2

    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/j/c$d;->al(Z)Lcom/applovin/exoplayer2/j/c$d;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$d;->UJ:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$d;->B(Landroid/os/Bundle;)V

    const/16 v0, 0x3f6

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$d;->f([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UK:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/applovin/exoplayer2/j/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$d;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private B(Landroid/os/Bundle;)V
    .registers 8

    const/16 v0, 0x3f3

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/h/ad;->br:Lcom/applovin/exoplayer2/g$a;

    const/16 v2, 0x3f4

    invoke-static {v2}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/applovin/exoplayer2/l/c;->a(Lcom/applovin/exoplayer2/g$a;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/applovin/exoplayer2/j/c$e;->br:Lcom/applovin/exoplayer2/g$a;

    const/16 v3, 0x3f5

    invoke-static {v3}, Lcom/applovin/exoplayer2/j/c$c;->cM(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v2, p1, v3}, Lcom/applovin/exoplayer2/l/c;->a(Lcom/applovin/exoplayer2/g$a;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz v0, :cond_55

    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3d

    goto :goto_55

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    array-length v3, v0

    if-ge v2, v3, :cond_55

    aget v3, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/h/ad;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/exoplayer2/j/c$e;

    invoke-virtual {p0, v3, v4, v5}, Lcom/applovin/exoplayer2/j/c$d;->a(ILcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/c$e;)Lcom/applovin/exoplayer2/j/c$d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_55
    :goto_55
    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->Uz:Z

    return p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UA:Z

    return p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UB:Z

    return p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UC:Z

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UD:Z

    return p0
.end method

.method private f([I)Landroid/util/SparseBooleanArray;
    .registers 7
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_8

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    return-object p1

    :cond_8
    new-instance v0, Landroid/util/SparseBooleanArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1b

    aget v3, p1, v2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1b
    return-object v0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UE:Z

    return p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UF:Z

    return p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/j/c$d;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/j/c$d;->Uy:I

    return p0
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UG:Z

    return p0
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UH:Z

    return p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/j/c$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UI:Z

    return p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UJ:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic m(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/j/c$d;->UK:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private nl()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->Uz:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->UA:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->UB:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->UC:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->UD:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->UE:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->UF:Z

    iput v1, p0, Lcom/applovin/exoplayer2/j/c$d;->Uy:I

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->UG:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->UH:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->UI:Z

    return-void
.end method


# virtual methods
.method public final a(ILcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/c$e;)Lcom/applovin/exoplayer2/j/c$d;
    .registers 6
    .param p3    # Lcom/applovin/exoplayer2/j/c$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$d;->UJ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/j/c$d;->UJ:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return-object p0

    :cond_25
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/j/i$a;->b(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/i$a;

    return-object p0
.end method

.method public ac(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->Uz:Z

    return-object p0
.end method

.method public ad(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UA:Z

    return-object p0
.end method

.method public ae(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UB:Z

    return-object p0
.end method

.method public af(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UC:Z

    return-object p0
.end method

.method public ag(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UD:Z

    return-object p0
.end method

.method public ah(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UE:Z

    return-object p0
.end method

.method public ai(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UF:Z

    return-object p0
.end method

.method public aj(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UG:Z

    return-object p0
.end method

.method public ak(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UH:Z

    return-object p0
.end method

.method public al(Z)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->UI:Z

    return-object p0
.end method

.method public synthetic b(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/i$a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/j/c$d;->a(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/c$d;

    move-result-object p1

    return-object p1
.end method

.method public c(IIZ)Lcom/applovin/exoplayer2/j/c$d;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/j/i$a;->d(IIZ)Lcom/applovin/exoplayer2/j/i$a;

    return-object p0
.end method

.method public synthetic d(IIZ)Lcom/applovin/exoplayer2/j/i$a;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/j/c$d;->c(IIZ)Lcom/applovin/exoplayer2/j/c$d;

    move-result-object p1

    return-object p1
.end method

.method public eR(I)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/j/c$d;->Uy:I

    return-object p0
.end method

.method public f(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/c$d;
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;->g(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/i$a;

    return-object p0
.end method

.method public synthetic g(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/i$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/c$d;->f(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/c$d;

    move-result-object p1

    return-object p1
.end method

.method public nk()Lcom/applovin/exoplayer2/j/c$c;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/j/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/j/c$c;-><init>(Lcom/applovin/exoplayer2/j/c$d;Lcom/applovin/exoplayer2/j/c$1;)V

    return-object v0
.end method

.method public synthetic nm()Lcom/applovin/exoplayer2/j/i;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/j/c$d;->nk()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.j.c.e (com.applovin.exoplayer2.j.c$e)
.class public final Lcom/applovin/exoplayer2/j/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final UL:I

.field public final Ue:[I

.field public final bs:I

.field public final fR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/j/n;->a:Lcom/applovin/exoplayer2/j/n;

    sput-object v0, Lcom/applovin/exoplayer2/j/c$e;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public constructor <init>(I[II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    array-length p2, p2

    iput p2, p0, Lcom/applovin/exoplayer2/j/c$e;->fR:I

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$e;->bs:I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method private static synthetic C(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$e;
    .registers 7

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/c$e;->t(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/applovin/exoplayer2/j/c$e;->t(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/applovin/exoplayer2/j/c$e;->t(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz v1, :cond_21

    if-ltz p0, :cond_21

    const/4 v0, 0x1

    :cond_21
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-static {v4}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/applovin/exoplayer2/j/c$e;

    invoke-direct {v0, v1, v4, p0}, Lcom/applovin/exoplayer2/j/c$e;-><init>(I[II)V

    return-object v0
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$e;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c$e;->C(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$e;

    move-result-object p0

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    const-class v2, Lcom/applovin/exoplayer2/j/c$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2b

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/j/c$e;

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$e;->bs:I

    iget p1, p1, Lcom/applovin/exoplayer2/j/c$e;->bs:I

    if-ne v2, p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/j/c$e;->UL:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/j/c$e;->Ue:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/exoplayer2/j/c$e;->bs:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.applovin.exoplayer2.j.n (com.applovin.exoplayer2.j.n)
.class public final synthetic Lcom/applovin/exoplayer2/j/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/j/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/n;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/n;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/n;->a:Lcom/applovin/exoplayer2/j/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$e;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$e;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.j.c.f (com.applovin.exoplayer2.j.c$f)
.class public final Lcom/applovin/exoplayer2/j/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/exoplayer2/j/c$f;",
        ">;"
    }
.end annotation


# instance fields
.field private final UM:Z

.field private final UN:I

.field private final UO:Z

.field public final Ul:Z

.field private final Un:Z

.field private final Uo:I

.field private final Up:I

.field private final Uq:I

.field private final Uv:Z


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/j/c$c;ILjava/lang/String;)V
    .registers 11
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/c$f;->Un:Z

    iget p3, p1, Lcom/applovin/exoplayer2/v;->dr:I

    iget v1, p2, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$f;->Uv:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_20

    const/4 p3, 0x1

    goto :goto_21

    :cond_20
    const/4 p3, 0x0

    :goto_21
    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/c$f;->UM:Z

    const p3, 0x7fffffff

    iget-object v1, p2, Lcom/applovin/exoplayer2/j/i;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, ""

    invoke-static {v1}, Lcom/applovin/exoplayer2/common/a/s;->u(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    goto :goto_37

    :cond_35
    iget-object v1, p2, Lcom/applovin/exoplayer2/j/i;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    :goto_37
    const/4 v3, 0x0

    :goto_38
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, p2, Lcom/applovin/exoplayer2/j/i;->Vy:Z

    invoke-static {p1, v4, v5}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Z)I

    move-result v4

    if-lez v4, :cond_4e

    move p3, v3

    goto :goto_52

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_51
    const/4 v4, 0x0

    :goto_52
    iput p3, p0, Lcom/applovin/exoplayer2/j/c$f;->Up:I

    iput v4, p0, Lcom/applovin/exoplayer2/j/c$f;->Uo:I

    iget p3, p1, Lcom/applovin/exoplayer2/v;->ds:I

    iget v1, p2, Lcom/applovin/exoplayer2/j/i;->Vx:I

    and-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$f;->Uq:I

    iget v1, p1, Lcom/applovin/exoplayer2/v;->ds:I

    and-int/lit16 v1, v1, 0x440

    if-eqz v1, :cond_69

    const/4 v1, 0x1

    goto :goto_6a

    :cond_69
    const/4 v1, 0x0

    :goto_6a
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$f;->UO:Z

    invoke-static {p4}, Lcom/applovin/exoplayer2/j/c;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_74

    const/4 v1, 0x1

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    :goto_75
    invoke-static {p1, p4, v1}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/j/c$f;->UN:I

    if-gtz v4, :cond_91

    iget-object p2, p2, Lcom/applovin/exoplayer2/j/i;->Vw:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_87

    if-gtz p3, :cond_91

    :cond_87
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/j/c$f;->Uv:Z

    if-nez p2, :cond_91

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/j/c$f;->UM:Z

    if-eqz p2, :cond_92

    if-lez p1, :cond_92

    :cond_91
    const/4 v0, 0x1

    :cond_92
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$f;->Ul:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/j/c$f;)I
    .registers 6

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/n;->fP()Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$f;->Un:Z

    iget-boolean v2, p1, Lcom/applovin/exoplayer2/j/c$f;->Un:Z

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/j/c$f;->Up:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/applovin/exoplayer2/j/c$f;->Up:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/j/c$f;->Uo:I

    iget v2, p1, Lcom/applovin/exoplayer2/j/c$f;->Uo:I

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/j/c$f;->Uq:I

    iget v2, p1, Lcom/applovin/exoplayer2/j/c$f;->Uq:I

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$f;->Uv:Z

    iget-boolean v2, p1, Lcom/applovin/exoplayer2/j/c$f;->Uv:Z

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$f;->UM:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/applovin/exoplayer2/j/c$f;->UM:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/applovin/exoplayer2/j/c$f;->Uo:I

    if-nez v3, :cond_51

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v3

    goto :goto_59

    :cond_51
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v3

    :goto_59
    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/j/c$f;->UN:I

    iget v2, p1, Lcom/applovin/exoplayer2/j/c$f;->UN:I

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/j/c$f;->Uq:I

    if-nez v1, :cond_71

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$f;->UO:Z

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/j/c$f;->UO:Z

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/common/a/n;->c(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v0

    :cond_71
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/n;->fQ()I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/j/c$f;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/c$f;->a(Lcom/applovin/exoplayer2/j/c$f;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.j.c.g (com.applovin.exoplayer2.j.c$g)
.class public final Lcom/applovin/exoplayer2/j/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/exoplayer2/j/c$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final UP:Z

.field private final UQ:Z

.field private final UR:I

.field private final Um:Lcom/applovin/exoplayer2/j/c$c;

.field private final Un:Z

.field private final Uu:I

.field private final dv:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/j/c$c;IZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/j/c$g;->Um:Lcom/applovin/exoplayer2/j/c$c;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p4, :cond_33

    iget v4, p1, Lcom/applovin/exoplayer2/v;->dE:I

    if-eq v4, v3, :cond_14

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vf:I

    if-gt v4, v5, :cond_33

    :cond_14
    iget v4, p1, Lcom/applovin/exoplayer2/v;->height:I

    if-eq v4, v3, :cond_1c

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vg:I

    if-gt v4, v5, :cond_33

    :cond_1c
    iget v4, p1, Lcom/applovin/exoplayer2/v;->dF:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_29

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vh:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_33

    :cond_29
    iget v4, p1, Lcom/applovin/exoplayer2/v;->dv:I

    if-eq v4, v3, :cond_31

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vi:I

    if-gt v4, v5, :cond_33

    :cond_31
    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    iput-boolean v4, p0, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    if-eqz p4, :cond_5e

    iget p4, p1, Lcom/applovin/exoplayer2/v;->dE:I

    if-eq p4, v3, :cond_40

    iget v4, p2, Lcom/applovin/exoplayer2/j/i;->Vj:I

    if-lt p4, v4, :cond_5e

    :cond_40
    iget p4, p1, Lcom/applovin/exoplayer2/v;->height:I

    if-eq p4, v3, :cond_48

    iget v4, p2, Lcom/applovin/exoplayer2/j/i;->Vk:I

    if-lt p4, v4, :cond_5e

    :cond_48
    iget p4, p1, Lcom/applovin/exoplayer2/v;->dF:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_55

    iget v0, p2, Lcom/applovin/exoplayer2/j/i;->Vl:I

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_5e

    :cond_55
    iget p4, p1, Lcom/applovin/exoplayer2/v;->dv:I

    if-eq p4, v3, :cond_5f

    iget v0, p2, Lcom/applovin/exoplayer2/j/i;->Vm:I

    if-lt p4, v0, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :cond_5f
    :goto_5f
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$g;->UQ:Z

    invoke-static {p3, v2}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/c$g;->Un:Z

    iget p3, p1, Lcom/applovin/exoplayer2/v;->dv:I

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v;->bS()I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$g;->UR:I

    const p3, 0x7fffffff

    :goto_74
    iget-object p4, p2, Lcom/applovin/exoplayer2/j/i;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {p4}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    if-ge v2, p4, :cond_91

    iget-object p4, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    if-eqz p4, :cond_8e

    iget-object v0, p2, Lcom/applovin/exoplayer2/j/i;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8e

    move p3, v2

    goto :goto_91

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_91
    :goto_91
    iput p3, p0, Lcom/applovin/exoplayer2/j/c$g;->Uu:I

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/j/c$g;)I
    .registers 7

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$g;->Un:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    goto :goto_15

    :cond_d
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    :goto_15
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/n;->fP()Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$g;->Un:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$g;->Un:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$g;->UQ:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$g;->UQ:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$g;->Uu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$g;->Uu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/j/c$g;->Um:Lcom/applovin/exoplayer2/j/c$c;

    iget-boolean v4, v4, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    if-eqz v4, :cond_64

    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    goto :goto_68

    :cond_64
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->nj()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    :goto_68
    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$g;->UR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$g;->UR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/a/n;->fQ()I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/j/c$g;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/c$g;->a(Lcom/applovin/exoplayer2/j/c$g;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.j.o (com.applovin.exoplayer2.j.o)
.class public final synthetic Lcom/applovin/exoplayer2/j/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/j/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/o;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/o;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/o;->a:Lcom/applovin/exoplayer2/j/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/j/c;->c(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.j.p (com.applovin.exoplayer2.j.p)
.class public final synthetic Lcom/applovin/exoplayer2/j/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/j/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/p;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/p;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/p;->a:Lcom/applovin/exoplayer2/j/p;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/j/c;->d(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
