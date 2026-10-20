###### Class com.mbridge.msdk.foundation.same.net.g.a (com.mbridge.msdk.foundation.same.net.g.a)
.class public final Lcom/mbridge/msdk/foundation/same/net/g/a;
.super Ljava/lang/Object;
.source "CommonHttpConfig.java"


# direct methods
.method public static a(Lcom/mbridge/msdk/foundation/same/net/b/a;)Ljava/lang/String;
    .registers 5

    const-string v0, "Network error,Load failed"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    iget v1, p0, Lcom/mbridge/msdk/foundation/same/net/b/a;->a:I

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/net/b/a;->b:Lcom/mbridge/msdk/foundation/same/net/f/c;

    if-eqz p0, :cond_e

    iget v2, p0, Lcom/mbridge/msdk/foundation/same/net/f/c;->a:I

    :cond_e
    const/4 v3, -0x2

    if-eq v1, v3, :cond_7d

    packed-switch v1, :pswitch_data_86

    const-string v0, "Network error,unknown"

    goto/16 :goto_84

    :pswitch_18
    const-string v0, "Network error,I/O exception contents null"

    goto/16 :goto_84

    :pswitch_1c
    const-string v0, "Network error,I/O exception response null"

    goto/16 :goto_84

    :pswitch_20
    if-eqz p0, :cond_31

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/net/f/c;->b:[B

    if-eqz p0, :cond_2d

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_84

    :cond_2d
    const-string p0, "Socket exception message is NULL"

    move-object v0, p0

    goto :goto_84

    :cond_31
    const-string v0, "Unknown socket exception"

    goto :goto_84

    :pswitch_34
    const-string v0, "Network error,ConnectException"

    goto :goto_84

    :pswitch_37
    const-string v0, "Network error\uff0csslp exception"

    goto :goto_84

    :pswitch_3a
    const-string v0, "Network error,socket timeout exception"

    goto :goto_84

    :pswitch_3d
    const-string v0, "Network error,UnknownHostException"

    goto :goto_84

    :pswitch_40
    const-string v0, "Cast exception, return data can not be casted correctly"

    goto :goto_84

    :pswitch_43
    if-eqz v2, :cond_57

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The server returns an exception state code "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_84

    :cond_57
    const-string v0, "The server returns an exception "

    goto :goto_84

    :pswitch_5a
    if-eqz v2, :cond_6e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network error,please check state code "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_84

    :cond_6e
    const-string v0, "Network error,please check "

    goto :goto_84

    :pswitch_71
    const-string v0, "Network error\uff0chttps is not work,please check your phone time"

    goto :goto_84

    :pswitch_74
    const-string v0, "Network unknown error"

    goto :goto_84

    :pswitch_77
    const-string v0, "Network error,timeout exception"

    goto :goto_84

    :pswitch_7a
    const-string v0, "Network error,I/O exception"

    goto :goto_84

    :cond_7d
    const-string v0, "Network is canceled"
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_84
    :pswitch_84
    return-object v0

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_84
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_5a
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_20
        :pswitch_1c
        :pswitch_18
    .end packed-switch
.end method
