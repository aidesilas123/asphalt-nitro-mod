###### Class com.json.adapters.mintegral.f (com.ironsource.adapters.mintegral.f)
.class public final synthetic Lcom/ironsource/adapters/mintegral/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/mintegral/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/adapters/mintegral/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/mintegral/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/mintegral/f;->d:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adapters/mintegral/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/adapters/mintegral/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/mintegral/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/mintegral/f;->d:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;)V

    return-void
.end method
