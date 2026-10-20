###### Class com.nearme.platform.opensdk.pay.PayResponse (com.nearme.platform.opensdk.pay.PayResponse)
.class public Lcom/nearme/platform/opensdk/pay/PayResponse;
.super Ljava/lang/Object;
.source "PayResponse.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3ef

    if-eq p0, v0, :cond_76

    const/16 v0, 0x3f2

    if-eq p0, v0, :cond_73

    const/16 v0, 0x3f4

    if-eq p0, v0, :cond_70

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_73

    const/16 v0, 0x15b3

    if-eq p0, v0, :cond_73

    const/16 v0, 0x4b0

    if-eq p0, v0, :cond_6d

    const/16 v0, 0x4b1

    if-eq p0, v0, :cond_6a

    packed-switch p0, :pswitch_data_7a

    packed-switch p0, :pswitch_data_88

    const-string v0, "\u67e5\u8be2\u4f59\u989d\u5931\u8d25"

    packed-switch p0, :pswitch_data_9a

    packed-switch p0, :pswitch_data_a4

    packed-switch p0, :pswitch_data_ae

    const-string p0, "\u672a\u77e5\u7ed3\u679c"

    return-object p0

    :pswitch_30
    const-string p0, "\u67e5\u8be2\u8ba2\u5355\u7ed3\u679c\u672a\u77e5"

    return-object p0

    :pswitch_33
    const-string p0, "\u67e5\u8be2\u8ba2\u5355\u5931\u8d25"

    return-object p0

    :pswitch_36
    const-string p0, "\u67e5\u8be2\u8ba2\u5355\u6210\u529f"

    return-object p0

    :pswitch_39
    const-string p0, "\u76f4\u63a5\u4ed8\u6b3e\u7ed3\u679c\u672a\u77e5"

    return-object p0

    :pswitch_3c
    const-string p0, "\u76f4\u63a5\u4ed8\u6b3e\u5931\u8d25"

    return-object p0

    :pswitch_3f
    const-string p0, "\u76f4\u63a5\u4ed8\u6b3e\u6210\u529f"

    return-object p0

    :pswitch_42
    const-string p0, "\u67e5\u8be2\u4f59\u989d\u7ed3\u679c\u672a\u77e5"

    return-object p0

    :pswitch_45
    return-object v0

    :pswitch_46
    const-string p0, "\u5546\u6237\u8ba2\u5355\u53f7\u91cd\u590d"

    return-object p0

    :pswitch_49
    const-string p0, "\u767b\u5f55\u9274\u6743\u5931\u8d25"

    return-object p0

    :pswitch_4c
    const-string p0, "\u7528\u6237\u4e0d\u5b58\u5728"

    return-object p0

    :pswitch_4f
    const-string p0, "\u53c2\u6570\u5f02\u5e38"

    return-object p0

    :pswitch_52
    const-string p0, "\u4f59\u989d\u4e0d\u8db3"

    return-object p0

    :pswitch_55
    const-string p0, "\u7cfb\u7edf\u9519\u8bef"

    return-object p0

    :pswitch_58
    const-string p0, "\u91d1\u989d\u9519\u8bef"

    return-object p0

    :pswitch_5b
    const-string p0, "\u7ed3\u679c\u672a\u77e5"

    return-object p0

    :pswitch_5e
    const-string p0, "\u53d6\u6d88"

    return-object p0

    :pswitch_61
    const-string p0, "\u8d85\u8fc7\u6700\u5927\u9650\u989d"

    return-object p0

    :pswitch_64
    const-string p0, "\u8ba2\u5355\u53f7\u91cd\u590d"

    return-object p0

    :pswitch_67
    const-string p0, "\u6210\u529f"

    return-object p0

    :cond_6a
    const-string p0, "\u7f3a\u5c11\u53c2\u6570"

    return-object p0

    :cond_6d
    const-string p0, "\u7b7e\u540d\u9519\u8bef"

    return-object p0

    :cond_70
    const-string p0, "\u6b63\u5728\u5904\u7406\u4e2d"

    return-object p0

    :cond_73
    const-string p0, "\u652f\u4ed8\u5931\u8d25"

    return-object p0

    :cond_76
    const-string p0, "\u7248\u672c\u65e0\u66f4\u65b0"

    return-object p0

    nop

    :pswitch_data_7a
    .packed-switch 0x3e9
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x1388
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x7530
        :pswitch_45
        :pswitch_45
        :pswitch_42
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x9c40
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0xc350
        :pswitch_36
        :pswitch_33
        :pswitch_30
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/nearme/platform/opensdk/pay/PayResponse;
    .registers 7

    const-string v0, "payChannel"

    const-string v1, "order"

    const-string v2, "msg"

    if-eqz p0, :cond_82

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_82

    :cond_15
    new-instance v3, Lcom/nearme/platform/opensdk/pay/PayResponse;

    invoke-direct {v3}, Lcom/nearme/platform/opensdk/pay/PayResponse;-><init>()V

    :try_start_1a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "errCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->a:I

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/PayResponse;->a(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->d:Ljava/lang/String;

    :cond_39
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->e:Ljava/lang/String;

    :cond_45
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->c:Ljava/lang/String;

    :cond_51
    iget-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->b:Ljava/lang/String;

    const-string v1, "\u672a\u77e5\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_63
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->b:Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_69} :catch_6a

    goto :goto_81

    :catch_6a
    const-class v0, Lcom/nearme/platform/opensdk/pay/PayResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse error. response is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :goto_81
    return-object v3

    :cond_82
    :goto_82
    const/4 p0, 0x0

    return-object p0
.end method
