###### Class com.ironsource.adqualitysdk.sdk.i.ag.d (com.ironsource.adqualitysdk.sdk.i.ag$d)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag;-><init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ak;Lcom/ironsource/adqualitysdk/sdk/i/am;ZLjava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->a:[C

    return-void

    :array_a
    .array-data 2
        0x82s
        0xfds
        0xf8s
        0x100s
        0x108s
        0x104s
        0xf8s
        0xf9s
        0xe9s
        0x5bs
        0xc2s
        0xc9s
        0xc3s
        0xccs
        0xcfs
        0xc8s
        0xcfs
        0xabs
        0xa3s
        0xcfs
        0xces
        0xc5s
        0xcbs
        0xd3s
        0xcfs
        0xcds
        0xcfs
        0xd1s
        0xe2s
        0xc4s
        0xdbs
        0xd3s
        0xd1s
        0xd2s
        0xd5s
        0xd3s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->a:[C

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
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->b:I

    const/16 v1, 0x31

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x4

    new-array v2, v0, [I

    fill-array-data v2, :array_66

    const/4 v3, 0x1

    const-string v4, "\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [I

    fill-array-data v4, :array_72

    const/4 v5, 0x0

    const-string v6, "\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001"

    invoke-static {v5, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [I

    fill-array-data v0, :array_7e

    const/4 v6, 0x0

    invoke-static {v3, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->a(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻛ()V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->E(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->b:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ag$d;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x1c

    if-nez p1, :cond_5a

    goto :goto_5c

    :cond_5a
    const/16 v1, 0x1c

    :goto_5c
    if-eq v1, p2, :cond_64

    const/16 p1, 0x5b

    :try_start_60
    div-int/2addr p1, v5
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_62

    return-void

    :catchall_62
    move-exception p1

    throw p1

    :cond_64
    return-void

    nop

    :array_66
    .array-data 4
        0x0
        0x9
        0x92
        0x0
    .end array-data

    :array_72
    .array-data 4
        0x9
        0x12
        0x61
        0x0
    .end array-data

    :array_7e
    .array-data 4
        0x1b
        0x9
        0x70
        0x3
    .end array-data
.end method
