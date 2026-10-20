###### Class com.bytedance.sdk.openadsdk.core.g.i (com.bytedance.sdk.openadsdk.core.g.i)
.class public Lcom/bytedance/sdk/openadsdk/core/g/i;
.super Lcom/bytedance/sdk/openadsdk/core/g/g;
.source "ViewabilityTrackerForVideo.java"


# instance fields
.field private final e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/bytedance2/adsession/AdSession;Lcom/iab/omid/library/bytedance2/adsession/AdEvents;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;)V
    .registers 5
    .param p1    # Lcom/iab/omid/library/bytedance2/adsession/AdSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/AdEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/g/g;-><init>(Lcom/iab/omid/library/bytedance2/adsession/AdSession;Lcom/iab/omid/library/bytedance2/adsession/AdEvents;Landroid/view/View;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    if-eqz p2, :cond_d

    const/4 p2, 0x0

    goto :goto_f

    :cond_d
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_f
    invoke-virtual {v0, p1, p2}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->start(FF)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->f:Z

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/i;->b(I)V

    return-void
.end method

.method public a(ZF)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/iab/omid/library/bytedance2/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/bytedance2/adsession/media/Position;

    invoke-static {p2, v0, p1}, Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/bytedance2/adsession/media/Position;)Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->d:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    goto :goto_14

    :cond_c
    sget-object p1, Lcom/iab/omid/library/bytedance2/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/bytedance2/adsession/media/Position;

    invoke-static {v0, p1}, Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/bytedance2/adsession/media/Position;)Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->d:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    :goto_14
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(I)V

    return-void
.end method

.method public b(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    packed-switch p1, :pswitch_data_68

    :pswitch_a
    goto :goto_66

    :pswitch_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    sget-object v0, Lcom/iab/omid/library/bytedance2/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/bytedance2/adsession/media/InteractionType;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/bytedance2/adsession/media/InteractionType;)V

    goto :goto_66

    :pswitch_13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->f:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1b
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1d
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->volumeChange(F)V

    goto :goto_66

    :pswitch_21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    sget-object v0, Lcom/iab/omid/library/bytedance2/adsession/media/PlayerState;->NORMAL:Lcom/iab/omid/library/bytedance2/adsession/media/PlayerState;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->playerStateChange(Lcom/iab/omid/library/bytedance2/adsession/media/PlayerState;)V

    goto :goto_66

    :pswitch_29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    sget-object v0, Lcom/iab/omid/library/bytedance2/adsession/media/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/bytedance2/adsession/media/PlayerState;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->playerStateChange(Lcom/iab/omid/library/bytedance2/adsession/media/PlayerState;)V

    goto :goto_66

    :pswitch_31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->complete()V

    goto :goto_66

    :pswitch_37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->thirdQuartile()V

    goto :goto_66

    :pswitch_3d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->midpoint()V

    goto :goto_66

    :pswitch_43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->firstQuartile()V

    goto :goto_66

    :pswitch_49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->bufferFinish()V

    goto :goto_66

    :pswitch_4f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->bufferStart()V

    goto :goto_66

    :pswitch_55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->skipped()V

    goto :goto_66

    :pswitch_5b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->resume()V

    goto :goto_66

    :pswitch_61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/i;->e:Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/MediaEvents;->pause()V

    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_a
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_29
        :pswitch_21
        :pswitch_13
        :pswitch_b
        :pswitch_55
    .end packed-switch
.end method
