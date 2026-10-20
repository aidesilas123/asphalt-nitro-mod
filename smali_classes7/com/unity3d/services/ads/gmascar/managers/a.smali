###### Class com.unity3d.services.ads.gmascar.managers.a (com.unity3d.services.ads.gmascar.managers.a)
.class public final synthetic Lcom/unity3d/services/ads/gmascar/managers/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/managers/a;->a:Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/a;->a:Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/managers/BiddingBaseManager;->a()V

    return-void
.end method
