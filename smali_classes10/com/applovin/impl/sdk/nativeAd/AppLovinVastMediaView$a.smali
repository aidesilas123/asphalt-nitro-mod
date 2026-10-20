###### Class com.applovin.impl.sdk.nativeAd.AppLovinVastMediaView.a (com.applovin.impl.sdk.nativeAd.AppLovinVastMediaView$a)
.class Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic aHg:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;->aHg:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;->aHg:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;

    invoke-static {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->access$1200(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Lcom/applovin/impl/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LY()Lcom/applovin/impl/b/g;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/applovin/impl/b/g;->Mw()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;->aHg:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;

    iget-object v1, v1, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;->aHg:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;

    iget-object v1, v1, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Industry icon clicked, opening URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLovinVastMediaView"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;->aHg:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;

    sget-object v2, Lcom/applovin/impl/b/a$c;->aWZ:Lcom/applovin/impl/b/a$c;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->access$2100(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Lcom/applovin/impl/b/a$c;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;->aHg:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;

    iget-object v1, v1, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/s;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/n;)Z

    return-void
.end method
