###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.WifiInfoPlugin.c.a (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.WifiInfoPlugin$c$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c$a;
.super Ljava/lang/Object;
.source "WifiInfoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$400()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$400()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->AppendCurrentWifiInfo(Lorg/json/JSONObject;Landroid/net/wifi/WifiInfo;)V

    invoke-static {v2, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->AppendScannedWifiInfo(Lorg/json/JSONObject;Ljava/util/List;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/WifiInfoPlugin;->access$300()I

    move-result v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetWifiScannerResult(ILjava/lang/String;)V

    return-void
.end method
