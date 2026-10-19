###### Class com.mbridge.msdk.dycreator.f.a (com.mbridge.msdk.dycreator.f.a)
.class public final Lcom/mbridge/msdk/dycreator/f/a;
.super Ljava/lang/Object;
.source "MBRewardData.java"

# interfaces
.implements Lcom/mbridge/msdk/dycreator/f/a/a;


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

.field private b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/f/a;->a:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/f/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method


# virtual methods
.method public final getBindData()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/f/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public final getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/f/a;->a:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    return-object v0
.end method
