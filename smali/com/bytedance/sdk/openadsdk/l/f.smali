###### Class com.bytedance.sdk.openadsdk.l.f (com.bytedance.sdk.openadsdk.l.f)
.class public Lcom/bytedance/sdk/openadsdk/l/f;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/l/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/l/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/l/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/hardware/SensorEventListener;

.field private e:Landroid/hardware/SensorEventListener;

.field private f:Landroid/hardware/SensorEventListener;

.field private g:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/f$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->d:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/f$12;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/f$12;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->e:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/f$23;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/f$23;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->f:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/f$34;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/f$34;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->g:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/f;->c()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/f;->d()Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/a;
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/f;->e()Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$45;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$45;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "adInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$56;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$56;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "appInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$61;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$61;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playableSDKInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$62;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$62;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "subscribe_app_ad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$63;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$63;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "download_app_ad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "isViewable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "getVolume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "getScreenSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "start_accelerometer_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "close_accelerometer_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$7;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "start_gyro_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$8;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "close_gyro_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$9;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$9;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "start_accelerometer_grativityless_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$10;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "close_accelerometer_grativityless_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$11;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$11;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "start_rotation_vector_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$13;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$13;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "close_rotation_vector_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$14;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$14;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "device_shake"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$15;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "device_shake_short"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$16;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$16;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$17;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$17;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "sendReward"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$18;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$18;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "webview_time_track"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$19;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$19;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$20;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$20;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "reportAd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$21;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$21;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "close"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$22;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$22;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "openAdLandPageLinks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$24;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$24;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "get_viewport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$25;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$25;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "jssdk_load_finish"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$26;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$26;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_material_render_result"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$27;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$27;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "detect_change_playable_click"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$28;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$28;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "check_camera_permission"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$29;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$29;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "check_external_storage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$30;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$30;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_open_camera"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$31;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$31;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_pick_photo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$32;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$32;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_download_media_in_photos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$33;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$33;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_preventTouchEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$35;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$35;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_settings_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$36;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$36;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_load_main_scene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$37;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$37;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_enter_section"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$38;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$38;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$39;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$39;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_finish_play_playable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$40;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$40;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_transfrom_module_show"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$41;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$41;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_transfrom_module_change_color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$42;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$42;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_set_scroll_rect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$43;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$43;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_click_area"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$44;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$44;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_real_play_start"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$46;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$46;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_material_first_frame_show"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$47;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$47;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_stuck_check_pong"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$48;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$48;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_material_adnormal_mask"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$49;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$49;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_long_press_panel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$50;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$50;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_alpha_player_play"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$51;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$51;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_transfrom_module_highlight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$52;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$52;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_send_click_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$53;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$53;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_query_media_permission_declare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$54;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$54;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_query_media_permission_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$55;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$55;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_apply_media_permission"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$57;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$57;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_start_kws"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$58;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$58;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_close_kws"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$59;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$59;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_video_preload_task_add"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/f$60;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/f$60;-><init>(Lcom/bytedance/sdk/openadsdk/l/f;)V

    const-string v2, "playable_video_preload_task_cancel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->d:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method private d()Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/l/h;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->e:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method private e()Lcom/bytedance/sdk/openadsdk/l/a;
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/f;->d()Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->q()Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->f:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->g:Landroid/hardware/SensorEventListener;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/l/f$a;

    if-nez p1, :cond_16

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "code"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1

    :cond_16
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/l/f$a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-object p1

    :catchall_1b
    move-exception p1

    const-string p2, "PlayableJsBridge"

    const-string v0, "invoke error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f;->d:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f;->e:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f;->f:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f;->g:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass1 (com.bytedance.sdk.openadsdk.l.f$1)
