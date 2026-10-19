###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass3 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$3)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->loadSecondaryAssets(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;)V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$200(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$300(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$400(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$500(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->getIsAssetLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$3;->val$listener:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableAssetReadyListener;->onAssetsReady()V

    :cond_30
    monitor-exit p1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v0
.end method
