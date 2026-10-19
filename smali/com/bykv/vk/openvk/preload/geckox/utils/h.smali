###### Class com.bykv.vk.openvk.preload.geckox.utils.h (com.bykv.vk.openvk.preload.geckox.utils.h)
.class public final Lcom/bykv/vk/openvk/preload/geckox/utils/h;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_4c

    const-string v1, "unknow"

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    :try_start_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_4b

    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-eqz v0, :cond_32

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_2f

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_32

    :cond_2f
    const-string p0, "WIFI"

    return-object p0

    :cond_32
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_4c

    packed-switch p0, :pswitch_data_58

    return-object v1

    :pswitch_42
    const-string p0, "4G"

    return-object p0

    :pswitch_45
    const-string p0, "3G"

    return-object p0

    :pswitch_48
    :try_start_48
    const-string p0, "2G"
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4c

    return-object p0

    :cond_4b
    :goto_4b
    return-object v1

    :catchall_4c
    move-exception p0

    const-string v0, "gecko-debug-tag"

    const-string v1, "getNetworkState:"

    invoke-static {v0, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "null"

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_48
        :pswitch_48
        :pswitch_45
        :pswitch_48
        :pswitch_45
        :pswitch_45
        :pswitch_48
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method
