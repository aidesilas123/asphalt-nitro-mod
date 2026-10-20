###### Class com.json.adapters.mintegral.d (com.ironsource.adapters.mintegral.d)
.class public final synthetic Lcom/ironsource/adapters/mintegral/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/mbridge/msdk/MBridgeSDK;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/mintegral/MintegralAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/MBridgeSDK;Ljava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/mintegral/d;->a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/mintegral/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/mintegral/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/mintegral/d;->d:Lcom/mbridge/msdk/MBridgeSDK;

    iput-object p5, p0, Lcom/ironsource/adapters/mintegral/d;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adapters/mintegral/d;->a:Lcom/ironsource/adapters/mintegral/MintegralAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/mintegral/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/mintegral/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/mintegral/d;->d:Lcom/mbridge/msdk/MBridgeSDK;

    iget-object v4, p0, Lcom/ironsource/adapters/mintegral/d;->e:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->d(Lcom/ironsource/adapters/mintegral/MintegralAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/MBridgeSDK;Ljava/util/Map;)V

    return-void
.end method
