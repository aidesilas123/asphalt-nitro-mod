###### Class com.unity3d.services.ads.operation.show.b (com.unity3d.services.ads.operation.show.b)
.class public final synthetic Lcom/unity3d/services/ads/operation/show/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

.field public final synthetic b:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/ads/operation/show/ShowOperationState;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/show/b;->a:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    iput-object p2, p0, Lcom/unity3d/services/ads/operation/show/b;->b:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/b;->a:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/show/b;->b:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/ads/operation/show/ShowOperationState;->b(Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V

    return-void
.end method
