###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.b (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.b)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;
    }
.end annotation


# static fields
.field public static final e:[I


# instance fields
.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e$a;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->e:[I

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e$a;)V
    .registers 3

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e$a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    if-ne p1, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    if-ne p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_d

    :cond_b
    sub-int v0, p0, p1

    :cond_d
    :goto_d
    return v0
.end method

.method public static a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;IIZ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    iget v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v2, v3, :cond_17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_a6

    if-ne p2, v2, :cond_20

    goto/16 :goto_a6

    :cond_20
    const/4 v3, 0x0

    const v4, 0x7fffffff

    :goto_24
    iget v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    const/4 v6, 0x1

    if-ge v3, v5, :cond_80

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v5, v5, v3

    iget v7, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    if-lez v7, :cond_7d

    iget v8, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    if-lez v8, :cond_7d

    if-eqz p3, :cond_45

    if-le v7, v8, :cond_3b

    const/4 v9, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v9, 0x0

    :goto_3c
    if-le p1, p2, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v6, 0x0

    :goto_40
    if-eq v9, v6, :cond_45

    move v6, p1

    move v9, p2

    goto :goto_47

    :cond_45
    move v9, p1

    move v6, p2

    :goto_47
    mul-int v10, v7, v6

    mul-int v11, v8, v9

    if-lt v10, v11, :cond_57

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v11, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(II)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_61

    :cond_57
    new-instance v7, Landroid/graphics/Point;

    invoke-static {v10, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(II)I

    move-result v8

    invoke-direct {v7, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    move-object v6, v7

    :goto_61
    iget v7, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    iget v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    mul-int v8, v7, v5

    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const v10, 0x3f7ae148    # 0.98f

    mul-float v9, v9, v10

    float-to-int v9, v9

    if-lt v7, v9, :cond_7d

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float v6, v6, v10

    float-to-int v6, v6

    if-lt v5, v6, :cond_7d

    if-ge v8, v4, :cond_7d

    move v4, v8

    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_80
    if-eq v4, v2, :cond_a6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_87
    if-ltz p1, :cond_a6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object p2, p3, p2

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_a0

    if-le p2, v4, :cond_a3

    :cond_a0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a3
    add-int/lit8 p1, p1, -0x1

    goto :goto_87

    :cond_a6
    :goto_a6
    return-object v0
.end method

.method public static a(IZ)Z
    .registers 3

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_c

    if-eqz p1, :cond_a

    const/4 p1, 0x2

    if-ne p0, p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;ILcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_20

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->r:I

    iget v1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->a:I

    if-ne p1, v1, :cond_20

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->s:I

    iget v1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->b:I

    if-ne p1, v1, :cond_20

    iget-object p1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public static a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->y:Ljava/lang/String;

    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_13

    :cond_a
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    :goto_13
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/String;IIIII)Z
    .registers 9

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_28

    and-int/2addr p2, p3

    if-eqz p2, :cond_28

    if-eqz p1, :cond_14

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    :cond_14
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1b

    if-gt p1, p4, :cond_28

    :cond_1b
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    if-eq p1, p2, :cond_21

    if-gt p1, p5, :cond_28

    :cond_21
    iget p0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b:I

    if-eq p0, p2, :cond_27

    if-gt p0, p6, :cond_28

    :cond_27
    const/4 v0, 0x1

    :cond_28
    return v0
.end method
