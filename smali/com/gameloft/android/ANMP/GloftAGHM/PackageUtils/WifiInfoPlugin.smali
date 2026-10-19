###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.WifiInfoPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.WifiInfoPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;
.super Ljava/lang/Object;
.source "WifiInfoPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;
    }
.end annotation


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Landroid/net/wifi/WifiManager;

.field private static c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;

.field private static d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static e:Ljava/util/concurrent/ScheduledFuture;

.field private static f:J

.field private static g:I

.field private static volatile h:Z

.field private static volatile i:Z

.field private static volatile j:Z

.field private static final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->e:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, 0x3c

    sput-wide v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->f:J

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->h:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->i:Z

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->j:Z

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$a;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$a;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppendCurrentWifiInfo(Lorg/json/JSONObject;Landroid/net/wifi/WifiInfo;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->a:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    if-eqz v0, :cond_2e

    const-string v0, "SSID"

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    :cond_2e
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    if-eqz v0, :cond_44

    const-string v0, "BSSID"

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_45

    :cond_44
    move v1, v0

    :goto_45
    if-eqz v1, :cond_4c

    const-string p1, "connected_wifi"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4c

    :catch_4c
    :cond_4c
    return-void
.end method

.method public static AppendScannedWifiInfo(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$b;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$b;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    :try_start_8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_36

    const-string v5, "SSID"

    iget-object v7, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    iget-object v7, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_47

    const-string v5, "BSSID"

    iget-object v7, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x1

    :cond_47
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_5f

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5f

    const-string v5, "Venue"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x1

    :cond_5f
    if-eqz v5, :cond_13

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v2, 0x1

    goto :goto_13

    :cond_66
    if-eqz v2, :cond_6d

    const-string p1, "available_wifis"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6d} :catch_6d

    :catch_6d
    :cond_6d
    return-void
.end method

.method public static DisableWifiScanner()V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->UnregisterScannerReceiver()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->i:Z

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    const-string v1, "{}"

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetWifiScannerResult(ILjava/lang/String;)V

    return-void
.end method

.method public static EnableWifiScanner()V
    .registers 8

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->h:Z

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->e:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_17

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->k:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    sget-wide v5, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->f:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_17
    return-void
.end method

.method public static GetWifiScannerStatus()I
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    return v0
.end method

.method private static InitializeWifiScanner()V
    .registers 3

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->h:Z

    if-nez v0, :cond_8

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    return-void

    :cond_8
    const/4 v0, 0x3

    :try_start_9
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->b:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_19

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->a:Landroid/app/Activity;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->b:Landroid/net/wifi/WifiManager;

    :cond_19
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->b:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_20

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    return-void

    :cond_20
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-eq v1, v0, :cond_2a

    const/4 v1, 0x2

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    return-void

    :cond_2a
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->isLocationPermissionEnabled()Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x1

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    goto :goto_48

    :cond_34
    sget-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->j:Z

    if-nez v1, :cond_42

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;

    invoke-direct {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;-><init>()V

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->RegisterScannerReceiver()V

    :cond_42
    const/4 v1, 0x0

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_45} :catch_46

    goto :goto_48

    :catch_46
    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    :goto_48
    return-void
.end method

.method private static RegisterScannerReceiver()V
    .registers 4

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->h:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->b:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->j:Z

    if-nez v0, :cond_21

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->a:Landroid/app/Activity;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->j:Z

    :cond_21
    return-void
.end method

.method private static UnregisterScannerReceiver()V
    .registers 2

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->h:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->j:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->b:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->j:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->a:Landroid/app/Activity;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->j:Z

    :cond_1e
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->h:Z

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->i:Z

    return v0
.end method

.method static synthetic access$200()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->InitializeWifiScanner()V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->g:I

    return p0
.end method

.method static synthetic access$400()Landroid/net/wifi/WifiManager;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->b:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    sput-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->a:Landroid/app/Activity;

    return-void
.end method

.method public onPostNativePause()V
    .registers 1

    return-void
.end method

.method public onPostNativeResume()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->i:Z

    return-void
.end method

.method public onPreNativePause()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->i:Z

    return-void
.end method

.method public onPreNativeResume()V
    .registers 1

    return-void
.end method
