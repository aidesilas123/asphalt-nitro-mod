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
