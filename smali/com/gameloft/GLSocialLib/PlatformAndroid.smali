###### Class com.gameloft.GLSocialLib.PlatformAndroid (com.gameloft.GLSocialLib.PlatformAndroid)
.class public Lcom/gameloft/GLSocialLib/PlatformAndroid;
.super Ljava/lang/Object;
.source "PlatformAndroid.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static GetDataFromURL(Ljava/lang/String;)[B
    .registers 2

    new-instance v0, Lcom/gameloft/GLSocialLib/PlatformAndroid$a;

    invoke-direct {v0, p0}, Lcom/gameloft/GLSocialLib/PlatformAndroid$a;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static native nativeInit()V
.end method
