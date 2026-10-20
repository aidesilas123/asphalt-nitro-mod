###### Class com.json.adqualitysdk.sdk.i.ed (com.ironsource.adqualitysdk.sdk.i.ed)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ed;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# static fields
.field private static e:[I = null

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

.field private i:Lcom/ironsource/adqualitysdk/sdk/i/dx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->e:[I

    return-void

    :array_a
    .array-data 4
        0x2523a4fa
        0x1bc359c7
        0xb1f248a
        0x46f3b2d
        -0x2a83cef1
        -0x6dcf5e5
        0x3b35f6eb
        -0x444633af
        -0x2904e5ae
        -0x37088e74
        -0x37120a35
        -0x72e306d1
        0x3715699a
        0x42c90f6a
        -0x7b258671
        0x51845735
        0x6318440a
        0x1ce3b232
    .end array-data
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/dx;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    return-void
.end method

.method private static c([II)Ljava/lang/String;
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

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ed;->e:[I

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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/16 v0, 0x18

    if-ne p0, p1, :cond_7

    const/16 v1, 0x18

    goto :goto_9

    :cond_7
    const/16 v1, 0x5c

    :goto_9
    const/4 v2, 0x1

    if-eq v1, v0, :cond_60

    const/4 v0, 0x0

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_1a

    goto :goto_5f

    :cond_1a
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ed;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v1, :cond_29

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ed;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_2d

    :cond_29
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ed;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v1, :cond_2e

    :goto_2d
    return v0

    :cond_2e
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v1, :cond_50

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ed;->g:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ed;->f:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ed;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-nez v2, :cond_49

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_49
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_4d
    throw p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    throw p1

    :cond_50
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ed;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-nez p1, :cond_55

    return v2

    :cond_55
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ed;->g:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ed;->f:I

    rem-int/lit8 p1, p1, 0x2

    :cond_5f
    :goto_5f
    return v0

    :cond_60
    return v2
.end method

.method public hashCode()I
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->f:I

    add-int/lit8 v1, v0, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ed;->g:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v3, 0x3f

    if-eqz v1, :cond_16

    const/16 v4, 0x3f

    goto :goto_18

    :cond_16
    const/16 v4, 0x11

    :goto_18
    const/4 v5, 0x0

    if-eq v4, v3, :cond_1d

    const/4 v0, 0x0

    goto :goto_2b

    :cond_1d
    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ed;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_40

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v2, 0x39

    if-eqz v1, :cond_36

    const/16 v3, 0x38

    goto :goto_38

    :cond_36
    const/16 v3, 0x39

    :goto_38
    if-eq v3, v2, :cond_3e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :cond_3e
    add-int/2addr v0, v5

    return v0

    :cond_40
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    :try_start_43
    throw v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    throw v0

    :cond_46
    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_66

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v4, v4, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ed;->c([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ed;->ﾇ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [I

    fill-array-data v2, :array_6e

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ed;->c([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ed;->f:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ed;->g:I

    rem-int/2addr v2, v1

    const/16 v1, 0x5e

    if-nez v2, :cond_5c

    const/16 v2, 0x5e

    goto :goto_5e

    :cond_5c
    const/16 v2, 0x2e

    :goto_5e
    if-eq v2, v1, :cond_61

    return-object v0

    :cond_61
    const/4 v0, 0x0

    :try_start_62
    throw v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    throw v0

    nop

    :array_66
    .array-data 4
        0x41337956
        -0x6636b3f5
    .end array-data

    :array_6e
    .array-data 4
        0x41337956
        -0x6636b3f5
    .end array-data
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->f:I

    add-int/lit8 v1, v0, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ed;->g:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ed;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public abstract ﾇ()Ljava/lang/String;
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->f:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ed;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-ne v0, v3, :cond_2b

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ed;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ed;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    :goto_22
    if-eq v1, v3, :cond_2a

    const/16 v1, 0x5d

    :try_start_26
    div-int/2addr v1, v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    return-object v0

    :catchall_28
    move-exception v0

    throw v0

    :cond_2a
    return-object v0

    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    throw v0
.end method
