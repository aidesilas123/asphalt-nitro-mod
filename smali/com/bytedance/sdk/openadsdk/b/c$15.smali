###### Class com.bytedance.sdk.openadsdk.b.c.AnonymousClass15 (com.bytedance.sdk.openadsdk.b.c$15)
.class final Lcom/bytedance/sdk/openadsdk/b/c$15;
.super Lcom/bytedance/sdk/component/g/h;
.source "AdEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/c;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/model/q;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;JLcom/bytedance/sdk/openadsdk/core/model/q;)V
    .registers 8

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->a:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->b:Ljava/lang/String;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->c:J

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->d:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/core/settings/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->W()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_10
    const-string v0, "duration"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->a:J

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_22

    :catchall_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.AdEvent"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_86

    goto :goto_66

    :sswitch_30
    const-string v2, "interaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_66

    :cond_39
    const/4 v1, 0x4

    goto :goto_66

    :sswitch_3b
    const-string v2, "embeded_ad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_66

    :cond_44
    const/4 v1, 0x3

    goto :goto_66

    :sswitch_46
    const-string v2, "fullscreen_interstitial_ad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_66

    :cond_4f
    const/4 v1, 0x2

    goto :goto_66

    :sswitch_51
    const-string v2, "rewarded_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_66

    :cond_5a
    const/4 v1, 0x1

    goto :goto_66

    :sswitch_5c
    const-string v2, "banner_ad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    :goto_66
    packed-switch v1, :pswitch_data_9c

    const-string v0, ""

    :goto_6b
    move-object v5, v0

    goto :goto_7c

    :pswitch_6d
    const-string v0, "interaction_loadtime"

    goto :goto_6b

    :pswitch_70
    const-string v0, "embeded_ad_loadtime"

    goto :goto_6b

    :pswitch_73
    const-string v0, "fullscreen_interstitial_ad_loadtime"

    goto :goto_6b

    :pswitch_76
    const-string v0, "rewarded_video_loadtime"

    goto :goto_6b

    :pswitch_79
    const-string v0, "banner_ad_loadtime"

    goto :goto_6b

    :goto_7c
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->c:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->d:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/c$15;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/b/c;->a(JLcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :sswitch_data_86
    .sparse-switch
        -0x65146dea -> :sswitch_5c
        -0x514cfef6 -> :sswitch_51
        -0x2d935a6e -> :sswitch_46
        -0x2a77c376 -> :sswitch_3b
        0x6deace12 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
    .end packed-switch
.end method
