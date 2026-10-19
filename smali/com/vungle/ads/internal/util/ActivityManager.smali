###### Class com.vungle.ads.internal.util.ActivityManager (com.vungle.ads.internal.util.ActivityManager)
.class public final Lcom/vungle/ads/internal/util/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/util/ActivityManager$b;,
        Lcom/vungle/ads/internal/util/ActivityManager$a;,
        Lcom/vungle/ads/internal/util/ActivityManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 .2\u00020\u0001:\u0003./0B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0006J\u0010\u0010\u0019\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0008\u0010\u001e\u001a\u00020\u000eH\u0005J\u000e\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dJ\u001a\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010\'\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010(\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"2\u0006\u0010)\u001a\u00020$H\u0016J\u0010\u0010*\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0006H\u0002J\u0012\u0010-\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002R\u001c\u0010\u0003\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/vungle/ads/internal/util/ActivityManager;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "()V",
        "adLeftCallbacks",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/vungle/ads/internal/util/ActivityManager$LeftApplicationCallback;",
        "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;",
        "callbacks",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "configChangeRunnable",
        "Ljava/lang/Runnable;",
        "handler",
        "Landroid/os/Handler;",
        "<set-?>",
        "",
        "isInitialized",
        "()Z",
        "paused",
        "resumed",
        "",
        "started",
        "stopped",
        "addListener",
        "",
        "callback",
        "addOnNextAppLeftCallback",
        "leftCallback",
        "deInit",
        "context",
        "Landroid/content/Context;",
        "inForeground",
        "init",
        "onActivityCreated",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
        "removeListener",
        "removeOnNextAppLeftCallback",
        "Companion",
        "LeftApplicationCallback",
        "LifeCycleCallback",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CONFIG_CHANGE_DELAY:J

.field public static final Companion:Lcom/vungle/ads/internal/util/ActivityManager$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:J

.field private static final instance:Lcom/vungle/ads/internal/util/ActivityManager;


# instance fields
.field private final adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/vungle/ads/internal/util/ActivityManager$a;",
            "Lcom/vungle/ads/internal/util/ActivityManager$b;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/vungle/ads/internal/util/ActivityManager$b;",
            ">;"
        }
    .end annotation
.end field

.field private final configChangeRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isInitialized:Z

.field private paused:Z

.field private resumed:I

.field private started:I

.field private stopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/util/ActivityManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/util/ActivityManager;->Companion:Lcom/vungle/ads/internal/util/ActivityManager$Companion;

    const-class v0, Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/util/ActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/ActivityManager;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/ActivityManager;->instance:Lcom/vungle/ads/internal/util/ActivityManager;

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/vungle/ads/internal/util/ActivityManager;->TIMEOUT:J

    const-wide/16 v0, 0x2bc

    sput-wide v0, Lcom/vungle/ads/internal/util/ActivityManager;->CONFIG_CHANGE_DELAY:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->paused:Z

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->stopped:Z

    new-instance v0, Lcom/vungle/ads/internal/util/a;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/util/a;-><init>(Lcom/vungle/ads/internal/util/ActivityManager;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->configChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/util/ActivityManager;)V
    .registers 1

    invoke-static {p0}, Lcom/vungle/ads/internal/util/ActivityManager;->configChangeRunnable$lambda-0(Lcom/vungle/ads/internal/util/ActivityManager;)V

    return-void
.end method

