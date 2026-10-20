###### Class com.mbridge.msdk.out.CustomInfoManager (com.mbridge.msdk.out.CustomInfoManager)
.class public Lcom/mbridge/msdk/out/CustomInfoManager;
.super Ljava/lang/Object;
.source "CustomInfoManager.java"

# interfaces
.implements Lcom/mbridge/msdk/system/NoProGuard;


# static fields
.field private static INSTANCE:Lcom/mbridge/msdk/out/CustomInfoManager; = null

.field private static TAG:Ljava/lang/String; = "CustomInfoManager"

.field public static final TYPE_BID:I = 0x6

.field public static final TYPE_BIDLOAD:I = 0x7

.field public static final TYPE_LOAD:I = 0x8


# instance fields
.field private infoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_52

    const/4 v0, 0x6

    if-eq p2, v0, :cond_38

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1d

    const/16 v0, 0x8

    if-eq p2, v0, :cond_13

    goto :goto_52

    :cond_13
    iget-object p2, p0, Lcom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_52

    :cond_1d
    iget-object p2, p0, Lcom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bidload"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_52

    :cond_38
    iget-object p2, p0, Lcom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_52
    :goto_52
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/mbridge/msdk/out/CustomInfoManager;
    .registers 2

    const-class v0, Lcom/mbridge/msdk/out/CustomInfoManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mbridge/msdk/out/CustomInfoManager;

    if-nez v1, :cond_18

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    :try_start_8
    sget-object v1, Lcom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mbridge/msdk/out/CustomInfoManager;

    if-nez v1, :cond_13

    new-instance v1, Lcom/mbridge/msdk/out/CustomInfoManager;

    invoke-direct {v1}, Lcom/mbridge/msdk/out/CustomInfoManager;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mbridge/msdk/out/CustomInfoManager;

    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1

    :cond_18
    :goto_18
    sget-object v1, Lcom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mbridge/msdk/out/CustomInfoManager;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCustomInfoByUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    :try_start_10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_7d

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_75

    const-string v3, "hb"

    if-nez v2, :cond_40

    :try_start_26
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "bid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 p2, 0x6

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "load"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 p2, 0x7

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, "v3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7d

    const/16 p2, 0x8

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_74
    .catchall {:try_start_26 .. :try_end_74} :catchall_75

    return-object p1

    :catchall_75
    move-exception p1

    sget-object p2, Lcom/mbridge/msdk/out/CustomInfoManager;->TAG:Ljava/lang/String;

    const-string v0, "Exception"

    invoke-static {p2, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7d
    return-object v1
.end method

.method public setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    if-eqz p3, :cond_4a

    invoke-static {p3}, Lcom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_34

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1d

    const/16 v0, 0x8

    if-eq p2, v0, :cond_17

    goto :goto_4a

    :cond_17
    iget-object p2, p0, Lcom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_1d
    iget-object p2, p0, Lcom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bidload"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_34
    iget-object p2, p0, Lcom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    :goto_4a
    return-void
.end method
