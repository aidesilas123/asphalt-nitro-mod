###### Class com.json.adqualitysdk.sdk.i.fp (com.ironsource.adqualitysdk.sdk.i.fp)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fp;
.super Lcom/ironsource/adqualitysdk/sdk/i/fr;
.source ""


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

.field private e:Lcom/ironsource/adqualitysdk/sdk/i/fr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->a:[C

    return-void

    :array_a
    .array-data 2
        0x3bs
        0x6fs
        0x68s
        0x6as
        0x68s
        0x42s
        0x24s
        0x6fs
        0xe3s
    .end array-data
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/fr;)V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/fr;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    return-void
.end method

.method private static a(Z[ILjava/lang/String;)Ljava/lang/String;
    .registers 15

    if-eqz p2, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :cond_8
    check-cast p2, [B

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_e
    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    const/4 v7, 0x3

    aget v7, p1, v7

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/fp;->a:[C

    new-array v9, v4, [C

    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_47

    new-array v2, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    const/4 v8, 0x0

    :goto_27
    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge v10, v4, :cond_46

    aget-byte v11, p2, v10

    if-ne v11, v3, :cond_38

    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_3f

    :cond_38
    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    :goto_3f
    aget-char v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_27

    :cond_46
    move-object v9, v2

    :cond_47
    if-lez v7, :cond_56

    new-array p2, v4, [C

    invoke-static {v9, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v2, v4, v7

    invoke-static {p2, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    if-eqz p0, :cond_6d

    new-array p0, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_5c
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p2, v4, :cond_6c

    sub-int v2, v4, p2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_5c

    :cond_6c
    move-object v9, p0

    :cond_6d
    if-lez v6, :cond_82

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_71
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p0, v4, :cond_82

    aget-char p2, v9, p0

    aget v1, p1, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p0

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_71

    :cond_82
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_e .. :try_end_88} :catchall_89

    return-object p0

    :catchall_89
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->c:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_e

    return v0

    :cond_e
    const/16 v2, 0x50

    if-eqz p1, :cond_15

    const/16 v3, 0x3d

    goto :goto_17

    :cond_15
    const/16 v3, 0x50

    :goto_17
    const/4 v4, 0x0

    if-eq v3, v2, :cond_63

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fp;->c:I

    rem-int/lit8 v1, v1, 0x2

    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/fp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x13

    if-eq v1, v2, :cond_2f

    const/16 v1, 0x4f

    goto :goto_31

    :cond_2f
    const/16 v1, 0x13

    :goto_31
    if-eq v1, v3, :cond_34

    goto :goto_63

    :cond_34
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/fp;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v1, :cond_43

    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_47

    :cond_43
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v1, :cond_48

    :goto_47
    return v4

    :cond_48
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v1, :cond_53

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_53
    if-nez p1, :cond_63

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->b:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_62

    return v4

    :cond_62
    return v0

    :cond_63
    :goto_63
    return v4
.end method

.method public final hashCode()I
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->b:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v2, 0x54

    if-eqz v0, :cond_13

    const/16 v3, 0x4e

    goto :goto_15

    :cond_13
    const/16 v3, 0x54

    :goto_15
    const/4 v4, 0x0

    if-eq v3, v2, :cond_25

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fp;->b:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    const/16 v2, 0x17

    if-eqz v1, :cond_31

    const/16 v3, 0x3e

    goto :goto_33

    :cond_31
    const/16 v3, 0x17

    :goto_33
    if-eq v3, v2, :cond_39

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_39
    add-int/2addr v0, v4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_50

    const/4 v3, 0x0

    const-string v4, "\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fp;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v1, [I

    fill-array-data v1, :array_5c

    const/4 v2, 0x1

    const-string v4, "\u0001\u0001"

    invoke-static {v2, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fp;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->b:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/fp;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_47

    const/4 v2, 0x0

    :cond_47
    if-eqz v2, :cond_4a

    return-object v0

    :cond_4a
    const/16 v1, 0x40

    :try_start_4c
    div-int/2addr v1, v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4e

    return-object v0

    :catchall_4e
    move-exception v0

    throw v0

    :array_50
    .array-data 4
        0x0
        0x7
        0x0
        0x0
    .end array-data

    :array_5c
    .array-data 4
        0x7
        0x2
        0xbf
        0x0
    .end array-data
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 6

    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾇ()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fp;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻛ()Z

    move-result v1

    const/16 v2, 0x2c

    if-nez v1, :cond_1d

    const/16 v1, 0x2c

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x10

    :goto_1f
    if-eq v1, v2, :cond_22

    goto :goto_47

    :cond_22
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->b:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fp;->c:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ｋ()Z

    move-result v1

    const/16 v2, 0xf

    if-eqz v1, :cond_37

    const/16 v1, 0xf

    goto :goto_39

    :cond_37
    const/16 v1, 0x52

    :goto_39
    if-eq v1, v2, :cond_3c

    goto :goto_0

    :cond_3c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fp;->b:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/fp;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0

    :cond_47
    :goto_47
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
