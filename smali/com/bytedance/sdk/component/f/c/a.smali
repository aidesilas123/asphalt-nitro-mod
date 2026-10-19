###### Class com.bytedance.sdk.component.f.c.a (com.bytedance.sdk.component.f.c.a)
.class public Lcom/bytedance/sdk/component/f/c/a;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/x$a;


# static fields
.field private static h:Z

.field private static i:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field final a:Lcom/bytedance/sdk/component/utils/x;

.field private final b:Z

.field private volatile c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Landroid/content/Context;

.field private volatile l:Z

.field private m:Lcom/bytedance/sdk/component/f/a;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/f/c/a;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/component/f/c/a;->f:J

    iput-wide v1, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z

    invoke-static {}, Lcom/bytedance/sdk/component/g/a/a;->a()Lcom/bytedance/sdk/component/g/a/a;

    move-result-object v0

    const-string v1, "tt-net"

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/component/g/a/a;->a(Lcom/bytedance/sdk/component/utils/x$a;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/x;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->a:Lcom/bytedance/sdk/component/utils/x;

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/f/c/a;->b:Z

    iput p2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/c/a;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/c/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/get_domains/v4/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->f()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    if-eqz v0, :cond_55

    array-length v2, v0

    if-gt v2, p1, :cond_c

    goto :goto_55

    :cond_c
    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->b(I)V

    return-void

    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/f/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->b(I)V

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/c/a;->i()Lcom/bytedance/sdk/component/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/f/a;->c()Lcom/bytedance/sdk/component/f/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/f/b/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/b/b;)V

    new-instance v0, Lcom/bytedance/sdk/component/f/c/a$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/f/c/a$3;-><init>(Lcom/bytedance/sdk/component/f/c/a;I)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Lcom/bytedance/sdk/component/f/a/a;)V
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_3d

    goto :goto_54

    :catchall_3d
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try app config exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppConfig"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return-void

    :cond_55
    :goto_55
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->b(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 3

    sget-boolean v0, Lcom/bytedance/sdk/component/f/c/a;->h:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/sdk/component/f/c/g;->a(ILandroid/content/Context;)Lcom/bytedance/sdk/component/f/c/a;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/q;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/f/c/a;->a(Z)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/f/c/a;->a()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/f/b/b;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/f/c/b;->a(Landroid/content/Context;)Landroid/location/Address;

    move-result-object v0

    :cond_28
    const-string v1, ""

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Landroid/location/Address;->hasLatitude()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-virtual {v0}, Landroid/location/Address;->hasLongitude()Z

    move-result v2

    if-eqz v2, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {p1, v3, v2}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {p1, v3, v2}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "city"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->c:Z

    if-eqz v0, :cond_86

    const-string v0, "force"

    const-string v2, "1"

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    :try_start_86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_8f

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_94

    :cond_8f
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    :goto_94
    const-string v2, "abi"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_86 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9e
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    if-eqz v0, :cond_13f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/component/f/c/b;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aid"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/f/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "device_platform"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/f/c/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "channel"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/component/f/c/b;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version_code"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/f/c/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_info_1"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13f
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/c/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/a;->a(I)V

    return-void
.end method

.method public static a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 1

    sput-object p0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/c/a;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/a;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "success"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    return v1

    :cond_22
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :cond_2b
    :goto_2b
    if-nez v0, :cond_2e

    return v1

    :cond_2e
    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-enter p0

    :try_start_35
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    const-string v2, "ss_app_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_refresh_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_71

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/f/c/d;->a(Lorg/json/JSONObject;)V

    :cond_6f
    const/4 p1, 0x1

    return p1

    :catchall_71
    move-exception p1

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/f/c/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b(I)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->a:Lcom/bytedance/sdk/component/utils/x;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/f/c/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/a;->b(I)V

    return-void
.end method

.method public static b(Z)V
    .registers 1

    sput-boolean p0, Lcom/bytedance/sdk/component/f/c/a;->h:Z

    return-void
.end method

.method private d(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->d:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->f:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    :cond_12
    if-eqz p1, :cond_18

    const-wide/32 v0, 0x57e40

    goto :goto_1b

    :cond_18
    const-wide/32 v0, 0x2932e00

    :goto_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/component/f/c/a;->f:J

    sub-long v4, v2, v4

    cmp-long p1, v4, v0

    if-lez p1, :cond_38

    iget-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1d4c0

    cmp-long p1, v2, v0

    if-gtz p1, :cond_35

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z

    if-nez p1, :cond_38

    :cond_35
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->c()Z

    :cond_38
    return-void
.end method

.method public static g()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 9

    sget-object v0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_27

    const-class v0, Lcom/bytedance/sdk/component/f/c/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_22

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x14

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1

    :cond_27
    :goto_27
    sget-object v0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private h()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->f()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->a(I)V

    :cond_e
    :goto_e
    return v1
.end method

.method private i()Lcom/bytedance/sdk/component/f/a;
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->m:Lcom/bytedance/sdk/component/f/a;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/bytedance/sdk/component/f/a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/f/a$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/f/a$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/f/a$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/f/a$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/a$a;->a()Lcom/bytedance/sdk/component/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->m:Lcom/bytedance/sdk/component/f/a;

    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->m:Lcom/bytedance/sdk/component/f/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/f/c/a;->a(Z)V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 7

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    const-string v1, "TNCManager"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_22

    const/16 v0, 0x66

    if-eq p1, v0, :cond_e

    goto :goto_3b

    :cond_e
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/f/c/a;->d:Z

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->a()V

    :cond_17
    const-string p1, "doRefresh, error"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3b

    :cond_22
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/component/f/c/a;->f:J

    const-string p1, "doRefresh, succ"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/f/c/a;->d:Z

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->a()V

    :cond_36
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3b
    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->b:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/a;->d(Z)V

    goto :goto_1d

    :cond_9
    iget-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->f:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1d

    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/a;->g()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/component/f/c/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/f/c/a$1;-><init>(Lcom/bytedance/sdk/component/f/c/a;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1d

    :catchall_1d
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/component/f/c/a;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->f:J
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_38

    :try_start_15
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/d;->b()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_38

    :catch_36
    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Z)V
    .registers 4

    const-string v0, "TNCManager"

    const-string v1, "doRefresh, actual request"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->a:Lcom/bytedance/sdk/component/utils/x;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/c/a;->h()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_21
    return-void
.end method

.method public c()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doRefresh: updating state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNCManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/a;->g()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/f/c/a$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/f/c/a$2;-><init>(Lcom/bytedance/sdk/component/f/c/a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized d()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_49

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    const-string v1, "ss_app_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_24

    move-wide v0, v2

    :cond_24
    iput-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->f:J
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_49

    :try_start_26
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/d;->a()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_47} :catch_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_49

    :catch_47
    :cond_47
    monitor-exit p0

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    :try_start_b
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->b:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->d()V

    goto :goto_16

    :cond_13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->b()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_16

    :catchall_16
    :goto_16
    return-void
.end method

.method public f()[Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/f/c/b;->f()[Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_29

    array-length v1, v0

    if-gtz v1, :cond_2c

    :cond_29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :cond_2c
    return-object v0
.end method

###### Class com.bytedance.sdk.component.f.c.a.AnonymousClass1 (com.bytedance.sdk.component.f.c.a$1)
.class Lcom/bytedance/sdk/component/f/c/a$1;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/f/c/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/f/c/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/f/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$1;->a:Lcom/bytedance/sdk/component/f/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a$1;->a:Lcom/bytedance/sdk/component/f/c/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/a;->b()V

    return-void
.end method

###### Class com.bytedance.sdk.component.f.c.a.AnonymousClass2 (com.bytedance.sdk.component.f.c.a$2)
.class Lcom/bytedance/sdk/component/f/c/a$2;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/f/c/a;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/f/c/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/f/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$2;->a:Lcom/bytedance/sdk/component/f/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a$2;->a:Lcom/bytedance/sdk/component/f/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/c/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/f/d/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/a$2;->a:Lcom/bytedance/sdk/component/f/c/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/c/a;J)J

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/a$2;->a:Lcom/bytedance/sdk/component/f/c/a;

    invoke-static {v1}, Lcom/bytedance/sdk/component/f/c/a;->b(Lcom/bytedance/sdk/component/f/c/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v0, "TNCManager"

    const-string v1, "doRefresh, already running"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/a$2;->a:Lcom/bytedance/sdk/component/f/c/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/f/c/a;->c(Z)V

    :cond_30
    return-void
.end method

###### Class com.bytedance.sdk.component.f.c.a.AnonymousClass3 (com.bytedance.sdk.component.f.c.a$3)
.class Lcom/bytedance/sdk/component/f/c/a$3;
.super Lcom/bytedance/sdk/component/f/a/a;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/f/c/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/component/f/c/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/f/c/a;I)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$3;->b:Lcom/bytedance/sdk/component/f/c/a;

    iput p2, p0, Lcom/bytedance/sdk/component/f/c/a$3;->a:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V
    .registers 4

    if-eqz p2, :cond_55

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->f()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_55

    :cond_9
    const/4 p1, 0x0

    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-object v0, p1

    :goto_15
    if-nez v0, :cond_21

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$3;->b:Lcom/bytedance/sdk/component/f/c/a;

    iget p2, p0, Lcom/bytedance/sdk/component/f/c/a$3;->a:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/c/a;I)V

    return-void

    :cond_21
    :try_start_21
    const-string p2, "message"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    nop

    :goto_29
    const-string p2, "success"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$3;->b:Lcom/bytedance/sdk/component/f/c/a;

    iget p2, p0, Lcom/bytedance/sdk/component/f/c/a$3;->a:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/c/a;I)V

    return-void

    :cond_3b
    :try_start_3b
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$3;->b:Lcom/bytedance/sdk/component/f/c/a;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/c/a;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$3;->b:Lcom/bytedance/sdk/component/f/c/a;

    const/16 p2, 0x65

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/f/c/a;->b(Lcom/bytedance/sdk/component/f/c/a;I)V

    goto :goto_54

    :cond_4b
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$3;->b:Lcom/bytedance/sdk/component/f/c/a;

    iget p2, p0, Lcom/bytedance/sdk/component/f/c/a$3;->a:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/c/a;I)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_54} :catch_54

    :catch_54
    :goto_54
    return-void

    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$3;->b:Lcom/bytedance/sdk/component/f/c/a;

    iget p2, p0, Lcom/bytedance/sdk/component/f/c/a$3;->a:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/c/a;I)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V
    .registers 3

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a$3;->b:Lcom/bytedance/sdk/component/f/c/a;

    iget p2, p0, Lcom/bytedance/sdk/component/f/c/a$3;->a:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/c/a;I)V

    return-void
.end method
