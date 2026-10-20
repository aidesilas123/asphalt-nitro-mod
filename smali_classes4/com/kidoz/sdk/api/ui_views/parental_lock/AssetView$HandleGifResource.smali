###### Class com.kidoz.sdk.api.ui_views.parental_lock.AssetView.HandleGifResource (com.kidoz.sdk.api.ui_views.parental_lock.AssetView$HandleGifResource)
.class Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;
.super Ljava/lang/Object;
.source "AssetView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandleGifResource"
.end annotation


# instance fields
.field mDefaultImage:Landroid/graphics/drawable/Drawable;

.field mFile:Ljava/io/File;

.field mLoadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

.field mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mFile:Ljava/io/File;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mDefaultImage:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mLoadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    iput-object p5, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->run()V

    return-void
.end method


# virtual methods
.method public gifDecoderViewReady()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$600(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$700(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$600(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$300(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$600(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;->start()V

    :cond_26
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mLoadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_39
    return-void
.end method

.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$400(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$500(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v2, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0}, Lcom/kidoz/sdk/api/gif/views/GifDecoderView;-><init>(Landroid/content/Context;Ljava/io/InputStream;Lcom/kidoz/sdk/api/gif/views/GifDecoderView$IGifDecoderViewCallback;)V

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$602(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Lcom/kidoz/sdk/api/gif/views/GifDecoderView;)Lcom/kidoz/sdk/api/gif/views/GifDecoderView;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_5c

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   path: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$202(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mDefaultImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$300(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;Landroid/graphics/drawable/Drawable;)V

    :cond_4f
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->mLoadedListener:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;

    if-eqz v0, :cond_5c

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$HandleGifResource;->this$0:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->access$200(Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;->onAssetLoaded(Z)V

    :cond_5c
    :goto_5c
    return-void
.end method
