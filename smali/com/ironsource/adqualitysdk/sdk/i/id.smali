###### Class com.json.adqualitysdk.sdk.i.id (com.ironsource.adqualitysdk.sdk.i.id)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/id;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/id$c;,
        Lcom/ironsource/adqualitysdk/sdk/i/id$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/ironsource/adqualitysdk/sdk/i/id; = null

.field private static c:J = 0x0L

.field private static d:[C = null

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private g:Z

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/adqualitysdk/sdk/i/id$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/adqualitysdk/sdk/i/id$c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/id;->e()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->a:Ljava/lang/Object;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->f:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->h:Landroid/content/Context;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/id$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/id$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/id;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->l:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->i:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->i:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/id;->b(Landroid/content/BroadcastReceiver;)V

    goto :goto_12

    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Landroid/content/BroadcastReceiver;)V
    .registers 12

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->i:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_5c

    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    const/4 v5, 0x0

    :goto_1e
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_59

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->j:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_56

    const/4 v8, 0x0

    :goto_33
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v8, v9, :cond_4b

    invoke-virtual {v7, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ironsource/adqualitysdk/sdk/i/id$b;

    iget-object v9, v9, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->e:Landroid/content/BroadcastReceiver;

    if-ne v9, p1, :cond_48

    invoke-virtual {v7, v8}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    :cond_48
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    :cond_4b
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-gtz v7, :cond_56

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->j:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5e

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/id;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->f:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/id;->g()V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->f:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->e:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x56

    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    const/16 p0, 0x56

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    if-eq p0, v0, :cond_23

    return-void

    :cond_23
    const/16 p0, 0x3b

    :try_start_25
    div-int/2addr p0, v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception p0

    throw p0
.end method

.method private static d(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/id;->c:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static e()V
    .registers 2

    const-wide v0, 0x493dba75d9b190cdL    # 6.629645983420738E44

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->c:J

    const/16 v0, 0x5c

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->d:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x10s
        0x42s
        0x6as
        0x74s
        0x76s
        0x4as
        0x43s
        0x6as
        0x6bs
        0x6fs
        0x71s
        0x6ds
        0x71s
        0x6cs
        0x5bs
        0x10s
        0x49s
        0x6bs
        0x65s
        0x66s
        0x69s
        0x69s
        0x42s
        0x3as
        0x73s
        0x70s
        0x6bs
        0x65s
        0x64s
        0x64s
        0x40s
        0x43s
        0x6as
        0x6bs
        0x68s
        0x65s
        0x6bs
        0x6as
        0x57s
        0x36s
        0x49s
        0x6bs
        0x6cs
        0x70s
        0x6as
        0x67s
        0x43s
        0x47s
        0x8fs
        0x95s
        0x91s
        0x90s
        0x6es
        0x6bs
        0x8cs
        0x8fs
        0x90s
        0x8as
        0x8bs
        0x89s
        0x67s
        0x45s
        0x45s
        0x6bs
        0x8cs
        0x8fs
        0x90s
        0x8as
        0x77s
        0x5bs
        0x79s
        0x71s
        0x45s
        0x58s
        0x77s
        0xe8s
        0xe3s
        0xecs
        0xefs
        0xeds
        0x31s
        0x62s
        0x6as
        0x6cs
        0x66s
        0x6bs
        0x70s
        0x75s
        0x40s
        0x7fs
        0x87s
        0x87s
    .end array-data
.end method

.method private static f(Z[ILjava/lang/String;)Ljava/lang/String;
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/id;->d:[C

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

.method private g()V
    .registers 10

    :cond_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->i:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-gtz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    new-array v2, v1, [Lcom/ironsource/adqualitysdk/sdk/i/id$c;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->clear()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_40

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_0

    aget-object v4, v2, v3

    const/4 v5, 0x0

    :goto_21
    iget-object v6, v4, Lcom/ironsource/adqualitysdk/sdk/i/id$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v5, v6, :cond_3d

    iget-object v6, v4, Lcom/ironsource/adqualitysdk/sdk/i/id$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ironsource/adqualitysdk/sdk/i/id$b;

    iget-object v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->e:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->h:Landroid/content/Context;

    iget-object v8, v4, Lcom/ironsource/adqualitysdk/sdk/i/id$c;->a:Landroid/content/Intent;

    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catchall_40
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static ｋ(Landroid/content/Context;)Lcom/ironsource/adqualitysdk/sdk/i/id;
    .registers 3

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->b:Lcom/ironsource/adqualitysdk/sdk/i/id;

    if-nez v1, :cond_12

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/id;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/id;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->b:Lcom/ironsource/adqualitysdk/sdk/i/id;

    :cond_12
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->b:Lcom/ironsource/adqualitysdk/sdk/i/id;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻐ(Landroid/content/Intent;)Z
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "\u9081\ua215\uf5c0\u0889\u5a7d\u6d1c\ua0f5\uf3a3\u0514\u58c6\u6b88\ubd71\uf02a\u03f2\u5682\u6815\ubbd3\uce8bt\u533d\u66f3"

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    rsub-int v3, v8, 0x32b8

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/id;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->g:Z

    if-nez v3, :cond_1e

    return v7

    :cond_1e
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->i:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->h:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/16 v18, 0x8

    and-int/lit8 v8, v8, 0x8

    const/4 v13, 0x1

    if-eqz v8, :cond_49

    const/16 v19, 0x1

    goto :goto_4b

    :cond_49
    const/16 v19, 0x0

    :goto_4b
    const/16 v20, 0x3

    const/16 v21, 0x2

    const/4 v12, 0x4

    if-eqz v19, :cond_aa

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-array v9, v12, [I

    aput v7, v9, v7

    const/16 v10, 0xf

    aput v10, v9, v13

    aput v7, v9, v21

    aput v7, v9, v20

    const-string v11, "\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001"

    invoke-static {v13, v9, v11}, Lcom/ironsource/adqualitysdk/sdk/i/id;->f(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v9, v12, [I

    aput v10, v9, v7

    aput v18, v9, v13

    aput v7, v9, v21

    aput v7, v9, v20

    const-string v10, "\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001"

    invoke-static {v7, v9, v10}, Lcom/ironsource/adqualitysdk/sdk/i/id;->f(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u90ed\uf03f\u5191\ub13a\u12d0\u73b2\ud317\u34e3\u944b\uf53c\u56cf"

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v10

    add-int/lit16 v10, v10, 0x609e

    invoke-static {v9, v10}, Lcom/ironsource/adqualitysdk/sdk/i/id;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    iget-object v8, v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->j:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_29a

    const/16 v22, 0x10

    if-eqz v19, :cond_e4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u908c\u49c3\u2263\u1ce3\uf516\uaf82\u8863\u615a\u5bcc\u346b\ueefb\uc758\ua1f1"

    const v10, 0xd96d

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v23

    shr-int/lit8 v23, v23, 0x10

    sub-int v10, v10, v23

    invoke-static {v9, v10}, Lcom/ironsource/adqualitysdk/sdk/i/id;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    const/4 v8, 0x0

    move-object v10, v8

    const/4 v9, 0x0

    :goto_e7
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v9, v8, :cond_26a

    invoke-virtual {v11, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ironsource/adqualitysdk/sdk/i/id$b;

    const/16 v23, 0x18

    if-eqz v19, :cond_121

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v12, [I

    const/16 v25, 0x17

    aput v25, v6, v7

    aput v23, v6, v13

    aput v7, v6, v21

    aput v22, v6, v20

    const-string v12, "\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000"

    invoke-static {v13, v6, v12}, Lcom/ironsource/adqualitysdk/sdk/i/id;->f(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->d:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_121
    iget-boolean v5, v8, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->f:Z

    if-eqz v5, :cond_148

    if-eqz v19, :cond_13c

    const-string v5, "\u90ed\u05e8\uba81\u2fab\uc4b5\u79a0\ueeb6\u839c\u38c2\uad93\u42df\uf78e\u6c90\u01fe\ub6ec\u2be3\uc0e9\u75b8\ueaf6\u9ffe\u34db\ua9c1\u5ec2\uf3da\u68cc\u1d90\ub22e\u272e\udc25\u7139\ue63f"

    const v6, 0x9506

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    add-int/2addr v8, v6

    invoke-static {v5, v8}, Lcom/ironsource/adqualitysdk/sdk/i/id;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13c
    move v5, v9

    move-object v9, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v14

    const/4 v7, 0x4

    const/4 v12, 0x1

    :cond_144
    const-wide/16 v23, 0x0

    goto/16 :goto_25c

    :cond_148
    iget-object v5, v8, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->d:Landroid/content/IntentFilter;

    move-object v6, v8

    move-object v8, v5

    move v5, v9

    move-object v9, v4

    move-object v12, v10

    move-object v10, v15

    move-object/from16 v26, v11

    move-object v11, v14

    move-object/from16 v27, v12

    const/4 v7, 0x4

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v28, v14

    move-object v14, v2

    invoke-virtual/range {v8 .. v14}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1ae

    if-eqz v19, :cond_199

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-array v10, v7, [I

    const/16 v11, 0x2f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/16 v11, 0x1b

    const/4 v12, 0x1

    aput v11, v10, v12

    const/16 v11, 0x25

    aput v11, v10, v21

    aput v23, v10, v20

    const-string v11, "\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0000"

    const/4 v13, 0x0

    invoke-static {v13, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/id;->f(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19a

    :cond_199
    const/4 v12, 0x1

    :goto_19a
    move-object/from16 v9, v27

    if-nez v9, :cond_1a4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1a5

    :cond_1a4
    move-object v10, v9

    :goto_1a5
    invoke-virtual {v10, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iput-boolean v12, v6, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->f:Z

    const-wide/16 v23, 0x0

    goto/16 :goto_25d

    :cond_1ae
    move-object/from16 v9, v27

    const/4 v12, 0x1

    if-eqz v19, :cond_144

    const/4 v6, -0x4

    if-eq v8, v6, :cond_21f

    const/4 v6, -0x3

    if-eq v8, v6, :cond_203

    const/4 v6, -0x2

    if-eq v8, v6, :cond_1e9

    const/4 v6, -0x1

    if-eq v8, v6, :cond_1d4

    const-string v6, "\u90b8\u3e04\ucde8\u9b56\u2a3e\uf9f9\u8749\u567c\ue587\ub377\u422a\u1193\ubf76\u4ed8"

    const v8, 0xaea6

    const-string v10, ""

    invoke-static {v10}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/id;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_236

    :cond_1d4
    const-string v6, "\u90b9\uce49\u2d47\u8c5f"

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v8, v10, v13

    add-int/lit16 v8, v8, 0x5efc

    invoke-static {v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/id;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_236

    :cond_1e9
    new-array v6, v7, [I

    const/16 v8, 0x58

    const/4 v10, 0x0

    aput v8, v6, v10

    aput v7, v6, v12

    const/16 v8, 0x1d

    aput v8, v6, v21

    aput v7, v6, v20

    const-string v8, "\u0001\u0001\u0001\u0001"

    invoke-static {v10, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/id;->f(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_236

    :cond_203
    new-array v6, v7, [I

    const/16 v8, 0x4a

    const/4 v10, 0x0

    aput v8, v6, v10

    const/4 v8, 0x6

    aput v8, v6, v12

    const/16 v8, 0x81

    aput v8, v6, v21

    aput v12, v6, v20

    const-string v8, "\u0001\u0001\u0000\u0001\u0001\u0000"

    const/4 v10, 0x0

    invoke-static {v10, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/id;->f(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_236

    :cond_21f
    new-array v6, v7, [I

    const/16 v8, 0x50

    const/4 v10, 0x0

    aput v8, v6, v10

    aput v18, v6, v12

    aput v10, v6, v21

    aput v18, v6, v20

    const-string v8, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001"

    invoke-static {v10, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/id;->f(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    :goto_236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u90ed\ua746\uffdd\u37a5\u4e0d\u86ee\udeaa\u1512\u2db5\u65aa\ubc0a\uf4f0\u0ce9\u430c\u9bf8\ud3bc\uea5d\u22fb\u7aaa\ub108\uc9f2\u01a2\u5845\u90b0"

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v13

    const-wide/16 v23, 0x0

    cmp-long v11, v13, v23

    rsub-int v11, v11, 0x37ac

    invoke-static {v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/id;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25c
    move-object v10, v9

    :goto_25d
    add-int/lit8 v9, v5, 0x1

    move-wide/from16 v5, v23

    move-object/from16 v11, v26

    move-object/from16 v14, v28

    const/4 v7, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x1

    goto/16 :goto_e7

    :cond_26a
    move-object v9, v10

    const/4 v12, 0x1

    if-eqz v9, :cond_29a

    const/4 v2, 0x0

    :goto_26f
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v2, v4, :cond_281

    invoke-virtual {v9, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/adqualitysdk/sdk/i/id$b;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->f:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_26f

    :cond_281
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->k:Ljava/util/ArrayList;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/id$c;

    invoke-direct {v4, v0, v9}, Lcom/ironsource/adqualitysdk/sdk/i/id$c;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->l:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_298

    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->l:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_298
    monitor-exit v3
    :try_end_299
    .catchall {:try_start_21 .. :try_end_299} :catchall_29d

    return v12

    :cond_29a
    monitor-exit v3

    const/4 v0, 0x0

    return v0

    :catchall_29d
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final declared-synchronized ﾇ()V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->e:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    const/4 v0, 0x1

    :goto_12
    if-eq v0, v2, :cond_1a

    iput-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->g:Z

    :goto_16
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/id;->a()V

    goto :goto_1d

    :cond_1a
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->g:Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    goto :goto_16

    :goto_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ﾒ()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->f:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/id;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/id;->g:Z

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/id;->f:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.id.a (com.ironsource.adqualitysdk.sdk.i.id$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/id$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/id;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/id;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/id;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/id;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/id;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/id;->c(Lcom/ironsource/adqualitysdk/sdk/i/id;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.id.b (com.ironsource.adqualitysdk.sdk.i.id$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/id$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static a:J = -0x436d5d7ca5583ee5L

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field final d:Landroid/content/IntentFilter;

.field final e:Landroid/content/BroadcastReceiver;

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->a:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const v1, 0xf941

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    sub-int/2addr v1, v3

    const-string v3, "\uc149\u383f\u33fa\u2abd\u2476\u1f28\u16f8\u11ae\u0b68"

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v1, 0xe39f

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    add-int/2addr v3, v1

    const-string v1, "\uc13b\u22e2\u064c\u6baa\u4f13\ub365\u94d3\uf87f"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v1, 0x8bd5

    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    sub-int/2addr v1, v2

    const-string v2, "\uc166"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->b:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/id$b;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.id.c (com.ironsource.adqualitysdk.sdk.i.id$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/id$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/content/Intent;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/adqualitysdk/sdk/i/id$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/adqualitysdk/sdk/i/id$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$c;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$c;->b:Ljava/util/ArrayList;

    return-void
.end method
