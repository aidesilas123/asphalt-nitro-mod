###### Class com.json.adapters.mintegral.e (com.ironsource.adapters.mintegral.e)
.class public final synthetic Lcom/ironsource/adapters/mintegral/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/mintegral/MintegralAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/mintegral/e;->a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/mintegral/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/mintegral/e;->c:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p4, p0, Lcom/ironsource/adapters/mintegral/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/adapters/mintegral/e;->e:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iput-object p6, p0, Lcom/ironsource/adapters/mintegral/e;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/ironsource/adapters/mintegral/e;->a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/mintegral/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/mintegral/e;->c:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v3, p0, Lcom/ironsource/adapters/mintegral/e;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/adapters/mintegral/e;->e:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iget-object v5, p0, Lcom/ironsource/adapters/mintegral/e;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->e(Lcom/ironsource/adapters/mintegral/MintegralAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V

    return-void
.end method
