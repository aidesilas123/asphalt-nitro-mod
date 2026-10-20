###### Class com.tapjoy.TJMemoryDataStorage (com.tapjoy.TJMemoryDataStorage)
.class public Lcom/tapjoy/TJMemoryDataStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/TJMemoryDataStorage;


# instance fields
.field public final b:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJMemoryDataStorage;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TJMemoryDataStorage;
    .registers 2

    sget-object v0, Lcom/tapjoy/TJMemoryDataStorage;->a:Lcom/tapjoy/TJMemoryDataStorage;

    if-nez v0, :cond_17

    const-class v0, Lcom/tapjoy/TJMemoryDataStorage;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/tapjoy/TJMemoryDataStorage;->a:Lcom/tapjoy/TJMemoryDataStorage;

    if-nez v1, :cond_12

    new-instance v1, Lcom/tapjoy/TJMemoryDataStorage;

    invoke-direct {v1}, Lcom/tapjoy/TJMemoryDataStorage;-><init>()V

    sput-object v1, Lcom/tapjoy/TJMemoryDataStorage;->a:Lcom/tapjoy/TJMemoryDataStorage;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/tapjoy/TJMemoryDataStorage;->a:Lcom/tapjoy/TJMemoryDataStorage;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/TJMemoryDataStorage;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/TJMemoryDataStorage;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/TJMemoryDataStorage;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
