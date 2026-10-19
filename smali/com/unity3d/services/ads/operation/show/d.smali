###### Class com.unity3d.services.ads.operation.show.d (com.unity3d.services.ads.operation.show.d)
.class public final synthetic Lcom/unity3d/services/ads/operation/show/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/services/ads/operation/show/ShowOperationState;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/ads/operation/show/ShowOperationState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/show/d;->a:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/d;->a:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/operation/show/ShowOperationState;->a()V

    return-void
.end method
