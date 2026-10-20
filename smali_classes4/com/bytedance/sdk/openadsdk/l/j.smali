###### Class com.bytedance.sdk.openadsdk.l.j (com.bytedance.sdk.openadsdk.l.j)
.class public Lcom/bytedance/sdk/openadsdk/l/j;
.super Ljava/lang/Object;
.source "SensorHub.java"


# static fields
.field public static a:Lcom/bytedance/sdk/openadsdk/l/a;

.field protected static final b:[F

.field protected static final c:[F

.field protected static final d:[F

.field protected static final e:[F

.field private static f:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/j;->b:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/j;->c:[F

    const/16 v1, 0x9

    new-array v1, v1, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/j;->d:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->e:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .registers 3

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    return v0

    :cond_c
    return p0
.end method

.method private static a(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->f:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1a

    const-class v0, Lcom/bytedance/sdk/openadsdk/l/j;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/l/j;->f:Landroid/hardware/SensorManager;

    if-nez v1, :cond_15

    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lcom/bytedance/sdk/openadsdk/l/j;->f:Landroid/hardware/SensorManager;

    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0

    :cond_1a
    :goto_1a
    sget-object p0, Lcom/bytedance/sdk/openadsdk/l/j;->f:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V
    .registers 3

    if-eqz p1, :cond_15

    if-nez p0, :cond_5

    goto :goto_15

    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception p0

    const-string p1, "SensorHub"

    const-string v0, "stopListen error"

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .registers 5

    if-eqz p1, :cond_22

    if-nez p0, :cond_5

    goto :goto_22

    :cond_5
    :try_start_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->h()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(I)I

    move-result p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;II)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    goto :goto_22

    :catchall_1a
    move-exception p0

    const-string p1, "SensorHub"

    const-string p2, "startListenAccelerometer error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/l/a;)V
    .registers 1

    sput-object p0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .registers 5

    if-eqz p1, :cond_22

    if-nez p0, :cond_5

    goto :goto_22

    :cond_5
    :try_start_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->h()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    const/4 v1, 0x4

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(I)I

    move-result p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;II)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    goto :goto_22

    :catchall_1a
    move-exception p0

    const-string p1, "SensorHub"

    const-string p2, "startListenGyroscope error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .registers 5

    if-eqz p1, :cond_23

    if-nez p0, :cond_5

    goto :goto_23

    :cond_5
    :try_start_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->h()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    const/16 v1, 0xa

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(I)I

    move-result p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;II)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    goto :goto_23

    :catchall_1b
    move-exception p0

    const-string p1, "SensorHub"

    const-string p2, "startListenLinearAcceleration error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .registers 6

    if-eqz p1, :cond_2c

    if-nez p0, :cond_5

    goto :goto_2c

    :cond_5
    :try_start_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(I)I

    move-result v2

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;II)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->a:Lcom/bytedance/sdk/openadsdk/l/a;

    const/4 v1, 0x2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(I)I

    move-result p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;II)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    goto :goto_2c

    :catchall_24
    move-exception p0

    const-string p1, "SensorHub"

    const-string p2, "startListenRotationVector err"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-void
.end method
