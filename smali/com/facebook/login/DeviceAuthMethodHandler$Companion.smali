###### Class com.facebook.login.DeviceAuthMethodHandler.Companion (com.facebook.login.DeviceAuthMethodHandler$Companion)
.class public final Lcom/facebook/login/DeviceAuthMethodHandler$Companion;
.super Ljava/lang/Object;
.source "DeviceAuthMethodHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/DeviceAuthMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthMethodHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->access$getBackgroundExecutor$cp()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->access$setBackgroundExecutor$cp(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    :cond_10
    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->access$getBackgroundExecutor$cp()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1f

    if-eqz v0, :cond_18

    monitor-exit p0

    return-object v0

    :cond_18
    :try_start_18
    const-string v0, "backgroundExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
