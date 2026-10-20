###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.AnonymousClass1 (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$1)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;
.super Ljava/lang/Object;
.source "AssetView.java"

# interfaces
.implements Lcom/squareup/imagelib/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field final synthetic val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_13
    return-void
.end method

.method public onSuccess()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->k(Ljava/lang/String;)Lcom/squareup/imagelib/t;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/imagelib/t;->k(II)Lcom/squareup/imagelib/t;

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->j()Lcom/squareup/imagelib/t;

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->a()Lcom/squareup/imagelib/t;

    :cond_4d
    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->i()Lcom/squareup/imagelib/t;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$100(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->m(Ljava/util/List;)Lcom/squareup/imagelib/t;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$000(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->val$loadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_75

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_75
    return-void
.end method
