###### Class com.ironsource.adqualitysdk.sdk.i.dl.c (com.ironsource.adqualitysdk.sdk.i.dl$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dl$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/dl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dl;->g(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/dl$e<",
        "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/dl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->a:[C

    return-void

    :array_a
    .array-data 2
        0x32s
        0x64s
        0x64s
        0x6bs
        0x49s
        0x4as
        0x74s
        0x6bs
        0x41s
        0x49s
        0x69s
        0x6bs
        0x52s
        0x51s
        0x73s
        0x6as
        0x66s
        0x67s
        0x41s
        0x42s
        0x64s
        0x6cs
        0x6bs
        0x64s
        0x6as
        0x74s
        0x5es
        0x32s
        0x42s
        0x64s
        0x6ds
        0x6fs
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->s(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/dw;

    if-nez v0, :cond_16

    const/4 v0, 0x2

    goto :goto_18

    :cond_16
    const/16 v0, 0x47

    :goto_18
    if-eq v0, v1, :cond_1b

    goto :goto_1f

    :cond_1b
    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    if-eqz v0, :cond_20

    :goto_1f
    return-object p1

    :cond_20
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_5a

    const/4 v4, 0x1

    const-string v5, "\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v4, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->x(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->c:I

    add-int/2addr p1, v4

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_51

    const/4 p1, 0x0

    goto :goto_52

    :cond_51
    const/4 p1, 0x1

    :goto_52
    const/4 v0, 0x0

    if-ne p1, v4, :cond_56

    return-object v0

    :cond_56
    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p1

    throw p1

    nop

    :array_5a
    .array-data 4
        0x0
        0x20
        0x0
        0x1b
    .end array-data
.end method

.method private static b(Z[ILjava/lang/String;)Ljava/lang/String;
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->a:[C

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
.method public final synthetic ﾇ(Ljava/util/List;)Ljava/lang/Object;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->c:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    if-eq v1, v2, :cond_28

    return-object p1

    :cond_28
    :try_start_28
    throw v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p1

    throw p1

    :cond_2b
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    throw p1
.end method
