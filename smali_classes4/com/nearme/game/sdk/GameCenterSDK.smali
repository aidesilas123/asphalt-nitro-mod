###### Class com.nearme.game.sdk.GameCenterSDK (com.nearme.game.sdk.GameCenterSDK)
.class public Lcom/nearme/game/sdk/GameCenterSDK;
.super Ljava/lang/Object;
.source "GameCenterSDK.java"


# static fields
.field private static a:Lcom/nearme/game/sdk/GameCenterSDK;

.field private static b:Lcom/nearme/game/sdk/a;


# direct methods
.method private constructor <init>(Lcom/nearme/game/sdk/common/model/biz/a;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nearme/game/sdk/a;

    invoke-direct {v0, p2, p1}, Lcom/nearme/game/sdk/a;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/a;)V

    sput-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nearme/game/sdk/a;

    invoke-direct {v0, p2, p1}, Lcom/nearme/game/sdk/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/a;

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/nearme/game/sdk/common/util/AppUtil;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcom/nearme/game/sdk/common/util/AppUtil;->getPPid(I)I

    move-result p0

    invoke-static {p0}, Lcom/nearme/game/sdk/common/util/AppUtil;->getPPid(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_23

    if-nez p0, :cond_24

    :cond_23
    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/nearme/game/sdk/GameCenterSDK;
    .registers 2

    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GameCenterSDK must be init before call getInstance()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Lcom/nearme/game/sdk/common/model/biz/a;Landroid/content/Context;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/nearme/game/sdk/GameCenterSDK;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_3b

    const-class v0, Lcom/nearme/game/sdk/GameCenterSDK;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v1, :cond_36

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nearme/game/sdk/common/model/biz/a;->f:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_38

    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nearme/game/sdk/common/model/biz/a;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/nearme/game/sdk/common/model/biz/a;->g:I

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/nearme/game/sdk/common/model/biz/a;->h:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2a} :catch_2b
    .catchall {:try_start_17 .. :try_end_2a} :catchall_38

    goto :goto_2f

    :catch_2b
    move-exception v1

    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    new-instance v1, Lcom/nearme/game/sdk/GameCenterSDK;

    invoke-direct {v1, p0, p1}, Lcom/nearme/game/sdk/GameCenterSDK;-><init>(Lcom/nearme/game/sdk/common/model/biz/a;Landroid/content/Context;)V

    sput-object v1, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/nearme/game/sdk/GameCenterSDK;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_1d

    const-class v0, Lcom/nearme/game/sdk/GameCenterSDK;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v1, :cond_18

    new-instance v1, Lcom/nearme/game/sdk/GameCenterSDK;

    invoke-direct {v1, p0, p1}, Lcom/nearme/game/sdk/GameCenterSDK;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    return-void
.end method


# virtual methods
.method public a(Lcom/nearme/game/sdk/common/model/biz/b;)V
    .registers 3

    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/a;

    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/a;->B(Lcom/nearme/game/sdk/common/model/biz/b;)V

    return-void
.end method
