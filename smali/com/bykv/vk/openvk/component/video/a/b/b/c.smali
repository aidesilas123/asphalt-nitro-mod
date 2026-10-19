###### Class com.bykv.vk.openvk.component.video.a.b.b.c (com.bykv.vk.openvk.component.video.a.b.b.c)
.class public Lcom/bykv/vk/openvk/component/video/a/b/b/c;
.super Ljava/lang/Object;
.source "VideoProxyDB.java"


# static fields
.field private static volatile b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/component/video/a/b/b/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bykv/vk/openvk/component/video/a/b/b/d;

.field private final d:Ljava/util/concurrent/Executor;

.field private volatile e:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/component/g/i;

    const/4 v2, 0x5

    const-string v3, "video_proxy_db"

    invoke-direct {v9, v2, v3}, Lcom/bytedance/sdk/component/g/i;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/b/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bykv/vk/openvk/component/video/a/b/b/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->c:Lcom/bykv/vk/openvk/component/video/a/b/b/d;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object p0
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/bykv/vk/openvk/component/video/a/b/b/c;
    .registers 3

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    return-object p0
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Lcom/bykv/vk/openvk/component/video/a/b/b/d;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->c:Lcom/bykv/vk/openvk/component/video/a/b/b/d;

    return-object p0
.end method

.method private b(I)Ljava/lang/String;
    .registers 5

    if-gtz p1, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_12
    if-ge v1, p1, :cond_1c

    const-string v2, ",?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/a/b/b/a;
    .registers 16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_14

    move-object v2, v1

    goto :goto_1a

    :cond_14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    :goto_1a
    if-eqz v2, :cond_1d

    return-object v2

    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->c:Lcom/bykv/vk/openvk/component/video/a/b/b/d;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "video_http_header_t"

    const/4 v6, 0x0

    const-string v7, "key=? AND flag=?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v8, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "1"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_7e

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7b

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    const-string v2, "key"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "mime"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "contentLength"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v2, "extra"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    move-object v4, v2

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/bykv/vk/openvk/component/video/a/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_7b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7e
    if-eqz v2, :cond_85

    if-eqz v0, :cond_85

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_1d .. :try_end_85} :catchall_86

    :cond_85
    return-object v2

    :catchall_86
    return-object v1
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_d
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/b/c$2;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/b/c$2;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/b/c;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/a/b/b/a;)V
    .registers 4

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/b/c;Lcom/bykv/vk/openvk/component/video/a/b/b/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method

.method public a(Ljava/util/Collection;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_6a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_2e

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    aput-object v4, v1, v2

    goto :goto_1d

    :cond_33
    add-int/lit8 v2, v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    :try_start_3b
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->c:Lcom/bykv/vk/openvk/component/video/a/b/b/d;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "video_http_header_t"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "flag"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_3b .. :try_end_6a} :catchall_6a

    :catchall_6a
    :cond_6a
    return-void
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.b.c.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.b.b.c$1)
.class Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;
.super Ljava/lang/Object;
.source "VideoProxyDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/b/a;

.field final synthetic b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/b/c;Lcom/bykv/vk/openvk/component/video/a/b/b/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->b(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Lcom/bykv/vk/openvk/component/video/a/b/b/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    goto :goto_25

    :cond_1c
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    :goto_25
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    iget-object v2, v2, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    iget-object v2, v2, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    iget v2, v2, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    iget v2, v2, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    iget-object v2, v2, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_76
    .catchall {:try_start_0 .. :try_end_76} :catchall_76

    :catchall_76
    return-void
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.b.c.AnonymousClass2 (com.bykv.vk.openvk.component.video.a.b.b.c$2)
.class Lcom/bykv/vk/openvk/component/video/a/b/b/c$2;
.super Ljava/lang/Object;
.source "VideoProxyDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/b/c;I)V
    .registers 3

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$2;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    iput p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$2;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->b(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Lcom/bykv/vk/openvk/component/video/a/b/b/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "video_http_header_t"

    const-string v2, "flag=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/bykv/vk/openvk/component/video/a/b/b/c$2;->a:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1d

    :catchall_1d
    return-void
.end method
