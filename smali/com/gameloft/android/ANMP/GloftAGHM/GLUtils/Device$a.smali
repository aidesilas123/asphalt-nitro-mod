###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device$a;
.super Ljava/lang/Thread;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->initGoogleAdId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$002(I)I

    goto :goto_19

    :cond_15
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$002(I)I

    :goto_19
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$102(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_2 .. :try_end_20} :catch_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_30

    :catch_21
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$002(I)I

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_30

    :catch_29
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$002(I)I

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$102(Ljava/lang/String;)Ljava/lang/String;

    :goto_30
    return-void
.end method
