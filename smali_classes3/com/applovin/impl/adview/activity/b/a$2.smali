###### Class com.applovin.impl.adview.activity.b.a.AnonymousClass2 (com.applovin.impl.adview.activity.b.a$2)
.class Lcom/applovin/impl/adview/activity/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajl:Lcom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$2;->ajl:Lcom/applovin/impl/adview/activity/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ge(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a$2;->ajl:Lcom/applovin/impl/adview/activity/b/a;

    iget v1, v0, Lcom/applovin/impl/adview/activity/b/a;->ajf:I

    sget v2, Lcom/applovin/impl/sdk/i;->aAb:I

    if-eq v1, v2, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/impl/adview/activity/b/a;->ajg:Z

    :cond_b
    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/a;->aiQ:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->qZ()Lcom/applovin/impl/adview/d;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/sdk/i;->gx(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a$2;->ajl:Lcom/applovin/impl/adview/activity/b/a;

    iget v1, v1, Lcom/applovin/impl/adview/activity/b/a;->ajf:I

    invoke-static {v1}, Lcom/applovin/impl/sdk/i;->gx(I)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "javascript:al_muteSwitchOn();"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/d;->bq(Ljava/lang/String;)V

    goto :goto_33

    :cond_2b
    const/4 v1, 0x2

    if-ne p1, v1, :cond_33

    const-string v1, "javascript:al_muteSwitchOff();"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/d;->bq(Ljava/lang/String;)V

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a$2;->ajl:Lcom/applovin/impl/adview/activity/b/a;

    iput p1, v0, Lcom/applovin/impl/adview/activity/b/a;->ajf:I

    return-void
.end method