.method public static final synthetic access$getAdLeftCallbacks$p(Lcom/vungle/ads/internal/util/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getCONFIG_CHANGE_DELAY$cp()J
    .registers 2

    sget-wide v0, Lcom/vungle/ads/internal/util/ActivityManager;->CONFIG_CHANGE_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/vungle/ads/internal/util/ActivityManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/vungle/ads/internal/util/ActivityManager;
    .registers 1

    sget-object v0, Lcom/vungle/ads/internal/util/ActivityManager;->instance:Lcom/vungle/ads/internal/util/ActivityManager;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/vungle/ads/internal/util/ActivityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTIMEOUT$cp()J
    .registers 2

    sget-wide v0, Lcom/vungle/ads/internal/util/ActivityManager;->TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$removeListener(Lcom/vungle/ads/internal/util/ActivityManager;Lcom/vungle/ads/internal/util/ActivityManager$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/util/ActivityManager;->removeListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    return-void
.end method

.method public static final synthetic access$removeOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager;Lcom/vungle/ads/internal/util/ActivityManager$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/util/ActivityManager;->removeOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager$a;)V

    return-void
.end method

.method private static final configChangeRunnable$lambda-0(Lcom/vungle/ads/internal/util/ActivityManager;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->resumed:I

    const/4 v1, 0x1

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->paused:Z

    if-nez v0, :cond_26

    iput-boolean v1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->paused:Z

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/util/ActivityManager$b;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/util/ActivityManager$b;->onPause()V

    goto :goto_16

    :cond_26
    iget v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->started:I

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->paused:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->stopped:Z

    if-nez v0, :cond_4a

    iput-boolean v1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->stopped:Z

    iget-object p0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/ActivityManager$b;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ActivityManager$b;->onStop()V

    goto :goto_3a

    :cond_4a
    return-void
.end method

.method private final removeListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final removeOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager$a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/util/ActivityManager$b;

    if-eqz p1, :cond_10

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/util/ActivityManager;->removeListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager$a;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->isInitialized:Z

    if-nez v0, :cond_b

    invoke-interface {p1}, Lcom/vungle/ads/internal/util/ActivityManager$a;->onLeftApplication()V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/vungle/ads/internal/util/ActivityManager$e;

    invoke-direct {v1, p0, v0}, Lcom/vungle/ads/internal/util/ActivityManager$e;-><init>(Lcom/vungle/ads/internal/util/ActivityManager;Ljava/lang/ref/WeakReference;)V

    new-instance v2, Lcom/vungle/ads/internal/util/ActivityManager$d;

    invoke-direct {v2, v0, p0, v1}, Lcom/vungle/ads/internal/util/ActivityManager$d;-><init>(Ljava/lang/ref/WeakReference;Lcom/vungle/ads/internal/util/ActivityManager;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/vungle/ads/internal/util/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/ActivityManager;->inForeground()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_2e

    sget-wide v3, Lcom/vungle/ads/internal/util/ActivityManager;->TIMEOUT:J

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    invoke-virtual {p0, v2}, Lcom/vungle/ads/internal/util/ActivityManager;->addListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    goto :goto_3c

    :cond_32
    sget-object p1, Lcom/vungle/ads/internal/util/ActivityManager;->instance:Lcom/vungle/ads/internal/util/ActivityManager;

    new-instance v2, Lcom/vungle/ads/internal/util/ActivityManager$c;

    invoke-direct {v2, p0, v0, v1}, Lcom/vungle/ads/internal/util/ActivityManager$c;-><init>(Lcom/vungle/ads/internal/util/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/util/ActivityManager;->addListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    :goto_3c
    return-void
.end method

.method public final deInit(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->started:I

    iput p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->resumed:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->paused:Z

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->stopped:Z

    iput-boolean p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->isInitialized:Z

    iget-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method protected final inForeground()Z
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->isInitialized:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->started:I

    if-lez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->isInitialized:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->isInitialized:Z

    return-void
.end method

.method public final isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->isInitialized:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->resumed:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->resumed:I

    iget-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->configChangeRunnable:Ljava/lang/Runnable;

    sget-wide v1, Lcom/vungle/ads/internal/util/ActivityManager;->CONFIG_CHANGE_DELAY:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->resumed:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->resumed:I

    if-ne p1, v0, :cond_33

    iget-boolean p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->paused:Z

    if-eqz p1, :cond_2a

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->paused:Z

    iget-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/ActivityManager$b;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ActivityManager$b;->onResume()V

    goto :goto_1a

    :cond_2a
    iget-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->configChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->started:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->started:I

    if-ne p1, v0, :cond_2a

    iget-boolean p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->stopped:Z

    if-eqz p1, :cond_2a

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->stopped:Z

    iget-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/ActivityManager$b;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ActivityManager$b;->onStart()V

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->started:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->started:I

    iget-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager;->configChangeRunnable:Ljava/lang/Runnable;

    sget-wide v1, Lcom/vungle/ads/internal/util/ActivityManager;->CONFIG_CHANGE_DELAY:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

###### Class com.vungle.ads.internal.util.ActivityManager.Companion (com.vungle.ads.internal.util.ActivityManager$Companion)
.class public final Lcom/vungle/ads/internal/util/ActivityManager$Companion;
.super Ljava/lang/Object;
.source "ActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/util/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J.\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J,\u0010!\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010#\u001a\u0004\u0018\u00010$J6\u0010!\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u0019\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000e\u0010\u0002\u001a\u0004\u0008\u000f\u0010\u0007R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006%"
    }
    d2 = {
        "Lcom/vungle/ads/internal/util/ActivityManager$Companion;",
        "",
        "()V",
        "CONFIG_CHANGE_DELAY",
        "",
        "getCONFIG_CHANGE_DELAY$annotations",
        "getCONFIG_CHANGE_DELAY",
        "()J",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "getTAG",
        "()Ljava/lang/String;",
        "TIMEOUT",
        "getTIMEOUT$annotations",
        "getTIMEOUT",
        "instance",
        "Lcom/vungle/ads/internal/util/ActivityManager;",
        "getInstance",
        "()Lcom/vungle/ads/internal/util/ActivityManager;",
        "addLifecycleListener",
        "",
        "listener",
        "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;",
        "startActivityHandleException",
        "",
        "context",
        "Landroid/content/Context;",
        "deepLinkOverrideIntent",
        "Landroid/content/Intent;",
        "defaultIntent",
        "adOpenCallback",
        "Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;",
        "startWhenForeground",
        "deeplinkOverrideIntent",
        "leftCallback",
        "Lcom/vungle/ads/internal/util/ActivityManager$LeftApplicationCallback;",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$startActivityHandleException(Lcom/vungle/ads/internal/util/ActivityManager$Companion;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/d;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->startActivityHandleException(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/d;)Z

    move-result p0

    return p0
.end method

.method public static synthetic getCONFIG_CHANGE_DELAY$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getTIMEOUT$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final startActivityHandleException(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/d;)Z
    .registers 20

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-nez p2, :cond_c

    if-nez v2, :cond_c

    return v4

    :cond_c
    const/4 v5, 0x1

    if-eqz p2, :cond_18

    :try_start_f
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz v3, :cond_1b

    invoke-interface {v3, v5}, Lcom/vungle/ads/internal/ui/d;->onDeeplinkClick(Z)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return v5

    :catch_1c
    move-exception v0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot launch/find activity to handle the Implicit intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5f

    :try_start_37
    sget-object v7, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v8, 0x138

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to open "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x18

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz v3, :cond_5f

    invoke-interface {v3, v4}, Lcom/vungle/ads/internal/ui/d;->onDeeplinkClick(Z)V

    :cond_5f
    if-eqz p2, :cond_68

    if-nez v2, :cond_64

    goto :goto_68

    :cond_64
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_67} :catch_68

    return v5

    :catch_68
    :cond_68
    :goto_68
    return v4
.end method


# virtual methods
.method public final addLifecycleListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getInstance()Lcom/vungle/ads/internal/util/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/util/ActivityManager;->addListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    return-void
.end method

.method public final getCONFIG_CHANGE_DELAY()J
    .registers 3

    invoke-static {}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getCONFIG_CHANGE_DELAY$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInstance()Lcom/vungle/ads/internal/util/ActivityManager;
    .registers 2

    invoke-static {}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getInstance$cp()Lcom/vungle/ads/internal/util/ActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTIMEOUT()J
    .registers 3

    invoke-static {}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getTIMEOUT$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/util/ActivityManager$a;)V
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/util/ActivityManager$a;Lcom/vungle/ads/internal/ui/d;)V

    return-void
.end method

.method public final startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/util/ActivityManager$a;Lcom/vungle/ads/internal/ui/d;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getInstance()Lcom/vungle/ads/internal/util/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/ActivityManager;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->startActivityHandleException(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/d;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getInstance()Lcom/vungle/ads/internal/util/ActivityManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/vungle/ads/internal/util/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager$a;)V

    goto :goto_33

    :cond_22
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/ActivityManager$Companion;->getInstance()Lcom/vungle/ads/internal/util/ActivityManager;

    move-result-object p1

    new-instance v0, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/util/ActivityManager$Companion$a;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/d;Lcom/vungle/ads/internal/util/ActivityManager$a;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/ActivityManager;->addListener(Lcom/vungle/ads/internal/util/ActivityManager$b;)V

    :cond_33
    :goto_33
    return-void
.end method

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

###### Class com.vungle.ads.internal.util.ActivityManager.a (com.vungle.ads.internal.util.ActivityManager$a)
.class public interface abstract Lcom/vungle/ads/internal/util/ActivityManager$a;
.super Ljava/lang/Object;
.source "ActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/util/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vungle/ads/internal/util/ActivityManager$LeftApplicationCallback;",
        "",
        "onLeftApplication",
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


# virtual methods
.method public abstract onLeftApplication()V
.end method

###### Class com.vungle.ads.internal.util.ActivityManager.b (com.vungle.ads.internal.util.ActivityManager$b)
.class public Lcom/vungle/ads/internal/util/ActivityManager$b;
.super Ljava/lang/Object;
.source "ActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/util/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;",
        "",
        "()V",
        "onPause",
        "",
        "onResume",
        "onStart",
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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

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

###### Class com.vungle.ads.internal.util.ActivityManager.e (com.vungle.ads.internal.util.ActivityManager$e)
.class public final Lcom/vungle/ads/internal/util/ActivityManager$e;
.super Ljava/lang/Object;
.source "ActivityManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


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
        "com/vungle/ads/internal/util/ActivityManager$addOnNextAppLeftCallback$cancelRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
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
.method constructor <init>(Lcom/vungle/ads/internal/util/ActivityManager;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/util/ActivityManager;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/ads/internal/util/ActivityManager$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/util/ActivityManager$e;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/ActivityManager$e;->$weakCallback:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$e;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/ActivityManager;->access$getHandler$p(Lcom/vungle/ads/internal/util/ActivityManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    iget-object v0, p0, Lcom/vungle/ads/internal/util/ActivityManager$e;->this$0:Lcom/vungle/ads/internal/util/ActivityManager;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/ActivityManager$e;->$weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/util/ActivityManager$a;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/ActivityManager;->access$removeOnNextAppLeftCallback(Lcom/vungle/ads/internal/util/ActivityManager;Lcom/vungle/ads/internal/util/ActivityManager$a;)V

    return-void
.end method

###### Class com.vungle.ads.internal.util.a (com.vungle.ads.internal.util.a)
.class public final synthetic Lcom/vungle/ads/internal/util/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/util/ActivityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/util/ActivityManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/util/a;->a:Lcom/vungle/ads/internal/util/ActivityManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a;->a:Lcom/vungle/ads/internal/util/ActivityManager;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/ActivityManager;->a(Lcom/vungle/ads/internal/util/ActivityManager;)V

    return-void
.end method
