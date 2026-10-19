###### Class org.greenrobot.eventbus.android.AndroidDependenciesDetector (org.greenrobot.eventbus.android.AndroidDependenciesDetector)
.class public Lorg/greenrobot/eventbus/android/AndroidDependenciesDetector;
.super Ljava/lang/Object;
.source "AndroidDependenciesDetector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAndroidComponentsAvailable()Z
    .registers 1

    :try_start_0
    const-string v0, "org.greenrobot.eventbus.android.AndroidComponentsImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method public static instantiateAndroidComponents()Lorg/greenrobot/eventbus/android/AndroidComponents;
    .registers 3

    :try_start_0
    const-string v0, "org.greenrobot.eventbus.android.AndroidComponentsImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/android/AndroidComponents;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAndroidSDKAvailable()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.Looper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMainLooper"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_16} :catch_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_16} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_16} :catch_19

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :catch_19
    :cond_19
    return v0
.end method
