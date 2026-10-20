###### Class com.mbridge.msdk.foundation.same.a.a (com.mbridge.msdk.foundation.same.a.a)
.class public final Lcom/mbridge/msdk/foundation/same/a/a;
.super Ljava/lang/Object;
.source "LruMemoryCache.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mbridge/msdk/foundation/same/a/c<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_13

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/a/a;->b:I

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_18

    monitor-exit p0

    return-object p1

    :cond_18
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private a(I)V
    .registers 5

    :goto_0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    if-ltz v0, :cond_56

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    if-nez v0, :cond_56

    :cond_11
    iget v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    if-le v0, p1, :cond_54

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_54

    :cond_1e
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_32

    monitor-exit p0

    goto :goto_55

    :cond_32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_75

    :try_start_3e
    invoke-direct {p0, v1, v0}, Lcom/mbridge/msdk/foundation/same/a/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget v1, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_52

    :catchall_52
    :try_start_52
    monitor-exit p0

    goto :goto_0

    :cond_54
    :goto_54
    monitor-exit p0

    :goto_55
    return-void

    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_75
    move-exception p1

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_52 .. :try_end_77} :catchall_75

    throw p1
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 5

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    monitor-enter p0

    :try_start_5
    iget v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/a/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_21

    iget v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/a/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_29

    iget p1, p0, Lcom/mbridge/msdk/foundation/same/a/a;->b:I

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/a/a;->a(I)V

    const/4 p1, 0x1

    return p1

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    return p1
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    iget v1, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/same/a/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/mbridge/msdk/foundation/same/a/a;->c:I

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/a/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/a/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/a/a;->a(I)V

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "LruCache[maxSize=%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mbridge/msdk/foundation/same/a/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
