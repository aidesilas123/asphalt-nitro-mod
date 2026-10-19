###### Class com.json.adapters.vungle.rewardedvideo.a (com.ironsource.adapters.vungle.rewardedvideo.a)
.class public final synthetic Lcom/ironsource/adapters/vungle/rewardedvideo/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/v1;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/v1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/rewardedvideo/a;->a:Lcom/vungle/ads/v1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/vungle/rewardedvideo/a;->a:Lcom/vungle/ads/v1;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/rewardedvideo/VungleRewardedVideoAdapter;->a(Lcom/vungle/ads/v1;)V

    return-void
.end method
