###### Class com.unity3d.services.banners.view.BannerWebPlayerContainer.AnonymousClass3 (com.unity3d.services.banners.view.BannerWebPlayerContainer$3)
.class Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;
.super Ljava/lang/Object;
.source "BannerWebPlayerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

.field final synthetic val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->this$0:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    iput-object p2, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-static {v0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->access$000(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-static {v0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->access$000(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->destroy()V

    :cond_29
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->access$002(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    return-void
.end method
