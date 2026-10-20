###### Class com.tapjoy.internal.c2 (com.tapjoy.internal.c2)
.class public final Lcom/tapjoy/internal/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/m7;


# instance fields
.field public final a:Lcom/tapjoy/internal/v3;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/v3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/c2;->a:Lcom/tapjoy/internal/v3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/c2;->a:Lcom/tapjoy/internal/v3;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/c2;->a:Lcom/tapjoy/internal/v3;

    iget-object v1, v1, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/x8;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1a

    if-eqz p1, :cond_18

    monitor-enter p1

    :try_start_11
    iget-object v0, p1, Lcom/tapjoy/internal/x8;->b:Ljava/lang/Object;

    monitor-exit p1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    throw v0

    :cond_18
    const/4 p1, 0x0

    return-object p1

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final a(Ljava/net/URL;Landroid/graphics/Bitmap;)V
    .registers 7

    iget-object v0, p0, Lcom/tapjoy/internal/c2;->a:Lcom/tapjoy/internal/v3;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/c2;->a:Lcom/tapjoy/internal/v3;

    iget-object v2, v1, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/x8;

    if-nez v2, :cond_3f

    new-instance v2, Lcom/tapjoy/internal/x8;

    invoke-direct {v2, p1}, Lcom/tapjoy/internal/x8;-><init>(Ljava/net/URL;)V

    iget-object v3, v1, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget v3, v1, Lcom/tapjoy/internal/v3;->b:I

    sub-int/2addr p1, v3

    if-lez p1, :cond_3f

    iget-object v1, v1, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    if-lez p1, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2e

    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_48

    monitor-enter v2

    :try_start_41
    iput-object p2, v2, Lcom/tapjoy/internal/x8;->b:Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_45
    move-exception p1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw p1

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method
