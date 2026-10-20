###### Class com.bykv.vk.openvk.component.video.a.d.a (com.bykv.vk.openvk.component.video.a.d.a)
.class public abstract Lcom/bykv/vk/openvk/component/video/a/d/a;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/a/d/c;


# instance fields
.field protected a:Z

.field private b:Lcom/bykv/vk/openvk/component/video/a/d/c$e;

.field private c:Lcom/bykv/vk/openvk/component/video/a/d/c$b;

.field private d:Lcom/bykv/vk/openvk/component/video/a/d/c$a;

.field private e:Lcom/bykv/vk/openvk/component/video/a/d/c$f;

.field private f:Lcom/bykv/vk/openvk/component/video/a/d/c$g;

.field private g:Lcom/bykv/vk/openvk/component/video/a/d/c$c;

.field private h:Lcom/bykv/vk/openvk/component/video/a/d/c$d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->b:Lcom/bykv/vk/openvk/component/video/a/d/c$e;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->d:Lcom/bykv/vk/openvk/component/video/a/d/c$a;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->c:Lcom/bykv/vk/openvk/component/video/a/d/c$b;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->e:Lcom/bykv/vk/openvk/component/video/a/d/c$f;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->f:Lcom/bykv/vk/openvk/component/video/a/d/c$g;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->g:Lcom/bykv/vk/openvk/component/video/a/d/c$c;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->h:Lcom/bykv/vk/openvk/component/video/a/d/c$d;

    return-void
.end method

.method protected final a(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->d:Lcom/bykv/vk/openvk/component/video/a/d/c$a;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/a/d/c$a;->a(Lcom/bykv/vk/openvk/component/video/a/d/c;I)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception p1

    const-string v0, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnBufferingUpdate error: "

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method

.method protected final a(IIII)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->f:Lcom/bykv/vk/openvk/component/video/a/d/c$g;

    if-eqz v0, :cond_15

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/bykv/vk/openvk/component/video/a/d/c$g;->a(Lcom/bykv/vk/openvk/component/video/a/d/c;IIII)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string p3, "AbstractMediaPlayer.notifyOnVideoSizeChanged error: "

    invoke-static {p2, p3, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/component/video/a/d/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->d:Lcom/bykv/vk/openvk/component/video/a/d/c$a;

    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/component/video/a/d/c$b;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->c:Lcom/bykv/vk/openvk/component/video/a/d/c$b;

    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/component/video/a/d/c$c;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->g:Lcom/bykv/vk/openvk/component/video/a/d/c$c;

    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/component/video/a/d/c$d;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->h:Lcom/bykv/vk/openvk/component/video/a/d/c$d;

    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/component/video/a/d/c$e;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->b:Lcom/bykv/vk/openvk/component/video/a/d/c$e;

    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/component/video/a/d/c$f;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->e:Lcom/bykv/vk/openvk/component/video/a/d/c$f;

    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/component/video/a/d/c$g;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->f:Lcom/bykv/vk/openvk/component/video/a/d/c$g;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->a:Z

    return-void
.end method

.method protected final a(II)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->g:Lcom/bykv/vk/openvk/component/video/a/d/c$c;

    if-eqz v1, :cond_c

    invoke-interface {v1, p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/a/d/c$c;->a(Lcom/bykv/vk/openvk/component/video/a/d/c;II)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catchall_d
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnError error: "

    invoke-static {p2, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected final b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->b:Lcom/bykv/vk/openvk/component/video/a/d/c$e;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/a/d/c$e;->b(Lcom/bykv/vk/openvk/component/video/a/d/c;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception v0

    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnPrepared error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method

.method protected final b(II)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->h:Lcom/bykv/vk/openvk/component/video/a/d/c$d;

    if-eqz v1, :cond_c

    invoke-interface {v1, p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/a/d/c$d;->b(Lcom/bykv/vk/openvk/component/video/a/d/c;II)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catchall_d
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnInfo error: "

    invoke-static {p2, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected final c()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->c:Lcom/bykv/vk/openvk/component/video/a/d/c$b;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/a/d/c$b;->a(Lcom/bykv/vk/openvk/component/video/a/d/c;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception v0

    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnCompletion error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method

.method protected final d()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/a;->e:Lcom/bykv/vk/openvk/component/video/a/d/c$f;

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/a/d/c$f;->c(Lcom/bykv/vk/openvk/component/video/a/d/c;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception v0

    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnSeekComplete error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method