.class Lcom/bytedance/sdk/openadsdk/l/f$1;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$1;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$1;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v2, p1, v2

    aget v1, p1, v1

    const/4 v3, 0x2

    aget p1, p1, v3

    :try_start_1c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "x"

    float-to-double v5, v2

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "y"

    float-to-double v4, v1

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "z"

    float-to-double v4, p1

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "accelerometer_callback"

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_38

    :catchall_38
    :cond_38
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass10 (com.bytedance.sdk.openadsdk.l.f$10)
.class Lcom/bytedance/sdk/openadsdk/l/f$10;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$10;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "code"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f$10;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/f$10;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/l/f;->f(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke close_accelerometer_grativityless_observer error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass11 (com.bytedance.sdk.openadsdk.l.f$11)
.class Lcom/bytedance/sdk/openadsdk/l/f$11;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$11;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x2

    if-eqz p1, :cond_10

    :try_start_a
    const-string v3, "interval_android"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$11;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/l/f$11;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/l/f;->g(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->d(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_24

    return-object v0

    :catchall_24
    move-exception p1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke start_rotation_vector_observer error"

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass12 (com.bytedance.sdk.openadsdk.l.f$12)
.class Lcom/bytedance/sdk/openadsdk/l/f$12;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$12;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$12;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget p1, p1, v3

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p1, v3

    :try_start_33
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "x"

    float-to-double v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "y"

    float-to-double v4, v2

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "z"

    float-to-double v4, p1

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "gyro_callback"

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_4f

    :catchall_4f
    :cond_4f
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass13 (com.bytedance.sdk.openadsdk.l.f$13)
.class Lcom/bytedance/sdk/openadsdk/l/f$13;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$13;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "code"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f$13;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/f$13;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/l/f;->g(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke close_rotation_vector_observer error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass14 (com.bytedance.sdk.openadsdk.l.f$14)
.class Lcom/bytedance/sdk/openadsdk/l/f$14;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$14;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "code"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f$14;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;J)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke device_shake error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass15 (com.bytedance.sdk.openadsdk.l.f$15)
.class Lcom/bytedance/sdk/openadsdk/l/f$15;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$15;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "code"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f$15;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;J)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke device_shake error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass16 (com.bytedance.sdk.openadsdk.l.f$16)
.class Lcom/bytedance/sdk/openadsdk/l/f$16;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$16;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$16;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->c()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1

    :cond_18
    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass17 (com.bytedance.sdk.openadsdk.l.f$17)
.class Lcom/bytedance/sdk/openadsdk/l/f$17;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$17;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$17;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->u()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_17
    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass18 (com.bytedance.sdk.openadsdk.l.f$18)
.class Lcom/bytedance/sdk/openadsdk/l/f$18;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$18;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass19 (com.bytedance.sdk.openadsdk.l.f$19)
.class Lcom/bytedance/sdk/openadsdk/l/f$19;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$19;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$19;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-eqz v0, :cond_27

    if-nez p1, :cond_12

    goto :goto_27

    :cond_12
    const/4 v3, 0x0

    const-string v4, "event"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "params"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_27
    :goto_27
    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass2 (com.bytedance.sdk.openadsdk.l.f$2)
.class Lcom/bytedance/sdk/openadsdk/l/f$2;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$2;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$2;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    const-string v0, "code"

    if-nez p1, :cond_14

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1

    :cond_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->i()Z

    move-result p1

    const-string v0, "viewStatus"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass20 (com.bytedance.sdk.openadsdk.l.f$20)
.class Lcom/bytedance/sdk/openadsdk/l/f$20;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$20;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$20;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->o(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass21 (com.bytedance.sdk.openadsdk.l.f$21)
.class Lcom/bytedance/sdk/openadsdk/l/f$21;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$21;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$21;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->p(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass22 (com.bytedance.sdk.openadsdk.l.f$22)
.class Lcom/bytedance/sdk/openadsdk/l/f$22;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$22;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$22;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->q(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass23 (com.bytedance.sdk.openadsdk.l.f$23)
.class Lcom/bytedance/sdk/openadsdk/l/f$23;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$23;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$23;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    :try_start_1e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "x"

    float-to-double v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "y"

    float-to-double v4, v2

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "z"

    float-to-double v4, p1

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "accelerometer_grativityless_callback"

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_3a

    :catchall_3a
    :cond_3a
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass24 (com.bytedance.sdk.openadsdk.l.f$24)
.class Lcom/bytedance/sdk/openadsdk/l/f$24;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$24;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$24;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->t()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass25 (com.bytedance.sdk.openadsdk.l.f$25)
.class Lcom/bytedance/sdk/openadsdk/l/f$25;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$25;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$25;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->H()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass26 (com.bytedance.sdk.openadsdk.l.f$26)
.class Lcom/bytedance/sdk/openadsdk/l/f$26;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$26;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$26;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->n(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass27 (com.bytedance.sdk.openadsdk.l.f$27)
.class Lcom/bytedance/sdk/openadsdk/l/f$27;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$27;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$27;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->j()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass28 (com.bytedance.sdk.openadsdk.l.f$28)
.class Lcom/bytedance/sdk/openadsdk/l/f$28;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$28;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$28;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->m()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass29 (com.bytedance.sdk.openadsdk.l.f$29)
.class Lcom/bytedance/sdk/openadsdk/l/f$29;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$29;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$29;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, -0x1

    const-string v2, "code"

    if-nez p1, :cond_14

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->n()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_28

    :cond_24
    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_28
    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass3 (com.bytedance.sdk.openadsdk.l.f$3)
.class Lcom/bytedance/sdk/openadsdk/l/f$3;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$3;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$3;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    const-string v0, "code"

    if-nez p1, :cond_14

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1

    :cond_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->h()Z

    move-result p1

    const-string v0, "endcard_mute"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass30 (com.bytedance.sdk.openadsdk.l.f$30)
.class Lcom/bytedance/sdk/openadsdk/l/f$30;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$30;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$30;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass31 (com.bytedance.sdk.openadsdk.l.f$31)
.class Lcom/bytedance/sdk/openadsdk/l/f$31;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$31;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$31;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass32 (com.bytedance.sdk.openadsdk.l.f$32)
.class Lcom/bytedance/sdk/openadsdk/l/f$32;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$32;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$32;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass33 (com.bytedance.sdk.openadsdk.l.f$33)
.class Lcom/bytedance/sdk/openadsdk/l/f$33;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$33;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$33;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->d(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass34 (com.bytedance.sdk.openadsdk.l.f$34)
.class Lcom/bytedance/sdk/openadsdk/l/f$34;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$34;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_14

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->b:[F

    array-length v4, v0

    invoke-static {p1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    :cond_14
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_24

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->c:[F

    array-length v4, v0

    invoke-static {p1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    sget-object p1, Lcom/bytedance/sdk/openadsdk/l/j;->d:[F

    const/4 v0, 0x0

    sget-object v4, Lcom/bytedance/sdk/openadsdk/l/j;->b:[F

    sget-object v5, Lcom/bytedance/sdk/openadsdk/l/j;->c:[F

    invoke-static {p1, v0, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/j;->e:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$34;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    if-nez p1, :cond_3c

    return-void

    :cond_3c
    aget v3, v0, v3

    aget v2, v0, v2

    aget v0, v0, v1

    :try_start_42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "alpha"

    float-to-double v5, v3

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "beta"

    float-to-double v4, v2

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "gamma"

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "rotation_vector_callback"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_5e

    :catchall_5e
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass35 (com.bytedance.sdk.openadsdk.l.f$35)
.class Lcom/bytedance/sdk/openadsdk/l/f$35;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$35;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$35;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->o()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass36 (com.bytedance.sdk.openadsdk.l.f$36)
.class Lcom/bytedance/sdk/openadsdk/l/f$36;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$36;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$36;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->v()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass37 (com.bytedance.sdk.openadsdk.l.f$37)
.class Lcom/bytedance/sdk/openadsdk/l/f$37;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$37;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$37;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->f(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass38 (com.bytedance.sdk.openadsdk.l.f$38)
.class Lcom/bytedance/sdk/openadsdk/l/f$38;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$38;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$38;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->w()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass39 (com.bytedance.sdk.openadsdk.l.f$39)
.class Lcom/bytedance/sdk/openadsdk/l/f$39;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$39;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$39;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->x()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass4 (com.bytedance.sdk.openadsdk.l.f$4)
.class Lcom/bytedance/sdk/openadsdk/l/f$4;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$4;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$4;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    const-string v0, "code"

    if-nez p1, :cond_14

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->r()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass40 (com.bytedance.sdk.openadsdk.l.f$40)
.class Lcom/bytedance/sdk/openadsdk/l/f$40;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$40;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$40;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->y()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass41 (com.bytedance.sdk.openadsdk.l.f$41)
.class Lcom/bytedance/sdk/openadsdk/l/f$41;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$41;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$41;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->z()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass42 (com.bytedance.sdk.openadsdk.l.f$42)
.class Lcom/bytedance/sdk/openadsdk/l/f$42;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$42;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$42;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->g(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass43 (com.bytedance.sdk.openadsdk.l.f$43)
.class Lcom/bytedance/sdk/openadsdk/l/f$43;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$43;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$43;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->h(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass44 (com.bytedance.sdk.openadsdk.l.f$44)
.class Lcom/bytedance/sdk/openadsdk/l/f$44;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$44;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$44;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->A()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass45 (com.bytedance.sdk.openadsdk.l.f$45)
.class Lcom/bytedance/sdk/openadsdk/l/f$45;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$45;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$45;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "code"

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->s()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1e

    :cond_16
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1e
    return-object p1

    :cond_1f
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass46 (com.bytedance.sdk.openadsdk.l.f$46)
.class Lcom/bytedance/sdk/openadsdk/l/f$46;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$46;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$46;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->B()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass47 (com.bytedance.sdk.openadsdk.l.f$47)
.class Lcom/bytedance/sdk/openadsdk/l/f$47;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$47;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$47;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->E()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass48 (com.bytedance.sdk.openadsdk.l.f$48)
.class Lcom/bytedance/sdk/openadsdk/l/f$48;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$48;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$48;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->i(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass49 (com.bytedance.sdk.openadsdk.l.f$49)
.class Lcom/bytedance/sdk/openadsdk/l/f$49;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$49;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$49;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->C()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass5 (com.bytedance.sdk.openadsdk.l.f$5)
.class Lcom/bytedance/sdk/openadsdk/l/f$5;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$5;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x2

    if-eqz p1, :cond_10

    :try_start_a
    const-string v3, "interval_android"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$5;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/l/f$5;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/l/f;->d(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_24

    return-object v0

    :catchall_24
    move-exception p1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke start_accelerometer_observer error"

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass50 (com.bytedance.sdk.openadsdk.l.f$50)
.class Lcom/bytedance/sdk/openadsdk/l/f$50;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$50;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$50;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->j(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass51 (com.bytedance.sdk.openadsdk.l.f$51)
.class Lcom/bytedance/sdk/openadsdk/l/f$51;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$51;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$51;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->D()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass52 (com.bytedance.sdk.openadsdk.l.f$52)
.class Lcom/bytedance/sdk/openadsdk/l/f$52;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$52;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$52;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->k(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass53 (com.bytedance.sdk.openadsdk.l.f$53)
.class Lcom/bytedance/sdk/openadsdk/l/f$53;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$53;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$53;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->l(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass54 (com.bytedance.sdk.openadsdk.l.f$54)
.class Lcom/bytedance/sdk/openadsdk/l/f$54;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$54;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$54;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->m(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass55 (com.bytedance.sdk.openadsdk.l.f$55)
.class Lcom/bytedance/sdk/openadsdk/l/f$55;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$55;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$55;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->b(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->n(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass56 (com.bytedance.sdk.openadsdk.l.f$56)
.class Lcom/bytedance/sdk/openadsdk/l/f$56;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$56;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "code"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "appName"

    const-string v1, "playable_sdk"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playableSdkEdition"

    const-string v2, "6.6.0"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/f$56;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/l/f;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_28

    :cond_38
    const-string v2, "supportList"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f$56;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v1

    if-eqz v1, :cond_90

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/h;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/h;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "netType"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/h;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "innerAppName"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/h;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "appVersion"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/h;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7c

    :cond_90
    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass57 (com.bytedance.sdk.openadsdk.l.f$57)
.class Lcom/bytedance/sdk/openadsdk/l/f$57;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$57;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$57;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->b(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->o(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass58 (com.bytedance.sdk.openadsdk.l.f$58)
.class Lcom/bytedance/sdk/openadsdk/l/f$58;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$58;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$58;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->b(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/a;->k()V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass59 (com.bytedance.sdk.openadsdk.l.f$59)
.class Lcom/bytedance/sdk/openadsdk/l/f$59;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$59;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$59;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->b(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->p(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass6 (com.bytedance.sdk.openadsdk.l.f$6)
.class Lcom/bytedance/sdk/openadsdk/l/f$6;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$6;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "code"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f$6;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/f$6;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/l/f;->d(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke close_accelerometer_observer error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass60 (com.bytedance.sdk.openadsdk.l.f$60)
.class Lcom/bytedance/sdk/openadsdk/l/f$60;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$60;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$60;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->b(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->q(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass61 (com.bytedance.sdk.openadsdk.l.f$61)
.class Lcom/bytedance/sdk/openadsdk/l/f$61;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$61;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "code"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "appName"

    const-string v1, "playable_sdk"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playableSdkEdition"

    const-string v1, "6.6.0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass62 (com.bytedance.sdk.openadsdk.l.f$62)
.class Lcom/bytedance/sdk/openadsdk/l/f$62;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$62;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$62;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->b(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->b(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass63 (com.bytedance.sdk.openadsdk.l.f$63)
.class Lcom/bytedance/sdk/openadsdk/l/f$63;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$63;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/f$63;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->b(Lcom/bytedance/sdk/openadsdk/l/f;)Lcom/bytedance/sdk/openadsdk/l/a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_14

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->c(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass7 (com.bytedance.sdk.openadsdk.l.f$7)
.class Lcom/bytedance/sdk/openadsdk/l/f$7;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$7;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x2

    if-eqz p1, :cond_10

    :try_start_a
    const-string v3, "interval_android"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$7;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/l/f$7;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/l/f;->e(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->b(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_24

    return-object v0

    :catchall_24
    move-exception p1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke start_gyro_observer error"

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass8 (com.bytedance.sdk.openadsdk.l.f$8)
.class Lcom/bytedance/sdk/openadsdk/l/f$8;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$8;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "code"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f$8;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/f$8;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/l/f;->e(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke close_gyro_observer error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass9 (com.bytedance.sdk.openadsdk.l.f$9)
.class Lcom/bytedance/sdk/openadsdk/l/f$9;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$9;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x2

    if-eqz p1, :cond_10

    :try_start_a
    const-string v3, "interval_android"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$9;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/l/f$9;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/l/f;->f(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->c(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_24

    return-object v0

    :catchall_24
    move-exception p1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke start_accelerometer_grativityless_observer error"

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.f.a (com.bytedance.sdk.openadsdk.l.f$a)
.class interface abstract Lcom/bytedance/sdk/openadsdk/l/f$a;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
