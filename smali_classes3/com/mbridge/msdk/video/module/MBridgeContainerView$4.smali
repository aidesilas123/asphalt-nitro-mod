###### Class com.mbridge.msdk.video.module.MBridgeContainerView.AnonymousClass4 (com.mbridge.msdk.video.module.MBridgeContainerView$4)
.class final Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;
.super Lcom/mbridge/msdk/video/module/a/a/i;
.source "MBridgeContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/module/MBridgeContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeContainerView;Lcom/mbridge/msdk/video/module/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/video/module/a/a/i;-><init>(Lcom/mbridge/msdk/video/module/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/module/a/a/i;->a(ILjava/lang/Object;)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_5c

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->webviewshow()V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Lcom/mbridge/msdk/foundation/entity/n;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/entity/n;-><init>()V

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/entity/n;->n(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/entity/n;->p(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/entity/n;->r(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p2

    if-eqz p2, :cond_4c

    sget p2, Lcom/mbridge/msdk/foundation/entity/n;->a:I

    goto :goto_4e

    :cond_4c
    sget p2, Lcom/mbridge/msdk/foundation/entity/n;->b:I

    :goto_4e
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/entity/n;->b(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeContainerView$4;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v0, p2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lcom/mbridge/msdk/video/module/MBridgeContainerView;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/mbridge/msdk/foundation/same/report/n;->a(Lcom/mbridge/msdk/foundation/entity/n;Landroid/content/Context;Ljava/lang/String;)V

    :cond_5c
    return-void
.end method
