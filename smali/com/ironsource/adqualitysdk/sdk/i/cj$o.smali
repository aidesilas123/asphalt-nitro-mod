###### Class com.ironsource.adqualitysdk.sdk.i.cj.o (com.ironsource.adqualitysdk.sdk.i.cj$o)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cj$o;
.super Lcom/ironsource/adqualitysdk/sdk/i/je;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cj;->i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[I = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private synthetic e:Ljava/util/List;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/cj;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->a:[I

    const-wide v0, 0x56c7da2599d47a2fL    # 1.1203551531914649E110

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->b:J

    return-void

    nop

    :array_12
    .array-data 4
        -0x584391c9    # -5.2299977E-15f
        -0x71f5917f
        0x1dc1bc9d
        -0x6624d4f5
        -0x785f9fe
        -0x35f06107
        0xd9bef59
        0x323a52d4
        0x7d855966
        -0x599a09ea
        0x4c285948    # 4.4131616E7f
        -0x61d35261
        0x3bb50214
        0x5dad7cb8
        0x1ae68179
        -0x52a06367
        0x5ddd7304
        -0x2d1a0b43
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/je;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->g(Ljava/lang/String;ZLjava/util/List;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj$o;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x3d

    if-nez p1, :cond_1d

    const/16 p1, 0x31

    goto :goto_1f

    :cond_1d
    const/16 p1, 0x3d

    :goto_1f
    if-eq p1, p2, :cond_27

    const/4 p1, 0x4

    :try_start_22
    div-int/lit8 p1, p1, 0x0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception p1

    throw p1

    :cond_27
    return-void
.end method

.method private static b([II)Ljava/lang/String;
    .registers 14

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_4
    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->a:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    :goto_16
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    array-length v7, p0

    if-ge v6, v7, :cond_bc

    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    const/4 v6, 0x0

    :goto_4d
    if-ge v6, v8, :cond_6a

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ(I)I

    move-result v10

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_6a
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    goto/16 :goto_16

    :cond_bc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_c3

    return-object p0

    :catchall_c3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/cj$o;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->g(Ljava/lang/String;ZLjava/util/List;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    if-eqz p0, :cond_25

    const/16 p0, 0x1f

    :try_start_21
    div-int/2addr p0, v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception p0

    throw p0

    :cond_25
    return-void
.end method

.method private d(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->a(Ljava/lang/String;Ljava/util/List;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static e(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->b:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private f(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->a(Ljava/lang/String;Ljava/util/List;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/2addr p1, v1

    return-void
.end method

.method private g(Ljava/lang/String;ZLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    const/4 v4, 0x1

    rsub-int/lit8 v3, v3, 0x1

    const-string v5, "\u3bb0\uee34\ufbd1\u2ad4\u3bf1\u9478\u0ffb\u4430\ud37a\u8cb6\u26bf\u7de4\uea84\ua5fa\u3e61\u6ab4\u81e7\uda2e\u5520\u0279\u9925\uf305"

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2, v2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->K(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;ZZLjava/util/List;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    if-eq p1, v4, :cond_38

    return-void

    :cond_38
    const/16 p1, 0x32

    :try_start_3a
    div-int/2addr p1, v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception p1

    throw p1
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x53

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_13

    :cond_11
    const/16 v0, 0x53

    :goto_13
    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    const/16 v1, 0x9

    const/4 v3, 0x0

    :try_start_1e
    div-int/2addr v1, v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_26

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v3, 0x1

    :goto_23
    if-eq v3, v2, :cond_4d

    goto :goto_38

    :catchall_26
    move-exception p1

    throw p1

    :cond_28
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_33

    const/4 v0, 0x7

    goto :goto_35

    :cond_33
    const/16 v0, 0xc

    :goto_35
    if-eq v0, v1, :cond_38

    goto :goto_4d

    :cond_38
    :goto_38
    const/16 v0, 0x30

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    rsub-int/lit8 v0, v0, 0x31

    const-string v1, "\uc75d\u9cb9\u56f8\uc39e\uc732\ue6f8\ua2e7\uad70\u2f95\ufe3b\u8b94\u94be\u1651\ud767\u936d\u83e9\u7d0c\ua8bb\uf81e\ueb3a\u65c9"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->f(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_4d
    :goto_4d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5a

    return-void

    :cond_5a
    const/4 p1, 0x0

    :try_start_5b
    throw p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p1

    throw p1
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    const/4 v0, 0x1

    :goto_16
    if-eq v0, v1, :cond_41

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "\u428d\u67d0\u558a\u33a8\u42e2\u1d91\ua195\u5d46\uaa45\u0552\u88e6\u6488\u9381\u2c0e\u9018\u73c8\uf8ca\u53c7\ufb6a\u1b06\ue004\u7aaa\uc2a0"

    cmp-long v5, v0, v2

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d(Ljava/lang/String;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 p1, p1, 0x2

    :cond_41
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    :cond_1c
    if-eqz v1, :cond_1f

    goto :goto_45

    :cond_1f
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    const/16 v1, 0x30

    const-string v3, ""

    invoke-static {v3, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d(Ljava/lang/String;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 p1, p1, 0x2

    :goto_45
    return-void

    :cond_46
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    const/4 p1, 0x0

    :try_start_4c
    throw p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    throw p1

    nop

    :array_50
    .array-data 4
        0x1ee11ce1
        0x3843f40a
        -0x4b6c7415
        -0x546dfc07
        -0x27b97cd0
        0x74c63c9d
        0x3f26039f
        -0xac67430
    .end array-data
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eq v0, v1, :cond_f

    goto :goto_33

    :cond_f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x11

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_33
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x25

    if-eqz p1, :cond_44

    const/16 p1, 0x25

    goto :goto_46

    :cond_44
    const/16 p1, 0x50

    :goto_46
    if-eq p1, v0, :cond_49

    return-void

    :cond_49
    const/4 p1, 0x0

    :try_start_4a
    throw p1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p1

    throw p1

    nop

    :array_4e
    .array-data 4
        0x1ee11ce1
        0x3843f40a
        -0x4b6c7415
        -0x546dfc07
        -0x7084deab
        0x2602942d
        -0x7c229599
        -0x434f31bf
        0x710bf8d3
        0x49e1845
    .end array-data
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    const/16 v1, 0x38

    if-eqz v0, :cond_17

    const/16 v0, 0x38

    goto :goto_19

    :cond_17
    const/16 v0, 0x5e

    :goto_19
    if-eq v0, v1, :cond_1c

    goto :goto_40

    :cond_1c
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1b

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->f(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 p1, p1, 0x2

    :goto_40
    return-void

    nop

    :array_42
    .array-data 4
        0x1ee11ce1
        0x3843f40a
        -0x4b6c7415
        -0x546dfc07
        0x32fbd9d2
        -0x416d8d54
        0x70e16395
        0xb737a28
        -0xc49653
        0x176124ea
        0xa1d2e0e
        -0x437fabda
        0x4589a681
        0x14968786
    .end array-data
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x11

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    goto :goto_12

    :cond_10
    const/16 v0, 0x11

    :goto_12
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    const/16 v1, 0x53

    :try_start_1e
    div-int/2addr v1, v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_27

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    const/4 v0, 0x1

    :goto_24
    if-eqz v0, :cond_31

    goto :goto_4d

    :catchall_27
    move-exception p1

    throw p1

    :cond_29
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_31
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sub-int/2addr v2, v0

    const-string v0, "\u953a\uf2ac\ud43b\ue753\u9555\u88ed\u2024\u89bd\u7df2\u902e\u0957\ub073\u4436\ub972\u11be\ua722\u2f6f\uc6bd\u7add\ucff7\u37ae"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d(Ljava/lang/String;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 8

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->x(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    const/16 v1, 0x3b

    if-eqz v0, :cond_d

    const/16 v0, 0x3b

    goto :goto_f

    :cond_d
    const/16 v0, 0x50

    :goto_f
    if-eq v0, v1, :cond_12

    goto :goto_45

    :cond_12
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string v1, "\uc07d\u7cc4\u4bec\ud51c\uc012\u0685\ubff3\ubbf2\u28b5\u1e46\u9680\u823c\u1171\u371a\u8e69\u956d\u7a26\u48d7\ue50e\ufdb8\u62e9"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    if-eqz v0, :cond_2c

    const-wide/16 v4, 0x1

    goto :goto_2e

    :cond_2c
    const-wide/16 v4, 0x0

    :goto_2e
    cmp-long v0, v2, v4

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d(Ljava/lang/String;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 p1, p1, 0x2

    :goto_45
    return-void
.end method

.method public final ﻛ(Landroid/app/Activity;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->b([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d(Ljava/lang/String;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :array_30
    .array-data 4
        0x7b0b6d86
        -0x65f837fd
        0x32e32599
        0x71c53549
        0x4fe82d14
        -0x3c962fd5
        -0x4063d173
        -0x1c818481
        -0x35fd61ba    # -2140049.5f
        0x25121147
        0x710bf8d3
        0x49e1845
    .end array-data
.end method

.method public final ﾒ(Landroid/app/Activity;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x1

    const-string v1, "\u7905\u33ba\u6450\ueb6a\u796a\u49fb\u904f\u8597\u91c9\u5103\ub92f\ubc57\ua808\u786f\ua1e8\uab0a\uc355\u078d\ucaad\uc3ed\udb9a\u2ed7\uf37b\ufa70\uf2db\u360e\ue42f\u113d\u0d09"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d(Ljava/lang/String;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->d:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$o;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x62

    if-eqz p1, :cond_30

    const/16 p1, 0x35

    goto :goto_32

    :cond_30
    const/16 p1, 0x62

    :goto_32
    if-ne p1, v0, :cond_35

    return-void

    :cond_35
    const/4 p1, 0x0

    :try_start_36
    throw p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    throw p1
.end method
