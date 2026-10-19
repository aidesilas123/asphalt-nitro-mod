###### Class com.mbridge.msdk.video.module.a.a.n (com.mbridge.msdk.video.module.a.a.n)
.class public final Lcom/mbridge/msdk/video/module/a/a/n;
.super Lcom/mbridge/msdk/video/module/a/a/o;
.source "VideoViewJSListener.java"


# instance fields
.field private l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

.field private m:I

.field private n:Z

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/b/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILcom/mbridge/msdk/video/module/a/a;IZI)V
    .registers 24

    move-object v9, p0

    move-object v10, p1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/video/module/a/a/o;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/b/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/a/a;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/mbridge/msdk/video/module/a/a/n;->n:Z

    iput-boolean v0, v9, Lcom/mbridge/msdk/video/module/a/a/n;->p:Z

    iput-object v10, v9, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    move/from16 v1, p7

    iput v1, v9, Lcom/mbridge/msdk/video/module/a/a/n;->m:I

    if-nez p8, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    iput-boolean v1, v9, Lcom/mbridge/msdk/video/module/a/a/n;->n:Z

    if-nez v10, :cond_29

    iput-boolean v0, v9, Lcom/mbridge/msdk/video/module/a/a/k;->a:Z

    :cond_29
    move/from16 v0, p12

    iput v0, v9, Lcom/mbridge/msdk/video/module/a/a/n;->o:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 13

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_2be

    const-string v0, ""

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2a2

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq p1, v5, :cond_227

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq p1, v7, :cond_1e8

    const/4 v7, 0x6

    if-eq p1, v7, :cond_227

    if-eq p1, v2, :cond_1c6

    const/16 v8, 0x72

    if-eq p1, v8, :cond_195

    const/16 v8, 0x74

    if-eq p1, v8, :cond_178

    packed-switch p1, :pswitch_data_2c2

    packed-switch p1, :pswitch_data_2d2

    goto/16 :goto_2be

    :pswitch_29
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/e;->hideAlertWebview()V

    goto/16 :goto_2be

    :pswitch_34
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v1

    const/16 v2, 0x7b

    if-ne p1, v2, :cond_3f

    const/4 v7, 0x7

    :cond_3f
    invoke-interface {v1, v7, v0}, Lcom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    goto/16 :goto_2be

    :pswitch_44
    if-eqz p2, :cond_2be

    instance-of v0, p2, Lcom/mbridge/msdk/video/module/MBridgeVideoView$a;

    if-eqz v0, :cond_2be

    move-object v0, p2

    check-cast v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$a;

    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/a/a/n;->n:Z

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mbridge/msdk/video/signal/f;->a(Lcom/mbridge/msdk/video/module/MBridgeVideoView$a;)V

    goto/16 :goto_2be

    :pswitch_5a
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->n:Z

    if-nez v0, :cond_2be

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Lcom/mbridge/msdk/video/signal/i;->closeVideoOperate(II)V

    goto/16 :goto_2be

    :pswitch_69
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->isH5Canvas()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lcom/mbridge/msdk/video/signal/i;->closeVideoOperate(II)V

    :cond_7e
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/mbridge/msdk/video/signal/f;->a(I)V

    goto/16 :goto_2be

    :pswitch_89
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    if-eq v0, v3, :cond_ac

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v0

    if-eq v0, v5, :cond_b5

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/video/signal/i;->setVisible(I)V

    goto :goto_b5

    :cond_ac
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/mbridge/msdk/video/signal/i;->setVisible(I)V

    :cond_b5
    :goto_b5
    const/16 v0, 0xc

    if-ne p1, v0, :cond_be

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->h()V

    const/4 v2, 0x2

    goto :goto_bf

    :cond_be
    const/4 v2, 0x1

    :goto_bf
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v3}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/mbridge/msdk/video/signal/f;->a(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lcom/mbridge/msdk/video/signal/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/c;->g()I

    move-result v2

    if-ne v2, v5, :cond_101

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/mbridge/msdk/video/signal/i;->setVisible(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v3}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v4

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewTop()I

    move-result v5

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewLeft()I

    move-result v6

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewWidth()I

    move-result v7

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewHeight()I

    move-result v8

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewRadius()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Lcom/mbridge/msdk/video/signal/e;->showMiniCard(IIIII)V

    goto :goto_14a

    :cond_101
    if-ne p1, v0, :cond_129

    iget v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->o:I

    if-ne v2, v1, :cond_14a

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v2

    if-eq v2, v5, :cond_11f

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mbridge/msdk/video/signal/e;->showEndcard(I)V

    goto :goto_14a

    :cond_11f
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/e;->showVideoEndCover()V

    goto :goto_14a

    :cond_129
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v2

    if-eq v2, v5, :cond_141

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mbridge/msdk/video/signal/e;->showEndcard(I)V

    goto :goto_14a

    :cond_141
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/e;->showVideoEndCover()V

    :cond_14a
    :goto_14a
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/i;->dismissAllAlert()V

    if-ne p1, v0, :cond_2be

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->p:Z

    if-nez v0, :cond_2be

    iget v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->o:I

    if-ne v0, v1, :cond_2be

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->h()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->g()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->f()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->e()V

    goto/16 :goto_2be

    :pswitch_16b
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/module/a/a/n;->p:Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/mbridge/msdk/video/signal/f;->a(I)V

    goto/16 :goto_2be

    :cond_178
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v1

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewWidth()I

    move-result v2

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewHeight()I

    move-result v3

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewRadius()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/mbridge/msdk/video/signal/e;->configurationChanged(III)V

    goto/16 :goto_2be

    :cond_195
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lcom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/c;->g()I

    move-result v0

    if-ne v0, v5, :cond_2be

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v2

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewTop()I

    move-result v3

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewLeft()I

    move-result v4

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewWidth()I

    move-result v5

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewHeight()I

    move-result v6

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->getBorderViewRadius()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/mbridge/msdk/video/signal/e;->showMiniCard(IIIII)V

    goto/16 :goto_2be

    :cond_1c6
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/e;->showAlertWebView()Z

    move-result v0

    if-nez v0, :cond_1dd

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->showAlertView()V

    goto/16 :goto_2be

    :cond_1dd
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/i;->alertWebViewShowed()V

    goto/16 :goto_2be

    :cond_1e8
    if-eqz p2, :cond_2be

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2be

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1fc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_200

    :cond_1fc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_200
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, v6}, Lcom/mbridge/msdk/video/signal/i;->soundOperate(II)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Lcom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    goto/16 :goto_2be

    :cond_227
    iget-object v6, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v6}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v6

    invoke-interface {v6}, Lcom/mbridge/msdk/video/signal/i;->dismissAllAlert()V

    if-ne p1, v5, :cond_23b

    iget-object v6, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v6}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v6

    invoke-interface {v6, v5, v0}, Lcom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    :cond_23b
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lcom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/c;->g()I

    move-result v0

    const/16 v6, 0x10

    if-ne v0, v5, :cond_253

    goto :goto_296

    :cond_253
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    if-eq v0, v3, :cond_265

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/video/signal/i;->setVisible(I)V

    goto :goto_26e

    :cond_265
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/mbridge/msdk/video/signal/i;->setVisible(I)V

    :goto_26e
    iget v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->m:I

    if-ne v0, v5, :cond_296

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/e;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_296

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v0

    if-eq v0, v5, :cond_296

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/video/signal/e;->showEndcard(I)V

    goto :goto_298

    :cond_296
    :goto_296
    const/16 p1, 0x10

    :goto_298
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/f;->a(I)V

    goto :goto_2be

    :cond_2a2
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/e;->endCardShowing()Z

    move-result v2

    if-nez v2, :cond_2be

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/a/a/n;->l:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v2

    if-nez p2, :cond_2b7

    goto :goto_2bb

    :cond_2b7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2bb
    invoke-interface {v2, v1, v0}, Lcom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    :cond_2be
    :goto_2be
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/module/a/a/o;->a(ILjava/lang/Object;)V

    return-void

    :pswitch_data_2c2
    .packed-switch 0xa
        :pswitch_16b
        :pswitch_89
        :pswitch_89
        :pswitch_69
        :pswitch_5a
        :pswitch_44
    .end packed-switch

    :pswitch_data_2d2
    .packed-switch 0x7b
        :pswitch_34
        :pswitch_34
        :pswitch_29
    .end packed-switch
.end method
