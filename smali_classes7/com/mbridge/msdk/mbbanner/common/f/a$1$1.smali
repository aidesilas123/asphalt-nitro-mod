###### Class com.mbridge.msdk.mbbanner.common.f.a.AnonymousClass1.RunnableC04111 (com.mbridge.msdk.mbbanner.common.f.a$1$1)
.class final Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;
.super Ljava/lang/Object;
.source "BannerResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/f/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lcom/mbridge/msdk/mbbanner/common/f/a$1;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/f/a$1;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->b:Lcom/mbridge/msdk/mbbanner/common/f/a$1;

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->b:Lcom/mbridge/msdk/mbbanner/common/f/a$1;

    iget-object v0, v0, Lcom/mbridge/msdk/mbbanner/common/f/a$1;->d:Lcom/mbridge/msdk/mbbanner/common/f/a;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/f/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->b:Lcom/mbridge/msdk/mbbanner/common/f/a$1;

    iget-object v0, v0, Lcom/mbridge/msdk/mbbanner/common/f/a$1;->d:Lcom/mbridge/msdk/mbbanner/common/f/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/f/a;->a(Lcom/mbridge/msdk/mbbanner/common/f/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->b:Lcom/mbridge/msdk/mbbanner/common/f/a$1;

    iget-object v0, v0, Lcom/mbridge/msdk/mbbanner/common/f/a$1;->d:Lcom/mbridge/msdk/mbbanner/common/f/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/f;->saveHbState(I)V

    :cond_35
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->b:Lcom/mbridge/msdk/mbbanner/common/f/a$1;

    iget-object v0, v0, Lcom/mbridge/msdk/mbbanner/common/f/a$1;->d:Lcom/mbridge/msdk/mbbanner/common/f/a;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/f;->saveRequestTime(I)V

    goto :goto_69

    :cond_47
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignUnit;->getMsg()Ljava/lang/String;

    move-result-object v0

    :cond_50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->b:Lcom/mbridge/msdk/mbbanner/common/f/a$1;

    iget-object v0, v0, Lcom/mbridge/msdk/mbbanner/common/f/a$1;->b:Lorg/json/JSONObject;

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_60
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/f/a$1$1;->b:Lcom/mbridge/msdk/mbbanner/common/f/a$1;

    iget-object v2, v1, Lcom/mbridge/msdk/mbbanner/common/f/a$1;->d:Lcom/mbridge/msdk/mbbanner/common/f/a;

    iget v1, v1, Lcom/mbridge/msdk/mbbanner/common/f/a$1;->c:I

    invoke-virtual {v2, v1, v0}, Lcom/mbridge/msdk/mbbanner/common/f/a;->a(ILjava/lang/String;)V

    :goto_69
    return-void
.end method
