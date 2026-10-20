###### Class com.unity3d.services.ads.operation.load.a (com.unity3d.services.ads.operation.load.a)
.class public final synthetic Lcom/unity3d/services/ads/operation/load/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/services/ads/operation/load/LoadOperationState;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/ads/operation/load/LoadOperationState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/load/a;->a:Lcom/unity3d/services/ads/operation/load/LoadOperationState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/load/a;->a:Lcom/unity3d/services/ads/operation/load/LoadOperationState;

    invoke-static {v0}, Lcom/unity3d/services/ads/operation/load/LoadModuleDecoratorTimeout;->lambda$onOperationTimeout$0(Lcom/unity3d/services/ads/operation/load/LoadOperationState;)V

    return-void
.end method
