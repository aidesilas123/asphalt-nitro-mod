###### Class com.vungle.ads.internal.util.ActivityManager.c (com.vungle.ads.internal.util.ActivityManager$c)
.class public final Lcom/vungle/ads/internal/util/ActivityManager$c;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/vungle/ads/internal/util/ActivityManager$addOnNextAppLeftCallback$1",
        "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;",
        "onStart",
        "",
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


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/util/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/util/ActivityManager;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/ads/internal/util/ActivityManager$a;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager$c;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/ActivityManager$c;->$weakCallback:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/vungle/ads/internal/util/ActivityManager$c;->$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/ActivityManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 7

    sget-object v0, Lcom/vungle/ads/internal/util/ActivityManager;->Companion:Lcom/vungle/ads/internal/util/ActivityManager$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getInstance()Lcom/vungle/ads/internal/util/ActivityManager;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/vungle/ads/internal/util/ActivityManager;->access$removeListener(Lcom/vungle/ads/internal/util/ActivityManager;Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$c;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v1}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getAdLeftCallbacks$p(Lcom/vungle/ads/internal/util/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/ads/internal/util/ActivityManager$c;->$weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/util/ActivityManager$b;

    if-eqz v1, :cond_33

    iget-object v2, p0, Lcom/vungle/ads/internal/util/ActivityManager$c;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v2}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getHandler$p(Lcom/vungle/ads/internal/util/ActivityManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v3, p0, Lcom/vungle/ads/internal/util/ActivityManager$c;->$cancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getTIMEOUT()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$c;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/ActivityManager;->addListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    :cond_33
    return-void
.end method
