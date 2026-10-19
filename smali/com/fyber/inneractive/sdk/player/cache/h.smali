###### Class com.fyber.inneractive.sdk.player.cache.h (com.fyber.inneractive.sdk.player.cache.h)
.class public Lcom/fyber/inneractive/sdk/player/cache/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/util/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/cache/h$g;,
        Lcom/fyber/inneractive/sdk/player/cache/h$e;,
        Lcom/fyber/inneractive/sdk/player/cache/h$h;,
        Lcom/fyber/inneractive/sdk/player/cache/h$i;,
        Lcom/fyber/inneractive/sdk/player/cache/h$f;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/fyber/inneractive/sdk/player/cache/c;

.field public c:Lcom/fyber/inneractive/sdk/player/cache/c$f;

.field public d:Lcom/fyber/inneractive/sdk/player/cache/b;

.field public final e:Ljava/lang/String;

.field public f:Lcom/fyber/inneractive/sdk/player/cache/a;

.field public g:Lcom/fyber/inneractive/sdk/player/cache/h$i;

.field public h:Lcom/fyber/inneractive/sdk/player/cache/h$f;

.field public i:Landroid/os/HandlerThread;

.field public j:Landroid/os/Handler;

.field public final k:Ljava/lang/Object;

.field public l:Ljava/lang/String;

.field public volatile m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Lcom/fyber/inneractive/sdk/player/cache/h$h;

