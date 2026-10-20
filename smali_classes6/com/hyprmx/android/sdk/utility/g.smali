###### Class com.hyprmx.android.sdk.utility.g (com.hyprmx.android.sdk.utility.g)
.class public final Lcom/hyprmx/android/sdk/utility/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/utility/q;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "roaming"

    const-string v2, "WIFI"

    const-string v3, "Undetermined"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x17

    if-lt v0, v7, :cond_a0

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/g;->a:Landroid/content/Context;

    const-class v7, Landroid/net/ConnectivityManager;

    invoke-static {v0, v7}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    goto :goto_25

    :cond_24
    move-object v7, v5

    :goto_25
    if-eqz v7, :cond_31

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-ne v8, v6, :cond_31

    const/4 v8, 0x1

    goto :goto_32

    :cond_31
    const/4 v8, 0x0

    :goto_32
    if-eqz v8, :cond_9a

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-virtual {v7, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_44

    move-object v1, v2

    goto :goto_9b

    :cond_44
    invoke-virtual {v7, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/g;->a:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_5d

    goto :goto_9b

    :cond_5d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9b

    :cond_68
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v1, "Bluetooth"

    goto :goto_9b

    :cond_72
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v1, "Ethernet"

    goto :goto_9b

    :cond_7c
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v1, "VPN"

    goto :goto_9b

    :cond_86
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v1, "Wifi Aware"

    goto :goto_9b

    :cond_90
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v1, "Lowpan"

    goto :goto_9b

    :cond_9a
    move-object v1, v5

    :goto_9b
    if-nez v1, :cond_9e

    goto :goto_f6

    :cond_9e
    move-object v3, v1

    goto :goto_f6

    :cond_a0
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/g;->a:Landroid/content/Context;

    const-class v7, Landroid/net/ConnectivityManager;

    invoke-static {v0, v7}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_b1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_b2

    :cond_b1
    move-object v0, v5

    :goto_b2
    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-ne v7, v6, :cond_bc

    const/4 v7, 0x1

    goto :goto_bd

    :cond_bc
    const/4 v7, 0x0

    :goto_bd
    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v6, :cond_c7

    const/4 v8, 0x1

    goto :goto_c8

    :cond_c7
    const/4 v8, 0x0

    :goto_c8
    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_d1

    const/4 v4, 0x1

    :cond_d1
    if-eqz v7, :cond_f3

    if-eqz v8, :cond_d7

    move-object v1, v2

    goto :goto_f4

    :cond_d7
    if-eqz v4, :cond_f3

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/g;->a:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_ec

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_ec

    goto :goto_f4

    :cond_ec
    if-eqz v0, :cond_f3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_f4

    :cond_f3
    move-object v1, v5

    :goto_f4
    if-nez v1, :cond_9e

    :goto_f6
    const-string v0, "Connection Type:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return-object v3
.end method
