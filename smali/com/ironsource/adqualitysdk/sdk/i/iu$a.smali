###### Class com.ironsource.adqualitysdk.sdk.i.iu.a (com.ironsource.adqualitysdk.sdk.i.iu$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iu$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iu;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:[C = null

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Landroid/content/Intent;

.field private synthetic h:Landroid/content/Context;

.field final synthetic i:Lcom/ironsource/adqualitysdk/sdk/i/iu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x7e

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->d:[C

    return-void

    :array_a
    .array-data 2
        0x3cs
        0x79s
        0x7ds
        0x7as
        0x77s
        0x78s
        0x84s
        0x8fs
        0x89s
        0x81s
        0x82s
        0x82s
        0x81s
        0x7es
        0x77s
        0x7cs
        0x81s
        0x81s
        0x7cs
        0x6bs
        0x81s
        0xa1s
        0xa1s
        0x9cs
        0x7bs
        0x84s
        0x9fs
        0x9cs
        0x81s
        0x7cs
        0x99s
        0x9fs
        0xa3s
        0x9es
        0x9cs
        0x9as
        0x69s
        0xces
        0xa5s
        0xa1s
        0xc9s
        0xces
        0xces
        0xc9s
        0xc4s
        0xcbs
        0xces
        0xcfs
        0xcfs
        0xces
        0xd6s
        0xacs
        0xa1s
        0xc5s
        0xc4s
        0xc7s
        0xcas
        0xc6s
        0xb9s
        0xb9s
        0xccs
        0xd5s
        0xd3s
        0x37s
        0x6es
        0x59s
        0x59s
        0x6es
        0x6es
        0x69s
        0x64s
        0x6bs
        0x6es
        0x6fs
        0x6fs
        0x6es
        0x76s
        0x95s
        0x127s
        0x11fs
        0x120s
        0x120s
        0x11fs
        0x11cs
        0x115s
        0x11as
        0x11fs
        0x11fs
        0x11as
        0xf2s
        0xf6s
        0x11fs
        0x121s
        0x124s
        0x126s
        0x11ds
        0x11as
        0xf8s
        0xf8s
        0x11fs
        0xf8s
        0xfas
        0xfes
        0xf7s
        0x11cs
        0x11cs
        0x117s
        0x10fs
        0x122s
        0x120s
        0x122s
        0x10fs
        0x12bs
        0x12cs
        0xdds
        0x12bs
        0x126s
        0xdds
        0x12fs
        0x12cs
        0x12fs
        0x12fs
        0x102s
        0x122s
        0x133s
        0x126s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iu;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->i:Lcom/ironsource/adqualitysdk/sdk/i/iu;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->g:Landroid/content/Intent;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->h:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->d:[C

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
.method public final ﻛ()V
    .registers 16

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->g:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [I

    aput v2, v4, v2

    const/16 v5, 0x24

    aput v5, v4, v1

    const/16 v6, 0x33

    const/4 v7, 0x2

    aput v6, v4, v7

    const/4 v6, 0x3

    aput v2, v4, v6

    const-string v8, "\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0000\u0001"

    invoke-static {v1, v4, v8}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_106

    const/16 v4, 0x62

    if-eqz v3, :cond_2e

    const/16 v3, 0x54

    goto :goto_30

    :cond_2e
    const/16 v3, 0x62

    :goto_30
    if-eq v3, v4, :cond_105

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->f:I

    add-int/lit8 v3, v3, 0x47

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->e:I

    rem-int/2addr v3, v7

    if-eqz v3, :cond_3f

    const/4 v3, 0x1

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    const-string v4, "\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001"

    const/16 v8, 0xe

    const/16 v9, 0x3f

    const-string v10, "\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    const/16 v11, 0x16

    const/16 v12, 0x60

    const/16 v13, 0x1b

    if-eq v3, v1, :cond_84

    :try_start_50
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->g()Ljava/lang/String;

    move-result-object v3

    new-array v14, v0, [I

    aput v5, v14, v2

    aput v13, v14, v1

    aput v12, v14, v7

    aput v11, v14, v6

    invoke-static {v2, v14, v10}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->g:Landroid/content/Intent;

    new-array v5, v0, [I

    aput v9, v5, v2

    aput v8, v5, v1

    aput v2, v5, v7

    aput v2, v5, v6

    invoke-static {v2, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_ea

    goto :goto_b7

    :cond_84
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->g()Ljava/lang/String;

    move-result-object v3

    new-array v14, v0, [I

    aput v5, v14, v2

    aput v13, v14, v1

    aput v12, v14, v7

    aput v11, v14, v6

    invoke-static {v1, v14, v10}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->g:Landroid/content/Intent;

    new-array v5, v0, [I

    aput v9, v5, v2

    aput v8, v5, v1

    aput v2, v5, v7

    aput v2, v5, v6

    invoke-static {v2, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_ea

    :goto_b7
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->g()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [I

    const/16 v5, 0x4d

    aput v5, v4, v2

    const/16 v5, 0x1f

    aput v5, v4, v1

    const/16 v5, 0xb1

    aput v5, v4, v7

    aput v2, v4, v6

    const-string v5, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000"

    invoke-static {v1, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/iu$a$c;

    invoke-direct {v3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iu$a;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_e0} :catch_106

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->e:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->f:I

    rem-int/2addr v0, v7

    return-void

    :cond_ea
    :try_start_ea
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->i:Lcom/ironsource/adqualitysdk/sdk/i/iu;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->h:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->i(Lcom/ironsource/adqualitysdk/sdk/i/iu;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_fd

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/iu$a$b;

    invoke-direct {v3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iu$a;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    :cond_fd
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/iu$a$a;

    invoke-direct {v3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iu$a;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_105} :catch_106

    :cond_105
    return-void

    :catch_106
    move-exception v3

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->g()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [I

    fill-array-data v0, :array_11e

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    nop

    :array_11e
    .array-data 4
        0x6c
        0x12
        0xbd
        0xf
    .end array-data
.end method
