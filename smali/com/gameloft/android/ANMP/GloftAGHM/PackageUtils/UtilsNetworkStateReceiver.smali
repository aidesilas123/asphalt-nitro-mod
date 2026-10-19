###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.UtilsNetworkStateReceiver (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.UtilsNetworkStateReceiver)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UtilsNetworkStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static CheckConnectionType(Landroid/content/Context;)I
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_80

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;->hasConnectivity(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_80

    :cond_b
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/16 v7, 0x9

    if-eq v2, v6, :cond_30

    packed-switch v2, :pswitch_data_82

    const/16 v6, 0x9

    goto :goto_30

    :pswitch_29
    const/4 v6, 0x4

    goto :goto_30

    :pswitch_2b
    const/4 v6, 0x3

    goto :goto_30

    :pswitch_2d
    const/4 v6, 0x2

    goto :goto_30

    :pswitch_2f
    const/4 v6, 0x5

    :cond_30
    :goto_30
    if-ne v6, v7, :cond_7b

    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v8, -0x1

    const/16 v9, 0xd

    :try_start_3d
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_41} :catch_42

    goto :goto_71

    :catch_42
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-ge p0, v10, :cond_52

    if-eqz v2, :cond_4f

    if-eq v2, v3, :cond_4f

    if-eq v2, v5, :cond_4f

    goto :goto_71

    :cond_4f
    const/16 v8, 0xd

    goto :goto_71

    :cond_52
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p0

    array-length v2, p0

    if-lez v2, :cond_71

    array-length v2, p0

    const/4 v3, 0x0

    :goto_5b
    if-ge v3, v2, :cond_71

    aget-object v5, p0, v3

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-nez v5, :cond_66

    goto :goto_6e

    :cond_66
    invoke-virtual {v5, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    const/16 v8, 0xd

    :cond_6e
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_71
    :goto_71
    packed-switch v8, :pswitch_data_8e

    goto :goto_7b

    :pswitch_75
    const/16 v6, 0x8

    goto :goto_7b

    :pswitch_78
    const/4 v6, 0x7

    goto :goto_7b

    :pswitch_7a
    const/4 v6, 0x6

    :cond_7b
    :goto_7b
    if-ne v6, v4, :cond_7e

    goto :goto_7f

    :cond_7e
    move v7, v6

    :goto_7f
    return v7

    :cond_80
    :goto_80
    return v0

    nop

    :pswitch_data_82
    .packed-switch 0x6
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_7a
        :pswitch_78
        :pswitch_7a
        :pswitch_78
        :pswitch_78
        :pswitch_7a
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_7a
        :pswitch_78
        :pswitch_75
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method

.method public static hasConnectivity(Landroid/content/Context;)I
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;->CheckConnectionType(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetConnectionType(I)V

    return-void
.end method
