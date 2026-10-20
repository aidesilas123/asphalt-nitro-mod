###### Class com.bykv.vk.openvk.preload.geckox.f.a (com.bykv.vk.openvk.preload.geckox.f.a)
.class public final Lcom/bykv/vk/openvk/preload/geckox/f/a;
.super Ljava/lang/Object;
.source "ChannelVerLoader.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public volatile c:Ljava/io/File;

.field volatile d:Ljava/lang/Long;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile f:Lcom/bykv/vk/openvk/preload/geckox/f/a/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->c:Ljava/io/File;

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->c:Ljava/io/File;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9d

    monitor-exit p0

    return-object p1

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->d:Ljava/lang/Long;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_9d

    cmp-long v0, v4, v2

    if-nez v0, :cond_1c

    monitor-exit p0

    return-object v1

    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "select.lock"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/g/b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/g/b;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_9d

    :try_start_3e
    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->d:Ljava/lang/Long;

    if-nez v5, :cond_4f

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->a:Ljava/lang/String;

    invoke-direct {v5, v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/utils/j;->a(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->d:Ljava/lang/Long;

    :cond_4f
    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->d:Ljava/lang/Long;

    if-nez v5, :cond_5e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->d:Ljava/lang/Long;
    :try_end_59
    .catchall {:try_start_3e .. :try_end_59} :catchall_98

    :try_start_59
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/g/b;->a()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_9d

    monitor-exit p0

    return-object v1

    :cond_5e
    :try_start_5e
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->d:Ljava/lang/Long;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "using.lock"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/g/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->c:Ljava/io/File;
    :try_end_93
    .catchall {:try_start_5e .. :try_end_93} :catchall_98

    :try_start_93
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/g/b;->a()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_9d

    monitor-exit p0

    return-object p1

    :catchall_98
    move-exception p1

    :try_start_99
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/g/b;->a()V

    throw p1
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/f/a/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->f:Lcom/bykv/vk/openvk/preload/geckox/f/a/a;

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->f:Lcom/bykv/vk/openvk/preload/geckox/f/a/a;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_70

    monitor-exit p0

    return-object p1

    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/f/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_60

    new-instance p1, Ljava/io/File;

    const-string v1, "res.macv"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "res"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/f/a/c;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/preload/geckox/f/a/c;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->f:Lcom/bykv/vk/openvk/preload/geckox/f/a/a;

    goto :goto_44

    :cond_31
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_48

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/f/a/b;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/preload/geckox/f/a/b;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->f:Lcom/bykv/vk/openvk/preload/geckox/f/a/a;

    :goto_44
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/f/a;->f:Lcom/bykv/vk/openvk/preload/geckox/f/a/a;
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_70

    monitor-exit p0

    return-object p1

    :cond_48
    :try_start_48
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not find res, dir:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "channel no exist\uff0cchannel:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_70
    .catchall {:try_start_48 .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)I
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/f/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "res"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_21

    if-lez p1, :cond_25

    add-int/lit8 p1, p1, -0x1

    return p1

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    const/4 p1, 0x0

    return p1
.end method
