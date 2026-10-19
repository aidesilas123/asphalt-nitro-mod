###### Class com.ironsource.adqualitysdk.sdk.i.ax.f.a (com.ironsource.adqualitysdk.sdk.i.ax$f$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax$f;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:[C = null

.field private static e:J = 0x0L

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private synthetic h:Ljava/lang/String;

.field private synthetic i:Ljava/lang/String;

.field private synthetic j:Lcom/ironsource/adqualitysdk/sdk/i/gd;

.field private synthetic k:Lcom/ironsource/adqualitysdk/sdk/i/ax$f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->d:[C

    const-wide v0, 0x728b159e95d13363L    # 5.779184340198445E243

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->e:J

    return-void

    nop

    :array_12
    .array-data 2
        -0x67a1s
        -0x54f0s
        -0x14cs
        0x25bs
        0x55f5s
        -0x6770s
        -0x53c6s
        -0x3as
        0x376s
        0x562as
        -0x665ds
        -0x52cds
        -0xf27s
        0x47cs
        0x5713s
        -0x655ds
        -0x7aefs
        -0x49abs
        -0x1c09s
        0x1f05s
        0x48bds
        -0x7a2as
        -0x4e9as
        -0x1d7cs
        0x1e3as
        0x4b4as
        -0x7b18s
        -0x4f82s
        -0x1224s
        0x193cs
        0x4a5ds
        -0x7805s
        -0x4cfas
        -0x1352s
        0x19cds
        0x5575s
        -0x7975s
        -0x4dcbs
        -0x1006s
        0x45s
        0x3311s
        0x66b4s
        -0x65bas
        -0x3202s
        0xcfs
        0x3431s
        0x67c7s
        -0x6483s
        -0x31e6s
        0x1aas
        0x3528s
        0x68cas
        -0x63a0s
        -0x30b6s
        0x2aes
        0x365fs
        0x69fds
        -0x6368s
        -0x2fc4s
        0x3dfs
        0x376bs
        0x6aeds
        -0x6269s
        -0x2e98s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$f;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/ax$f;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/gd;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->d:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->e:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ()V
    .registers 12

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    rsub-int/lit8 v0, v5, 0x11

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const v5, 0x981c

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v0, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->b(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x17

    invoke-static {v4, v4}, Landroid/view/View;->resolveSize(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x10

    const v7, 0x8557

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v8

    cmp-long v10, v8, v2

    add-int/2addr v10, v7

    int-to-char v7, v10

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->b(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_55
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/ax$f;

    iget-object v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f;->f:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v6, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f;->d:Landroid/content/Context;

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/gd;

    iget-object v10, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f;->e:Lcom/ironsource/adqualitysdk/sdk/i/il;

    invoke-static/range {v5 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->Z(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/gd;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_80

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->f:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x24

    if-nez v0, :cond_77

    const/16 v0, 0x3d

    goto :goto_79

    :cond_77
    const/16 v0, 0x24

    :goto_79
    if-ne v0, v1, :cond_7c

    return-void

    :cond_7c
    const/4 v0, 0x0

    :try_start_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v0

    throw v0

    :catchall_80
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/ax$f;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f;->f:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->h:Ljava/lang/String;

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/at$b;

    invoke-direct {v6, v0, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/at$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$d;)V

    invoke-static {v6}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/ax$f;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f;->f:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->F(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->i:Ljava/lang/String;

    invoke-static {v7}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾇ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x10

    invoke-static {v4, v4, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    const v6, 0x981d

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v8

    cmp-long v10, v8, v2

    sub-int/2addr v6, v10

    int-to-char v2, v6

    invoke-static {v1, v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->b(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-static {v0, v2, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->b(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$f$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    return-void
.end method