.field public final r:Lcom/fyber/inneractive/sdk/config/global/s;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/c;Ljava/lang/String;Lcom/fyber/inneractive/sdk/player/cache/b;ILcom/fyber/inneractive/sdk/config/global/s;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaDownloader-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->m:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->n:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->e:Ljava/lang/String;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->d:Lcom/fyber/inneractive/sdk/player/cache/b;

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->r:Lcom/fyber/inneractive/sdk/config/global/s;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/cache/h$f;

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, v0

    const-string p5, "MediaDownloader-%s-A"

    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p0, p3, p4}, Lcom/fyber/inneractive/sdk/player/cache/h$f;-><init>(Lcom/fyber/inneractive/sdk/player/cache/h;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->h:Lcom/fyber/inneractive/sdk/player/cache/h$f;

    new-instance p1, Landroid/os/HandlerThread;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->i:Landroid/os/HandlerThread;

    return-void
.end method

.method public static synthetic a(Lcom/fyber/inneractive/sdk/player/cache/h;)Lcom/fyber/inneractive/sdk/config/global/s;
    .registers 1

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->r:Lcom/fyber/inneractive/sdk/config/global/s;

    return-object p0
.end method

.method public static synthetic a(Lcom/fyber/inneractive/sdk/player/cache/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->n:Z

    return p1
.end method

.method public static b(Lcom/fyber/inneractive/sdk/player/cache/h;Z)V
    .registers 5

    new-instance v0, Lcom/fyber/inneractive/sdk/player/cache/g;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/cache/g;-><init>(Lcom/fyber/inneractive/sdk/player/cache/h;)V

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->j:Landroid/os/Handler;

    if-eqz p0, :cond_14

    if-eqz p1, :cond_f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_14

    :cond_f
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    :goto_14
    return-void
.end method

.method public static synthetic c(Lcom/fyber/inneractive/sdk/player/cache/h;Z)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return p1
.end method

.method public static synthetic d(Lcom/fyber/inneractive/sdk/player/cache/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->o:Z

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 9

    const-string v0, ""

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->p:Ljava/lang/String;

    if-nez v1, :cond_77

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_a
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x0

    :goto_21
    array-length v7, v4

    if-ge v6, v7, :cond_38

    aget-byte v7, v4, v6

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_38
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_3c} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_3c} :catch_75

    goto :goto_75

    :catch_3d
    :try_start_3d
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_53
    array-length v6, v4

    if-ge v2, v6, :cond_6a

    aget-byte v6, v4, v2

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_6a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_6e} :catch_6f

    goto :goto_75

    :catch_6f
    const-string v2, "\\W+"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :catch_75
    :goto_75
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->p:Ljava/lang/String;

    :cond_77
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/cache/a;)V
    .registers 8

    if-eqz p1, :cond_7f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->q:Lcom/fyber/inneractive/sdk/player/cache/h$h;

    if-eqz v0, :cond_7f

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/cache/a;->a()Ljava/io/File;

    move-result-object v1

    check-cast v0, Lcom/fyber/inneractive/sdk/util/f;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/f;->a:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->q:Lcom/fyber/inneractive/sdk/player/cache/h$h;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/cache/a;->a()Ljava/io/File;

    move-result-object p1

    check-cast v0, Lcom/fyber/inneractive/sdk/util/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_3a
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/fyber/inneractive/sdk/util/f;->b:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_60

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_60

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/util/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_60

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/util/f;->a:Ljava/io/File;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_60} :catch_66
    .catchall {:try_start_3a .. :try_end_60} :catchall_64

    :cond_60
    :try_start_60
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_77

    goto :goto_77

    :catchall_64
    move-exception p1

    goto :goto_7b

    :catch_66
    move-exception p1

    :try_start_67
    const-string v0, "Failed getting frame from video file%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/q;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_64

    :try_start_74
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_77

    :catchall_77
    :goto_77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_7f

    :goto_7b
    :try_start_7b
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7e

    :catchall_7e
    throw p1

    :cond_7f
    :goto_7f
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/cache/h$b;

    invoke-direct {v1, p0, p1}, Lcom/fyber/inneractive/sdk/player/cache/h$b;-><init>(Lcom/fyber/inneractive/sdk/player/cache/h;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->h:Lcom/fyber/inneractive/sdk/player/cache/h$f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->h:Lcom/fyber/inneractive/sdk/player/cache/h$f;

    :cond_e
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_15
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->j:Landroid/os/Handler;

    if-eqz p1, :cond_2b

    :try_start_19
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/cache/c;->d(Ljava/lang/String;)Z
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "failed to remove cache key"

    invoke-static {v1, p1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final b()V
    .registers 3

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/cache/h$a;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/player/cache/h$a;-><init>(Lcom/fyber/inneractive/sdk/player/cache/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_53

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-boolean v0, v0, Lcom/fyber/inneractive/sdk/player/cache/a;->f:Z

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->d:Lcom/fyber/inneractive/sdk/player/cache/b;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->l:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/fyber/inneractive/sdk/player/cache/b;->a(Lcom/fyber/inneractive/sdk/player/cache/a;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/player/cache/b$a;

    move-result-object p1

    sget-object v2, Lcom/fyber/inneractive/sdk/player/cache/b$a;->INVALID:Lcom/fyber/inneractive/sdk/player/cache/b$a;

    if-ne p1, v2, :cond_2e

    new-instance p1, Lcom/fyber/inneractive/sdk/player/cache/h$e;

    const-string v2, "Failed cache validation"

    invoke-direct {p1, v2}, Lcom/fyber/inneractive/sdk/player/cache/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Z)V

    goto :goto_4c

    :cond_2e
    sget-object v2, Lcom/fyber/inneractive/sdk/player/cache/b$a;->PARTIAL_CANNOT_VALIDATE:Lcom/fyber/inneractive/sdk/player/cache/b$a;

    if-ne p1, v2, :cond_35

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->m:Z

    goto :goto_4c

    :cond_35
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iput-boolean v1, p1, Lcom/fyber/inneractive/sdk/player/cache/a;->f:Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Lcom/fyber/inneractive/sdk/player/cache/a;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->d:Lcom/fyber/inneractive/sdk/player/cache/b;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/b;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/cache/a;->e:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/h;->b()V

    :goto_4c
    monitor-exit v0

    goto/16 :goto_c1

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_51

    throw p1

    :catchall_51
    move-exception p1

    goto :goto_4f

    :cond_53
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_72

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_63

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Ljava/lang/Exception;)V

    goto :goto_6d

    :cond_63
    new-instance p1, Lcom/fyber/inneractive/sdk/player/cache/h$e;

    const-string v0, "download failed"

    invoke-direct {p1, v0}, Lcom/fyber/inneractive/sdk/player/cache/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Ljava/lang/Exception;)V

    :goto_6d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Z)V

    goto :goto_c1

    :cond_72
    const/4 p1, 0x2

    if-ne v0, p1, :cond_c1

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->m:Z

    if-eqz p1, :cond_b4

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7c
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->d:Lcom/fyber/inneractive/sdk/player/cache/b;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/cache/b;->a(Lcom/fyber/inneractive/sdk/player/cache/a;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/player/cache/b$a;

    move-result-object v0

    sget-object v2, Lcom/fyber/inneractive/sdk/player/cache/b$a;->INVALID:Lcom/fyber/inneractive/sdk/player/cache/b$a;

    if-ne v0, v2, :cond_9b

    new-instance v0, Lcom/fyber/inneractive/sdk/player/cache/h$e;

    const-string v2, "Failed cache validation after downloading complete file"

    invoke-direct {v0, v2}, Lcom/fyber/inneractive/sdk/player/cache/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Z)V

    goto :goto_ae

    :cond_9b
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Lcom/fyber/inneractive/sdk/player/cache/a;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h;->d:Lcom/fyber/inneractive/sdk/player/cache/b;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/b;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/cache/a;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/h;->b()V

    :goto_ae
    monitor-exit p1

    goto :goto_be

    :goto_b0
    monitor-exit p1
    :try_end_b1
    .catchall {:try_start_7c .. :try_end_b1} :catchall_b2

    throw v0

    :catchall_b2
    move-exception v0

    goto :goto_b0

    :cond_b4
    sget-object p1, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/cache/h$c;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/cache/h$c;-><init>(Lcom/fyber/inneractive/sdk/player/cache/h;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_be
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    :cond_c1
    :goto_c1
    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.cache.h.a (com.fyber.inneractive.sdk.player.cache.h$a)
.class public Lcom/fyber/inneractive/sdk/player/cache/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/cache/h;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/h;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$a;->a:Lcom/fyber/inneractive/sdk/player/cache/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h$a;->a:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->g:Lcom/fyber/inneractive/sdk/player/cache/h$i;

    if-eqz v1, :cond_e

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    check-cast v1, Lcom/fyber/inneractive/sdk/player/cache/d$a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/cache/d$a;->a(Lcom/fyber/inneractive/sdk/player/cache/h;Lcom/fyber/inneractive/sdk/player/cache/a;Ljava/lang/Exception;)V

    :cond_e
    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.cache.h.b (com.fyber.inneractive.sdk.player.cache.h$b)
.class public Lcom/fyber/inneractive/sdk/player/cache/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Exception;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/cache/h;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/h;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$b;->b:Lcom/fyber/inneractive/sdk/player/cache/h;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/cache/h$b;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h$b;->b:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->g:Lcom/fyber/inneractive/sdk/player/cache/h$i;

    if-eqz v1, :cond_f

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/cache/h$b;->a:Ljava/lang/Exception;

    check-cast v1, Lcom/fyber/inneractive/sdk/player/cache/d$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/cache/d$a;->a(Lcom/fyber/inneractive/sdk/player/cache/h;Lcom/fyber/inneractive/sdk/player/cache/a;Ljava/lang/Exception;)V

    :cond_f
    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.cache.h.c (com.fyber.inneractive.sdk.player.cache.h$c)
.class public Lcom/fyber/inneractive/sdk/player/cache/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/cache/h;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/h;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$c;->a:Lcom/fyber/inneractive/sdk/player/cache/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h$c;->a:Lcom/fyber/inneractive/sdk/player/cache/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Z)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.cache.h.d (com.fyber.inneractive.sdk.player.cache.h$d)
.class public synthetic Lcom/fyber/inneractive/sdk/player/cache/h$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->values()[Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fyber/inneractive/sdk/player/cache/h$d;->a:[I

    :try_start_9
    sget-object v1, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->NONE:Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/fyber/inneractive/sdk/player/cache/h$d;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->EXTRACTOR:Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/fyber/inneractive/sdk/player/cache/h$d;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/config/global/features/r$d;->LEGACY:Lcom/fyber/inneractive/sdk/config/global/features/r$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.cache.h.e (com.fyber.inneractive.sdk.player.cache.h$e)
.class public Lcom/fyber/inneractive/sdk/player/cache/h$e;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.cache.h.f (com.fyber.inneractive.sdk.player.cache.h$f)
.class public Lcom/fyber/inneractive/sdk/player/cache/h$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Ljava/io/InputStream;

.field public c:Z

.field public d:Z

.field public e:J

.field public f:J

.field public g:Lcom/fyber/inneractive/sdk/player/cache/c$c;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final synthetic l:Lcom/fyber/inneractive/sdk/player/cache/h;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/h;Ljava/lang/String;I)V
    .registers 7

    const-class v0, Lcom/fyber/inneractive/sdk/config/global/features/r;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->c:Z

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->d:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->f:J

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->h:I

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Lcom/fyber/inneractive/sdk/player/cache/h;)Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object p2

    if-eqz p2, :cond_32

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Lcom/fyber/inneractive/sdk/player/cache/h;)Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object p2

    check-cast p2, Lcom/fyber/inneractive/sdk/config/global/features/r;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/config/global/features/r;->e()I

    move-result p2

    goto :goto_34

    :cond_32
    const/16 p2, 0xa

    :goto_34
    iput p2, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->i:I

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Lcom/fyber/inneractive/sdk/player/cache/h;)Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object p2

    if-eqz p2, :cond_4b

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Lcom/fyber/inneractive/sdk/player/cache/h;)Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object p2

    check-cast p2, Lcom/fyber/inneractive/sdk/config/global/features/r;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/config/global/features/r;->f()I

    move-result p2

    goto :goto_4d

    :cond_4b
    const/16 p2, 0x1f4

    :goto_4d
    iput p2, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->j:I

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Lcom/fyber/inneractive/sdk/player/cache/h;)Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object p2

    if-eqz p2, :cond_64

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a(Lcom/fyber/inneractive/sdk/player/cache/h;)Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/config/global/features/r;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/config/global/features/r;->h()I

    move-result p1

    goto :goto_66

    :cond_64
    const/16 p1, 0x19

    :goto_66
    iput p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->k:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;Ljava/net/URL;Ljava/nio/ByteBuffer;JI)Ljava/net/HttpURLConnection;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fyber/inneractive/sdk/player/cache/h$e;
        }
    .end annotation

    move-object/from16 v0, p0

    const-class v1, Lcom/fyber/inneractive/sdk/config/global/features/r;

    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, p4, v5

    if-lez v7, :cond_25

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "bytes=%d-"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Range"

    invoke-virtual {v2, v9, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/player/cache/h;->r:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v8, :cond_59

    invoke-virtual {v8, v1}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v8

    check-cast v8, Lcom/fyber/inneractive/sdk/config/global/features/r;

    const-string v9, "url_conn_connection_timeout"

    invoke-virtual {v8, v9}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v9, v9, Lcom/fyber/inneractive/sdk/player/cache/h;->r:Lcom/fyber/inneractive/sdk/config/global/s;

    invoke-virtual {v9, v1}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/config/global/features/r;

    const-string v9, "url_conn_read_timeout"

    invoke-virtual {v1, v9}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v8, :cond_50

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_50
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_59
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v9, v8, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    const/16 v8, 0xc8

    if-eq v1, v8, :cond_7d

    const/16 v9, 0xce

    if-eq v1, v9, :cond_7d

    if-gtz v7, :cond_72

    goto :goto_7d

    :cond_72
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v1, Lcom/fyber/inneractive/sdk/player/cache/h$e;

    const-string v2, "HTTP status code != 200"

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/cache/h$e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7d
    :goto_7d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    int-to-long v9, v9

    const-wide/32 v11, 0x2300000

    cmp-long v13, v9, v11

    if-gtz v13, :cond_1b1

    if-gtz v7, :cond_8d

    iput-wide v9, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->f:J

    :cond_8d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    iput-object v11, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->b:Ljava/io/InputStream;

    const/16 v13, 0x64

    cmp-long v14, v9, v5

    if-gtz v14, :cond_9d

    const-wide/32 v11, 0xaf000

    goto :goto_a2

    :cond_9d
    div-int v15, v13, p6

    int-to-long v11, v15

    div-long v11, v9, v11

    :goto_a2
    if-gtz v14, :cond_a8

    const-wide/32 v9, 0xaf000

    goto :goto_b3

    :cond_a8
    iget v14, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->k:I

    add-int v14, p6, v14

    if-le v14, v13, :cond_b0

    move/from16 v14, p6

    :cond_b0
    div-int/2addr v13, v14

    int-to-long v13, v13

    div-long/2addr v9, v13

    :goto_b3
    sget-object v13, Lcom/fyber/inneractive/sdk/util/d;->b:Lcom/fyber/inneractive/sdk/util/d;

    move-object/from16 v14, p3

    invoke-virtual {v13, v14}, Lcom/fyber/inneractive/sdk/util/d;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v13

    iget-wide v14, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->f:J

    cmp-long v16, v14, v5

    if-lez v16, :cond_cc

    iget-wide v14, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    const-wide/16 v16, -0x1

    cmp-long v18, v14, v16

    if-nez v18, :cond_cc

    iput-wide v5, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    goto :goto_ff

    :cond_cc
    if-lez v7, :cond_ff

    if-ne v1, v8, :cond_ff

    iput-wide v5, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v7, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/cache/m;->a(Ljava/io/Closeable;)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->g:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a()V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v7, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/fyber/inneractive/sdk/player/cache/c;->d(Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v7, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/fyber/inneractive/sdk/player/cache/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/player/cache/c$c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a(I)Ljava/io/OutputStream;

    move-result-object v7

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->g:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    goto :goto_101

    :cond_ff
    :goto_ff
    move-object/from16 v7, p1

    :goto_101
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->b:Ljava/io/InputStream;

    invoke-virtual {v1, v13}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1b0

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v4, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_11b

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    goto/16 :goto_1b0

    :cond_11b
    invoke-virtual {v7, v13, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v14, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    int-to-long v5, v1

    add-long/2addr v14, v5

    iput-wide v14, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->c:Z

    if-nez v1, :cond_12c

    cmp-long v1, v14, v11

    if-gez v1, :cond_134

    :cond_12c
    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->d:Z

    if-nez v1, :cond_1ab

    cmp-long v1, v14, v9

    if-ltz v1, :cond_1ab

    :cond_134
    iput-boolean v4, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->c:Z

    cmp-long v1, v14, v9

    if-ltz v1, :cond_13c

    iput-boolean v4, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->d:Z

    :cond_13c
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    if-nez v5, :cond_197

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v8, v6, Lcom/fyber/inneractive/sdk/player/cache/h;->e:Ljava/lang/String;

    iget-object v14, v6, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/fyber/inneractive/sdk/player/cache/c;->a()V

    invoke-virtual {v14, v6}, Lcom/fyber/inneractive/sdk/player/cache/c;->e(Ljava/lang/String;)V

    iget-object v14, v14, Lcom/fyber/inneractive/sdk/player/cache/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fyber/inneractive/sdk/player/cache/c$d;

    if-nez v6, :cond_162

    const/4 v6, 0x0

    goto :goto_166

    :cond_162
    invoke-virtual {v6, v3}, Lcom/fyber/inneractive/sdk/player/cache/c$d;->b(I)Ljava/io/File;

    move-result-object v6

    :goto_166
    iget-object v14, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v14, v14, Lcom/fyber/inneractive/sdk/player/cache/h;->l:Ljava/lang/String;

    new-instance v15, Lcom/fyber/inneractive/sdk/player/cache/a;

    const/16 v18, 0x1

    move-object/from16 p1, v15

    move-object/from16 p2, v5

    move-object/from16 p3, v8

    move-object/from16 p4, v6

    move/from16 p5, v18

    move-object/from16 p6, v14

    invoke-direct/range {p1 .. p6}, Lcom/fyber/inneractive/sdk/player/cache/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;)V

    iput-object v15, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-wide v5, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->f:J

    const-wide/16 v14, 0x0

    cmp-long v1, v5, v14

    if-lez v1, :cond_199

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/a;->e:Ljava/util/Map;

    const-string v6, "http.file.length"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_199

    :cond_197
    const-wide/16 v14, 0x0

    :cond_199
    :goto_199
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->j:Landroid/os/Handler;

    if-eqz v1, :cond_1ad

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->j:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1ad

    :cond_1ab
    const-wide/16 v14, 0x0

    :cond_1ad
    :goto_1ad
    move-wide v5, v14

    goto/16 :goto_101

    :cond_1b0
    :goto_1b0
    return-object v2

    :cond_1b1
    new-instance v1, Lcom/fyber/inneractive/sdk/player/cache/h$g;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "File size to big for cache (max=%s current=%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/cache/h$g;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public run()V
    .registers 22

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    sget-object v0, Lcom/fyber/inneractive/sdk/util/d;->b:Lcom/fyber/inneractive/sdk/util/d;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/util/d;->b()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_12
    new-instance v0, Ljava/net/URL;

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/player/cache/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/player/cache/c$c;

    move-result-object v1

    iput-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->g:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    invoke-virtual {v1, v12}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a(I)Ljava/io/OutputStream;

    move-result-object v13
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_172

    :try_start_34
    iget v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->i:I
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_16f

    sub-int/2addr v1, v11

    move-object v14, v10

    :goto_38
    if-lez v1, :cond_8d

    :try_start_3a
    iget-object v2, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v12, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_16d

    if-eqz v2, :cond_8d

    if-eqz v14, :cond_47

    :try_start_44
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_47

    :catchall_47
    :cond_47
    add-int/lit8 v15, v1, -0x1

    :try_start_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_16d

    :try_start_4d
    iget-wide v5, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    iget v7, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->h:I

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v7}, Lcom/fyber/inneractive/sdk/player/cache/h$f;->a(Ljava/io/OutputStream;Ljava/net/URL;Ljava/nio/ByteBuffer;JI)Ljava/net/HttpURLConnection;

    move-result-object v14
    :try_end_5a
    .catch Lcom/fyber/inneractive/sdk/player/cache/h$g; {:try_start_4d .. :try_end_5a} :catch_8b
    .catchall {:try_start_4d .. :try_end_5a} :catchall_5a

    :catchall_5a
    :try_start_5a
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->b:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/player/cache/m;->a(Ljava/io/Closeable;)V

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    iget-wide v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    iget-wide v3, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->f:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_72

    const/4 v1, 0x0

    goto :goto_38

    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    iget v3, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->j:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_89

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_89
    move v1, v15

    goto :goto_38

    :catch_8b
    move-exception v0

    throw v0

    :cond_8d
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_92
    .catchall {:try_start_5a .. :try_end_92} :catchall_16d

    :try_start_92
    iget-wide v2, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->f:J

    iget-wide v4, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_125

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto/16 :goto_125

    :cond_a4
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    invoke-static {v13}, Lcom/fyber/inneractive/sdk/player/cache/m;->a(Ljava/io/Closeable;)V

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    if-eqz v2, :cond_100

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/cache/a;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b7
    .catchall {:try_start_92 .. :try_end_b7} :catchall_16a

    :try_start_b7
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->g:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/cache/c$c;->c:Z

    if-eqz v3, :cond_cc

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/cache/c$c;->d:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-static {v3, v0, v12}, Lcom/fyber/inneractive/sdk/player/cache/c;->a(Lcom/fyber/inneractive/sdk/player/cache/c;Lcom/fyber/inneractive/sdk/player/cache/c$c;Z)V

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/cache/c$c;->d:Lcom/fyber/inneractive/sdk/player/cache/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a:Lcom/fyber/inneractive/sdk/player/cache/c$d;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/cache/c$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/fyber/inneractive/sdk/player/cache/c;->d(Ljava/lang/String;)Z

    goto :goto_d1

    :cond_cc
    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/cache/c$c;->d:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-static {v3, v0, v11}, Lcom/fyber/inneractive/sdk/player/cache/c;->a(Lcom/fyber/inneractive/sdk/player/cache/c;Lcom/fyber/inneractive/sdk/player/cache/c$c;Z)V

    :goto_d1
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    monitor-enter v3
    :try_end_d6
    .catchall {:try_start_b7 .. :try_end_d6} :catchall_fd

    :try_start_d6
    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/cache/c;->a()V

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/cache/c;->f()V

    iget-object v0, v3, Lcom/fyber/inneractive/sdk/player/cache/c;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_e1
    .catchall {:try_start_d6 .. :try_end_e1} :catchall_fa

    :try_start_e1
    monitor-exit v3

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v12}, Lcom/fyber/inneractive/sdk/player/cache/c;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, v3, Lcom/fyber/inneractive/sdk/player/cache/a;->a:Ljava/io/File;

    monitor-exit v2
    :try_end_f3
    .catchall {:try_start_e1 .. :try_end_f3} :catchall_fd

    :try_start_f3
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iput-boolean v12, v0, Lcom/fyber/inneractive/sdk/player/cache/a;->c:Z
    :try_end_f9
    .catchall {:try_start_f3 .. :try_end_f9} :catchall_16a

    goto :goto_13c

    :catchall_fa
    move-exception v0

    :try_start_fb
    monitor-exit v3

    throw v0

    :catchall_fd
    move-exception v0

    monitor-exit v2
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_fd

    :try_start_ff
    throw v0

    :cond_100
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v16

    iget-object v2, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/cache/h;->e:Ljava/lang/String;

    iget-object v4, v2, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v12}, Lcom/fyber/inneractive/sdk/player/cache/c;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v2, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/cache/h;->l:Ljava/lang/String;

    new-instance v4, Lcom/fyber/inneractive/sdk/player/cache/a;

    move-object v15, v4

    move-object/from16 v17, v3

    move-object/from16 v20, v2

    invoke-direct/range {v15 .. v20}, Lcom/fyber/inneractive/sdk/player/cache/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;)V

    iput-object v4, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    goto :goto_13c

    :cond_125
    :goto_125
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->g:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a()V

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->b:Lcom/fyber/inneractive/sdk/player/cache/c;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fyber/inneractive/sdk/player/cache/c;->d(Ljava/lang/String;)Z

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/cache/h;->a()Ljava/lang/String;

    :goto_13c
    monitor-exit v1
    :try_end_13d
    .catchall {:try_start_ff .. :try_end_13d} :catchall_16a

    :try_start_13d
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    invoke-static {v0, v12}, Lcom/fyber/inneractive/sdk/player/cache/h;->d(Lcom/fyber/inneractive/sdk/player/cache/h;Z)Z

    if-eqz v14, :cond_147

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_147
    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_161

    iget-object v0, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->j:Landroid/os/Handler;

    if-eqz v0, :cond_161

    iget-wide v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->e:J

    iget-wide v3, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->f:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_161

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_161
    .catchall {:try_start_13d .. :try_end_161} :catchall_16d

    :cond_161
    invoke-static {v13}, Lcom/fyber/inneractive/sdk/player/cache/m;->a(Ljava/io/Closeable;)V

    if-eqz v14, :cond_1a5

    :try_start_166
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_169
    .catchall {:try_start_166 .. :try_end_169} :catchall_1a5

    goto :goto_1a5

    :catchall_16a
    move-exception v0

    :try_start_16b
    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16a

    :try_start_16c
    throw v0
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16d

    :catchall_16d
    move-exception v0

    goto :goto_175

    :catchall_16f
    move-exception v0

    move-object v14, v10

    goto :goto_175

    :catchall_172
    move-exception v0

    move-object v13, v10

    move-object v14, v13

    :goto_175
    :try_start_175
    const-string v1, "%s | mDownloadRunnable exception raised during download"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/cache/h;->a:Ljava/lang/String;

    aput-object v3, v2, v12

    invoke-static {v1, v0, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v1, "mDownloadRunnable exception raised during download"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10, v10}, Lcom/fyber/inneractive/sdk/network/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;)V
    :try_end_18b
    .catchall {:try_start_175 .. :try_end_18b} :catchall_1ad

    :try_start_18b
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->g:Lcom/fyber/inneractive/sdk/player/cache/c$c;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/cache/c$c;->a()V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_190} :catch_190
    .catchall {:try_start_18b .. :try_end_190} :catchall_1ad

    :catch_190
    :try_start_190
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/player/cache/h$f;->l:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/cache/h;->j:Landroid/os/Handler;

    if-eqz v1, :cond_19d

    invoke-virtual {v1, v11, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_19d
    .catchall {:try_start_190 .. :try_end_19d} :catchall_1ad

    :cond_19d
    invoke-static {v13}, Lcom/fyber/inneractive/sdk/player/cache/m;->a(Ljava/io/Closeable;)V

    if-eqz v14, :cond_1a5

    :try_start_1a2
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_1a5

    :catchall_1a5
    :cond_1a5
    :goto_1a5
    sget-object v0, Lcom/fyber/inneractive/sdk/util/d;->b:Lcom/fyber/inneractive/sdk/util/d;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/d;->a:Ljava/util/Queue;

    invoke-interface {v0, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    :catchall_1ad
    move-exception v0

    invoke-static {v13}, Lcom/fyber/inneractive/sdk/player/cache/m;->a(Ljava/io/Closeable;)V

    if-eqz v14, :cond_1b6

    :try_start_1b3
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1b6
    .catchall {:try_start_1b3 .. :try_end_1b6} :catchall_1b6

    :catchall_1b6
    :cond_1b6
    sget-object v1, Lcom/fyber/inneractive/sdk/util/d;->b:Lcom/fyber/inneractive/sdk/util/d;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/util/d;->a:Ljava/util/Queue;

    invoke-interface {v1, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw v0
.end method

###### Class com.fyber.inneractive.sdk.player.cache.h.g (com.fyber.inneractive.sdk.player.cache.h$g)
.class public Lcom/fyber/inneractive/sdk/player/cache/h$g;
.super Lcom/fyber/inneractive/sdk/player/cache/h$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/player/cache/h$e;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.cache.h.InterfaceC0171h (com.fyber.inneractive.sdk.player.cache.h$h)
.class public interface abstract Lcom/fyber/inneractive/sdk/player/cache/h$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "h"
.end annotation

###### Class com.fyber.inneractive.sdk.player.cache.h.i (com.fyber.inneractive.sdk.player.cache.h$i)
.class public interface abstract Lcom/fyber/inneractive/sdk/player/cache/h$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation
