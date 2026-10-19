###### Class com.vungle.ads.internal.util.ActivityManager.d (com.vungle.ads.internal.util.ActivityManager$d)
.class public final Lcom/vungle/ads/internal/util/ActivityManager$d;
.super Lcom/vungle/ads/internal/util/ActivityManager$b;
.source "ActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/util/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "com/vungle/ads/internal/util/ActivityManager$addOnNextAppLeftCallback$callback$1",
        "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;",
        "wasPaused",
        "",
        "getWasPaused",
        "()Z",
        "setWasPaused",
        "(Z)V",
        "onPause",
        "",
        "onResume",
        "onStop",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cancelRunnable:Ljava/lang/Runnable;

.field final synthetic $weakCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/ads/internal/util/ActivityManager$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vungle/ads/internal/util/ActivityManager;

.field private wasPaused:Z


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/vungle/ads/internal/util/ActivityManager;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/ads/internal/util/ActivityManager$a;",
            ">;",
            "Lcom/vungle/ads/internal/util/ActivityManager;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->$weakCallback:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    iput-object p3, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/ActivityManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWasPaused()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->wasPaused:Z

    return v0
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/vungle/ads/internal/util/ActivityManager$b;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->wasPaused:Z

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getHandler$p(Lcom/vungle/ads/internal/util/ActivityManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->$cancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 7

    invoke-super {p0}, Lcom/vungle/ads/internal/util/ActivityManager$b;->onResume()V

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getHandler$p(Lcom/vungle/ads/internal/util/ActivityManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->$cancelRunnable:Ljava/lang/Runnable;

    sget-object v2, Lcom/vungle/ads/internal/util/ActivityManager;->Companion:Lcom/vungle/ads/internal/util/ActivityManager$Companion;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getCONFIG_CHANGE_DELAY()J

    move-result-wide v2

    const/4 v4, 0x2

    int-to-long v4, v4

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/vungle/ads/internal/util/ActivityManager$b;->onStop()V

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->$weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/ActivityManager$a;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->wasPaused:Z

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v1}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getAdLeftCallbacks$p(Lcom/vungle/ads/internal/util/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Lcom/vungle/ads/internal/util/ActivityManager$a;->onLeftApplication()V

    :cond_20
    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/ActivityManager;->access$removeOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager;Lcom/vungle/ads/internal/util/ActivityManager$a;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getHandler$p(Lcom/vungle/ads/internal/util/ActivityManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->$cancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_32
    return-void
.end method

.method public final setWasPaused(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vungle/ads/internal/util/ActivityManager$d;->wasPaused:Z

    return-void
.end method
