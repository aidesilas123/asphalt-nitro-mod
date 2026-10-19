###### Class com.bykv.vk.openvk.component.video.a.b.f.AnonymousClass2 (com.bykv.vk.openvk.component.video.a.b.f$2)
.class Lcom/bykv/vk/openvk/component/video/a/b/f$2;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/f;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "ProxyServer"

    :try_start_2
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v4}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_11a

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->d(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/f;I)I

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->e(Lcom/bykv/vk/openvk/component/video/a/b/f;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    const-string v0, "socket not bound"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->c(Lcom/bykv/vk/openvk/component/video/a/b/f;)V

    return-void

    :cond_3c
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->e(Lcom/bykv/vk/openvk/component/video/a/b/f;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/j;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->f(Lcom/bykv/vk/openvk/component/video/a/b/f;)Z

    move-result v1

    if-nez v1, :cond_54

    return-void

    :cond_54
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "run:  state = "

    aput-object v3, v2, v5

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v4}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_74

    return-void

    :cond_74
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v5

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v1, :cond_8c

    const-string v1, "proxy server start!"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    :try_start_8c
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_ed

    if-ne v1, v6, :cond_10b

    :try_start_98
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->d(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a2} :catch_da
    .catchall {:try_start_98 .. :try_end_a2} :catchall_ed

    :try_start_a2
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->h(Lcom/bykv/vk/openvk/component/video/a/b/f;)Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    move-result-object v2

    if-eqz v2, :cond_d6

    new-instance v3, Lcom/bykv/vk/openvk/component/video/a/b/g$a;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;-><init>()V

    invoke-virtual {v3, v2}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Lcom/bykv/vk/openvk/component/video/a/b/g$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;->a(Ljava/net/Socket;)Lcom/bykv/vk/openvk/component/video/a/b/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->i(Lcom/bykv/vk/openvk/component/video/a/b/f;)Lcom/bykv/vk/openvk/component/video/a/b/g$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/g$c;)Lcom/bykv/vk/openvk/component/video/a/b/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;->a()Lcom/bykv/vk/openvk/component/video/a/b/g;

    move-result-object v1

    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/f$2$1;

    const-string v3, "ProxyTask"

    const/16 v4, 0xa

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f$2$1;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/f$2;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/a/b/g;)V

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_8c

    :cond_d6
    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/net/Socket;)V

    goto :goto_8c

    :catch_da
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "accept error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_a2 .. :try_end_e7} :catchall_ed

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x3

    if-le v5, v1, :cond_8c

    goto :goto_10b

    :catchall_ed
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy server crashed!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "error"

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    :goto_10b
    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v1, :cond_114

    const-string v1, "proxy server closed!"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_114
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->c(Lcom/bykv/vk/openvk/component/video/a/b/f;)V

    return-void

    :catch_11a
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v2, :cond_137

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create ServerSocket error!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_137
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create ServerSocket error"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->c(Lcom/bykv/vk/openvk/component/video/a/b/f;)V

    return-void
.end method
