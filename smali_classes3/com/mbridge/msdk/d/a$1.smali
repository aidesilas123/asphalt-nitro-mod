###### Class com.mbridge.msdk.d.a.AnonymousClass1 (com.mbridge.msdk.d.a$1)
.class final Lcom/mbridge/msdk/d/a$1;
.super Landroid/os/Handler;
.source "LoopTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/d/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/d/a$1;->a:Lcom/mbridge/msdk/d/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/d/a$1;->a:Lcom/mbridge/msdk/d/a;

    monitor-enter v0

    :try_start_3
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    goto :goto_32

    :cond_c
    iget-object p1, p0, Lcom/mbridge/msdk/d/a$1;->a:Lcom/mbridge/msdk/d/a;

    invoke-static {p1}, Lcom/mbridge/msdk/d/a;->c(Lcom/mbridge/msdk/d/a;)V

    goto :goto_32

    :cond_12
    iget-object p1, p0, Lcom/mbridge/msdk/d/a$1;->a:Lcom/mbridge/msdk/d/a;

    invoke-static {p1}, Lcom/mbridge/msdk/d/a;->a(Lcom/mbridge/msdk/d/a;)Z

    move-result p1

    if-eqz p1, :cond_1c

    monitor-exit v0

    return-void

    :cond_1c
    iget-object p1, p0, Lcom/mbridge/msdk/d/a$1;->a:Lcom/mbridge/msdk/d/a;

    invoke-static {p1}, Lcom/mbridge/msdk/d/a;->b(Lcom/mbridge/msdk/d/a;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/mbridge/msdk/d/a;->a(Lcom/mbridge/msdk/d/a;J)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/mbridge/msdk/d/a$1;->a:Lcom/mbridge/msdk/d/a;

    invoke-static {v1}, Lcom/mbridge/msdk/d/a;->b(Lcom/mbridge/msdk/d/a;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method
