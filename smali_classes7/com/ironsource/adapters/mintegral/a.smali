###### Class com.json.adapters.mintegral.a (com.ironsource.adapters.mintegral.a)
.class public final synthetic Lcom/ironsource/adapters/mintegral/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/mintegral/MintegralAdapter;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/mintegral/a;->a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/mintegral/a;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/mintegral/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/mintegral/a;->d:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adapters/mintegral/a;->a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/mintegral/a;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/adapters/mintegral/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/mintegral/a;->d:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->a(Lcom/ironsource/adapters/mintegral/MintegralAdapter;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    return-void
.end method
