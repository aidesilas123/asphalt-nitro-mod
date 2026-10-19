###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.WifiInfoPlugin.a (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.WifiInfoPlugin$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$a;
.super Ljava/lang/Object;
.source "WifiInfoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;
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
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$000()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$100()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$200()V

    const/4 v0, 0x2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$300()I

    move-result v1

    if-eq v0, v1, :cond_48

    const/4 v0, 0x3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$300()I

    move-result v1

    if-ne v0, v1, :cond_1e

    goto :goto_48

    :cond_1e
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->isLocationPermissionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$400()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_51

    :cond_2c
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$400()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->AppendCurrentWifiInfo(Lorg/json/JSONObject;Landroid/net/wifi/WifiInfo;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$300()I

    move-result v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetWifiScannerResult(ILjava/lang/String;)V

    goto :goto_51

    :cond_48
    :goto_48
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$300()I

    move-result v0

    const-string v1, "{}"

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetWifiScannerResult(ILjava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method
