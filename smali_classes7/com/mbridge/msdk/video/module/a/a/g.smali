###### Class com.mbridge.msdk.video.module.a.a.g (com.mbridge.msdk.video.module.a.a.g)
.class public final Lcom/mbridge/msdk/video/module/a/a/g;
.super Lcom/mbridge/msdk/video/module/a/a/i;
.source "MiniCardProxyNotifyListener.java"


# instance fields
.field private a:Lcom/mbridge/msdk/video/module/MBridgeClickMiniCardView;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeClickMiniCardView;Lcom/mbridge/msdk/video/module/a/a;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/video/module/a/a/i;-><init>(Lcom/mbridge/msdk/video/module/a/a;)V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/a/a/g;->a:Lcom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_24

    goto :goto_1e

    :pswitch_5
    const/16 p1, 0x6b

    goto :goto_1e

    :pswitch_8
    const/4 v0, 0x1

    goto :goto_1e

    :pswitch_a
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/a/a/g;->a:Lcom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->webviewshow()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/a/a/g;->a:Lcom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1e
    :goto_1e
    if-nez v0, :cond_23

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/module/a/a/i;->a(ILjava/lang/Object;)V

    :cond_23
    return-void

    :pswitch_data_24
    .packed-switch 0x64
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
