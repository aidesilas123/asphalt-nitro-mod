###### Class com.bykv.vk.openvk.component.video.a.b.d.AnonymousClass4.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.b.d$4$1)
.class Lcom/bykv/vk/openvk/component/video/a/b/d$4$1;
.super Ljava/lang/Thread;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/b/d$4;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/d$4;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/d$4;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$4$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/d$4;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/16 v0, 0xa

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
