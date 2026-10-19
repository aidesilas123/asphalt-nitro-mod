###### Class com.gameloft.adsutils.AdsUtils (com.gameloft.adsutils.AdsUtils)
.class public Lcom/gameloft/adsutils/AdsUtils;
.super Ljava/lang/Object;
.source "AdsUtils.java"


# static fields
.field private static a:Landroid/app/Activity; = null

.field private static b:Landroid/view/ViewGroup; = null

.field private static c:Ljava/lang/String; = ""

.field private static d:I = -0x1

.field private static e:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GenerateUUID()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetActivity()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/gameloft/adsutils/AdsUtils;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static GetApplicationContext()Landroid/content/Context;
    .registers 1

    :try_start_0
    sget-object v0, Lcom/gameloft/adsutils/AdsUtils;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetCachePath()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    const-string v0, ""

    return-object v0
.end method

.method public static GetConnectivityType()I
    .registers 9

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/16 v4, 0xb

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x17

    if-ge v1, v8, :cond_32

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_22

    return v7

    :cond_22
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    return v6

    :pswitch_2a
    return v2

    :pswitch_2b
    return v7

    :pswitch_2c
    return v3

    :pswitch_2d
    const/16 v0, 0xc

    return v0

    :pswitch_30
    return v4

    :pswitch_31
    return v5

    :cond_32
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_39

    return v7

    :cond_39
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_40

    return v7

    :cond_40
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_48

    return v2

    :cond_48
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    return v4

    :cond_4f
    invoke-virtual {v0, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_56

    return v5

    :cond_56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    return v3

    :cond_5e
    return v6

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method

.method public static GetContext()Landroid/content/Context;
    .registers 1

    :try_start_0
    sget-object v0, Lcom/gameloft/adsutils/AdsUtils;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetDeviceAdvertisingId()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/adsutils/AdsUtils;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDeviceAdvertisingIdStatus()I
    .registers 1

    sget v0, Lcom/gameloft/adsutils/AdsUtils;->d:I

    return v0
.end method

.method public static GetDeviceCountryCode()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-object v1, v0

    :goto_16
    :try_start_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    :cond_24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_2c

    if-eqz v2, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object v0, v1

    :catch_2c
    :goto_2c
    return-object v0
.end method

.method public static GetDeviceLanguage()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_3e

    :try_start_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-object v1, v0

    :goto_16
    :try_start_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_3e

    if-eqz v2, :cond_24

    :try_start_1c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    :try_start_24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pt_BR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v1, "br"
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    :try_start_36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_3e

    if-eqz v2, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v0, v1

    :catch_3e
    :goto_3e
    return-object v0
.end method

.method public static GetDeviceModel()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDeviceOSVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method static GetDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method public static GetSavePath()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    const-string v0, ""

    return-object v0
.end method

.method public static GetScreenHeight()F
    .registers 3

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_22

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->y:I

    :goto_20
    int-to-float v0, v0

    return v0

    :cond_22
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_20
.end method

.method public static GetScreenHeightInInch()F
    .registers 2

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetScreenHeight()F

    move-result v1

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v0

    return v1
.end method

.method public static GetScreenWidth()F
    .registers 3

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_22

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    :goto_20
    int-to-float v0, v0

    return v0

    :cond_22
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_20
.end method

.method public static GetScreenWidthInInch()F
    .registers 2

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetScreenWidth()F

    move-result v1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v0

    return v1
.end method

.method public static GetSoundVolume()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/adsutils/AdsUtils;->a:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    return v0
.end method

.method public static GetStoragePath()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    const-string v0, ""

    return-object v0
.end method

.method public static GetUsedApplicationMemory()F
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_8

    return v0

    :cond_8
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    sub-long/2addr v2, v0

    long-to-float v0, v2

    :catch_22
    return v0
.end method

.method public static GetWebViewUserAgent()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/adsutils/AdsUtils;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static Initialize(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 2

    sput-object p0, Lcom/gameloft/adsutils/AdsUtils;->a:Landroid/app/Activity;

    sput-object p1, Lcom/gameloft/adsutils/AdsUtils;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->SetClassLoader()V

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->RefreshAdId()V

    sget-object p1, Lcom/gameloft/adsutils/AdsUtils;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    new-instance p1, Lcom/gameloft/adsutils/AdsUtils$a;

    invoke-direct {p1, p0}, Lcom/gameloft/adsutils/AdsUtils$a;-><init>(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/gameloft/adsutils/AdsUtils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method public static LaunchDeviceBrowser(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

.method private static native NativeSetClassLoader(Ljava/lang/Object;)V
.end method

.method public static PauseUserMusic()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method private static RefreshAdId()V
    .registers 2

    const/4 v0, 0x3

    sput v0, Lcom/gameloft/adsutils/AdsUtils;->d:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/adsutils/AdsUtils$b;

    invoke-direct {v1}, Lcom/gameloft/adsutils/AdsUtils$b;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static RefreshAdIdSync()V
    .registers 7

    const-string v0, ""

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_11

    return-void

    :cond_11
    const/4 v1, 0x3

    sput v1, Lcom/gameloft/adsutils/AdsUtils;->d:I

    :try_start_14
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->GetContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_54

    sput-object v0, Lcom/gameloft/adsutils/AdsUtils;->e:Ljava/lang/String;

    sput v3, Lcom/gameloft/adsutils/AdsUtils;->d:I

    goto :goto_70

    :cond_54
    const-string v3, "getId"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/adsutils/AdsUtils;->e:Ljava/lang/String;

    sput v6, Lcom/gameloft/adsutils/AdsUtils;->d:I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6a} :catch_6b

    goto :goto_70

    :catch_6b
    sput-object v0, Lcom/gameloft/adsutils/AdsUtils;->e:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/gameloft/adsutils/AdsUtils;->d:I

    :goto_70
    return-void
.end method

.method public static RunOnMainThread(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_26

    :cond_12
    new-instance v0, Lcom/gameloft/adsutils/a;

    invoke-direct {v0, p0}, Lcom/gameloft/adsutils/a;-><init>(Ljava/lang/Runnable;)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/gameloft/adsutils/a;->a()V

    :goto_26
    return-void
.end method

.method public static RunOnMainThreadAsync(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_1e

    :cond_12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void
.end method

.method private static SetClassLoader()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/gameloft/adsutils/AdsUtils;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/adsutils/AdsUtils;->NativeSetClassLoader(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_9} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_13
    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/gameloft/adsutils/AdsUtils;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()V
    .registers 0

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->RefreshAdIdSync()V

    return-void
.end method

###### Class com.gameloft.adsutils.AdsUtils.a (com.gameloft.adsutils.AdsUtils$a)
.class Lcom/gameloft/adsutils/AdsUtils$a;
.super Ljava/lang/Object;
.source "AdsUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsutils/AdsUtils;->Initialize(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsutils/AdsUtils$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gameloft/adsutils/AdsUtils$a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/adsutils/AdsUtils;->access$002(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    const-string v0, ""

    invoke-static {v0}, Lcom/gameloft/adsutils/AdsUtils;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :goto_18
    return-void
.end method

###### Class com.gameloft.adsutils.AdsUtils.b (com.gameloft.adsutils.AdsUtils$b)
.class Lcom/gameloft/adsutils/AdsUtils$b;
.super Ljava/lang/Object;
.source "AdsUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsutils/AdsUtils;->RefreshAdId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-static {}, Lcom/gameloft/adsutils/AdsUtils;->access$100()V

    return-void
.end method
