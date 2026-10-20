###### Class com.mbridge.msdk.video.module.a.a.h (com.mbridge.msdk.video.module.a.a.h)
.class public final Lcom/mbridge/msdk/video/module/a/a/h;
.super Lcom/mbridge/msdk/video/module/a/a/k;
.source "PlayableStatisticsOnNotifyListener.java"


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/a/a;IZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/mbridge/msdk/video/module/a/a/k;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/a/a;IZ)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 5

    const/16 v0, 0x64

    const/4 v1, 0x2

    if-eq p1, v0, :cond_58

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_54

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_50

    const/16 v0, 0x81

    if-eq p1, v0, :cond_38

    const/16 v0, 0x76

    const-string v1, ""

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x77

    if-eq p1, v0, :cond_1c

    goto :goto_64

    :cond_1c
    if-eqz p2, :cond_25

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_25

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_25
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/video/module/a/a/k;->a(ILjava/lang/String;)V

    goto :goto_64

    :cond_2a
    if-eqz p2, :cond_33

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_33

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_33
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/video/module/a/a/k;->a(ILjava/lang/String;)V

    goto :goto_64

    :cond_38
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v0

    if-ne v0, v1, :cond_64

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->g()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->f()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->e()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/a/a/k;->a(I)V

    goto :goto_64

    :cond_50
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->a()V

    goto :goto_64

    :cond_54
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/module/a/a/k;->b(I)V

    goto :goto_64

    :cond_58
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->g()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->f()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/a/a/k;->e()V

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/module/a/a/k;->a(I)V

    :cond_64
    :goto_64
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/module/a/a/k;->a(ILjava/lang/Object;)V

    return-void
.end method
