###### Class com.bytedance.sdk.openadsdk.core.nativeexpress.i (com.bytedance.sdk.openadsdk.core.nativeexpress.i)
.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
.super Ljava/lang/Object;
.source "ExpressEventManager.java"


# direct methods
.method private static a(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_52

    goto :goto_45

    :sswitch_f
    const-string v0, "interaction"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_45

    :cond_18
    const/4 v4, 0x4

    goto :goto_45

    :sswitch_1a
    const-string v0, "fullscreen_interstitial_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_45

    :cond_23
    const/4 v4, 0x3

    goto :goto_45

    :sswitch_25
    const-string v0, "open_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v4, 0x2

    goto :goto_45

    :sswitch_30
    const-string v0, "rewarded_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_45

    :cond_39
    const/4 v4, 0x1

    goto :goto_45

    :sswitch_3b
    const-string v0, "banner_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    packed-switch v4, :pswitch_data_68

    const/4 p0, 0x5

    return p0

    :pswitch_4a
    return v2

    :pswitch_4b
    const/16 p0, 0x8

    return p0

    :pswitch_4e
    return v1

    :pswitch_4f
    const/4 p0, 0x7

    return p0

    :pswitch_51
    return v3

    :sswitch_data_52
    .sparse-switch
        -0x65146dea -> :sswitch_3b
        -0x514cfef6 -> :sswitch_30
        -0x4b4ad1c8 -> :sswitch_25
        -0x2d935a6e -> :sswitch_1a
        0x6deace12 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4f
        :pswitch_4e
        :pswitch_4b
        :pswitch_4a
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/q;)V
    .registers 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b()Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object p1

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/q;->bc()Ljava/lang/String;

    move-result-object p2

    goto :goto_19

    :cond_17
    const-string p2, ""

    :goto_19
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/b;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b(I)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object p1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/b;->a()Lcom/bytedance/sdk/openadsdk/j/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Lcom/bytedance/sdk/openadsdk/j/a/b;)V

    return-void
.end method
