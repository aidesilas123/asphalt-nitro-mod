###### Class com.vungle.ads.internal.util.ActivityManager.Companion.a (com.vungle.ads.internal.util.ActivityManager$Companion$a)
.class public final Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;
.super Lcom/vungle/ads/internal/util/ActivityManager$b;
.source "ActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/util/ActivityManager$Companion;->startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/util/ActivityManager$a;Lcom/vungle/ads/internal/ui/d;)V
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
        "com/vungle/ads/internal/util/ActivityManager$Companion$startWhenForeground$1",
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
.field final synthetic $adOpenCallback:Lcom/vungle/ads/internal/ui/d;

.field final synthetic $deepLinkOverrideIntent:Landroid/content/Intent;

.field final synthetic $defaultIntent:Landroid/content/Intent;

.field final synthetic $leftCallback:Lcom/vungle/ads/internal/util/ActivityManager$a;

.field final synthetic $weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/d;Lcom/vungle/ads/internal/util/ActivityManager$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Lcom/vungle/ads/internal/ui/d;",
            "Lcom/vungle/ads/internal/util/ActivityManager$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$weakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$deepLinkOverrideIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$defaultIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$adOpenCallback:Lcom/vungle/ads/internal/ui/d;

    iput-object p5, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$leftCallback:Lcom/vungle/ads/internal/util/ActivityManager$a;

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/ActivityManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 6

    invoke-super {p0}, Lcom/vungle/ads/internal/util/ActivityManager$b;->onStart()V

    sget-object v0, Lcom/vungle/ads/internal/util/ActivityManager;->Companion:Lcom/vungle/ads/internal/util/ActivityManager$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getInstance()Lcom/vungle/ads/internal/util/ActivityManager;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/vungle/ads/internal/util/ActivityManager;->access$removeListener(Lcom/vungle/ads/internal/util/ActivityManager;Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$deepLinkOverrideIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$defaultIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$adOpenCallback:Lcom/vungle/ads/internal/ui/d;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->access$startActivityHandleException(Lcom/vungle/ads/internal/util/ActivityManager$Companion;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/d;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getInstance()Lcom/vungle/ads/internal/util/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;->$leftCallback:Lcom/vungle/ads/internal/util/ActivityManager$a;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager$a;)V

    :cond_2b
    return-void
.end method
