###### Class com.bykv.vk.openvk.component.video.a.d.b (com.bykv.vk.openvk.component.video.a.d.b)
.class public Lcom/bykv/vk/openvk/component/video/a/d/b;
.super Lcom/bykv/vk/openvk/component/video/a/d/a;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/d/b$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/media/MediaPlayer;

.field private final c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

.field private d:Lcom/bykv/vk/openvk/component/video/a/a/a;

.field private e:Landroid/view/Surface;

.field private final f:Ljava/lang/Object;

.field private volatile g:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_2e

    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/component/video/a/d/b;->a(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x3

    :try_start_17
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_23

    :catchall_1b
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "setAudioStreamType error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/a/d/b$a;-><init>(Lcom/bykv/vk/openvk/component/video/a/d/b;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->p()V

    return-void

    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .registers 13

    const-string v0, "CSJ_VIDEO"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_8c

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_e

    goto/16 :goto_8c

    :cond_e
    :try_start_e
    const-string v1, "android.media.MediaTimeProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.media.SubtitleController"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "android.media.SubtitleController$Anchor"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.media.SubtitleController$Listener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v4, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/c;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    aput-object v6, v5, v7

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mHandler"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_86

    :try_start_52
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_77

    :try_start_5a
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v9, "setSubtitleAnchor"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v2, v10, v8

    aput-object v3, v10, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v8

    aput-object v6, v1, v7

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_5a .. :try_end_76} :catchall_86

    goto :goto_8c

    :catchall_77
    move-exception p1

    :try_start_78
    const-string v1, "subtitleInstance error: "

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_81

    :try_start_7d
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void

    :catchall_81
    move-exception p1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw p1
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p1

    const-string v1, "setSubtitleController error: "

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method private o()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->d:Lcom/bykv/vk/openvk/component/video/a/a/a;

    if-eqz v0, :cond_19

    :try_start_a
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a;->close()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_16

    :catchall_e
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "releaseMediaDataSource error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->d:Lcom/bykv/vk/openvk/component/video/a/a/a;

    :cond_19
    return-void
.end method

.method private p()V
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->c:Lcom/bykv/vk/openvk/component/video/a/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method private q()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->e:Landroid/view/Surface;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->e:Landroid/view/Surface;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_a

    :catchall_a
    :cond_a
    return-void
.end method


# virtual methods
.method public a(JI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_39

    if-eqz p3, :cond_30

    const/4 v0, 0x1

    if-eq p3, v0, :cond_28

    const/4 v0, 0x2

    if-eq p3, v0, :cond_20

    const/4 v0, 0x3

    if-eq p3, v0, :cond_18

    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_3f

    :cond_18
    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    int-to-long p1, p2

    invoke-virtual {p3, p1, p2, v0}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_3f

    :cond_20
    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    int-to-long p1, p2

    invoke-virtual {p3, p1, p2, v0}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_3f

    :cond_28
    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    int-to-long p1, p2

    invoke-virtual {p3, p1, p2, v0}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_3f

    :cond_30
    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    int-to-long p1, p2

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_3f

    :cond_39
    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_3f
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->q()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->e:Landroid/view/Surface;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->g:Z

    if-nez v1, :cond_1d

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->a:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception p1

    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/b;)V
    .registers 4
    .annotation build Lcom/bytedance/component/sdk/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/b;->a()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_19
    return-void
.end method

.method public declared-synchronized a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .registers 3
    .annotation build Lcom/bytedance/component/sdk/annotation/RequiresApi;
        api = 0x17
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/a/a;->a(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/c/c;)Lcom/bykv/vk/openvk/component/video/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->d:Lcom/bykv/vk/openvk/component/video/a/a/a;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/a/b/c;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->d:Lcom/bykv/vk/openvk/component/video/a/a/a;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_25

    :cond_20
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public b(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public c(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public d(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_11

    :cond_c
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_11
    return-void
.end method

.method public e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->q()V

    return-void
.end method

.method public g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_7
    return-void
.end method

.method public i()J
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_8

    int-to-long v0, v0

    return-wide v0

    :catchall_8
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "getCurrentPosition error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public j()J
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_8

    int-to-long v0, v0

    return-wide v0

    :catchall_8
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "getDuration error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->g:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->g:Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->q()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->o()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/d/a;->a()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->p()V

    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public l()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    const-string v1, "CSJ_VIDEO"

    const-string v2, "reset error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->o()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/d/a;->a()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/d/b;->p()V

    return-void
.end method

.method public m()I
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

###### Class com.bykv.vk.openvk.component.video.a.d.b.a (com.bykv.vk.openvk.component.video.a.d.b$a)
.class Lcom/bykv/vk/openvk/component/video/a/d/b$a;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/a/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/a/d/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/a/d/b;

    if-eqz p1, :cond_16

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/component/video/a/d/a;->a(I)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_16

    :catchall_e
    move-exception p1

    const-string p2, "CSJ_VIDEO"

    const-string v0, "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: "

    invoke-static {p2, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/a/d/b;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/a/d/a;->c()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_16

    :catchall_e
    move-exception p1

    const-string v0, "CSJ_VIDEO"

    const-string v1, "AndroidMediaPlayerListenerHolder.onCompletion error: "

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9

    const-string p1, "CSJ_VIDEO"

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onError: "

    aput-object v2, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p1, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/a/d/b;

    if-eqz v1, :cond_2c

    invoke-virtual {v1, p2, p3}, Lcom/bykv/vk/openvk/component/video/a/d/a;->a(II)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2d

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0

    :catchall_2d
    move-exception p2

    const-string p3, "AndroidMediaPlayerListenerHolder.onError error: "

    invoke-static {p1, p3, p2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 6

    const-string p1, "CSJ_VIDEO"

    const/4 v0, 0x0

    :try_start_3
    const-string v1, "onInfo: "

    invoke-static {p1, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/a/d/b;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p2, p3}, Lcom/bykv/vk/openvk/component/video/a/d/a;->b(II)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catchall_1a
    move-exception p2

    const-string p3, "AndroidMediaPlayerListenerHolder.onInfo error: "

    invoke-static {p1, p3, p2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/a/d/b;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/a/d/a;->b()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_16

    :catchall_e
    move-exception p1

    const-string v0, "CSJ_VIDEO"

    const-string v1, "AndroidMediaPlayerListenerHolder.onPrepared error: "

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/a/d/b;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/a/d/a;->d()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_16

    :catchall_e
    move-exception p1

    const-string v0, "CSJ_VIDEO"

    const-string v1, "AndroidMediaPlayerListenerHolder.onSeekComplete error: "

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/a/d/b;

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/bykv/vk/openvk/component/video/a/d/a;->a(IIII)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception p1

    const-string p2, "CSJ_VIDEO"

    const-string p3, "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: "

    invoke-static {p2, p3, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    return-void
.end method
