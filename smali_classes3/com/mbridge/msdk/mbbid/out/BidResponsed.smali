###### Class com.mbridge.msdk.mbbid.out.BidResponsed (com.mbridge.msdk.mbbid.out.BidResponsed)
.class public Lcom/mbridge/msdk/mbbid/out/BidResponsed;
.super Ljava/lang/Object;
.source "BidResponsed.java"

# interfaces
.implements Lcom/mbridge/msdk/system/NoProGuard;


# static fields
.field public static final KEY_BID_ID:Ljava/lang/String; = "bid"

.field public static final KEY_CUR:Ljava/lang/String; = "cur"

.field public static final KEY_LN:Ljava/lang/String; = "ln"

.field public static final KEY_PRICE:Ljava/lang/String; = "price"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final KEY_WN:Ljava/lang/String; = "wn"


# instance fields
.field private bidId:Ljava/lang/String;

.field private bidToken:Ljava/lang/String;

.field private cur:Ljava/lang/String;

.field protected ln:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field protected wn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBidId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->bidId:Ljava/lang/String;

    return-object v0
.end method

.method public getBidToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->bidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCur()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->cur:Ljava/lang/String;

    return-object v0
.end method

.method public getLn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->ln:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getWn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->wn:Ljava/lang/String;

    return-object v0
.end method

.method public sendLossNotice(Landroid/content/Context;Lcom/mbridge/msdk/mbbid/out/BidLossCode;)V
    .registers 10

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->ln:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->ln:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->ln:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    const-string v1, "reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mbridge/msdk/mbbid/out/BidLossCode;->getCurrentCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3f
    return-void
.end method

.method public sendWinNotice(Landroid/content/Context;)V
    .registers 9

    iget-object v0, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->wn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->wn:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_15
    return-void
.end method

.method protected setBidId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->bidId:Ljava/lang/String;

    return-void
.end method

.method protected setBidToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->bidToken:Ljava/lang/String;

    return-void
.end method

.method protected setCur(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->cur:Ljava/lang/String;

    return-void
.end method

.method protected setPrice(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->price:Ljava/lang/String;

    return-void
.end method
