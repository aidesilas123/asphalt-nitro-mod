###### Class com.mbridge.msdk.mbbid.common.BidResponsedEx (com.mbridge.msdk.mbbid.common.BidResponsedEx)
.class public Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;
.super Lcom/mbridge/msdk/mbbid/out/BidResponsed;
.source "BidResponsedEx.java"


# static fields
.field public static final KEY_CID:Ljava/lang/String; = "cid"

.field public static final KEY_MACORS:Ljava/lang/String; = "macors"

.field public static final TAG:Ljava/lang/String; = "BidResponsedEx"


# instance fields
.field private cid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;-><init>()V

    return-void
.end method

.method public static decodePrice(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static parseBidResponsedEx(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;
    .registers 7

    const/4 p1, 0x0

    if-eqz p0, :cond_81

    :try_start_3
    new-instance v0, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;

    invoke-direct {v0}, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_77

    :try_start_8
    const-string p1, "bid"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->setBidId(Ljava/lang/String;)V

    const-string p1, "cur"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->setCur(Ljava/lang/String;)V

    const-string p1, "price"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->setPrice(Ljava/lang/String;)V

    const-string p1, "cid"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;->setCid(Ljava/lang/String;)V

    const-string p1, "token"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->setBidToken(Ljava/lang/String;)V

    const-string p1, "macors"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "ln"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wn"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_6c

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;->replaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v4}, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;->replaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :cond_6c
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;->setLn(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;->setWn(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_8 .. :try_end_72} :catchall_74

    move-object p1, v0

    goto :goto_81

    :catchall_74
    move-exception p0

    move-object p1, v0

    goto :goto_78

    :catchall_77
    move-exception p0

    :goto_78
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BidResponsedEx"

    invoke-static {v0, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-object p1
.end method

.method private static replaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    :goto_31
    return-object p0
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbbid/common/BidResponsedEx;->cid:Ljava/lang/String;

    return-void
.end method

.method public setLn(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->ln:Ljava/lang/String;

    return-void
.end method

.method public setWn(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->wn:Ljava/lang/String;

    return-void
.end method
