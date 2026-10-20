###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.AnonymousClass3 (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$3)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;
.super Ljava/lang/Object;
.source "AssetView.java"

# interfaces
.implements Lcom/squareup/imagelib/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->handlePngResource(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field final synthetic val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_13
    return-void
.end method

.method public onSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$300(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_19
    return-void
.end method
