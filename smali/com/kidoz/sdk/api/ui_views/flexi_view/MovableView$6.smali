###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass6 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$6)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/squareup/imagelib/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->loadMainAsset(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

.field final synthetic val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 1

    return-void
.end method

.method public onSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$6;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;->onAssetsReady()V

    return-void
.end method
