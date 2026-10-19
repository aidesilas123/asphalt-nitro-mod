###### Class com.bytedance.sdk.openadsdk.component.reward.b.f (com.bytedance.sdk.openadsdk.component.reward.b.f)
.class public Lcom/bytedance/sdk/openadsdk/component/reward/b/f;
.super Ljava/lang/Object;
.source "RewardFullTypeFactory.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/component/reward/a/a;)Lcom/bytedance/sdk/openadsdk/component/reward/b/b;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/a;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/r;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/r;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/r;->bw()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/e;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/e;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/a;)V

    return-object v0

    :cond_15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->k(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/i;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/i;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/a;)V

    return-object v0

    :cond_21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/g;->c(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/g;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/g;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/a;)V

    return-object v0

    :cond_2d
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/h;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/h;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/h;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/a;)V

    return-object v0

    :cond_39
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/i;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/i;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/i;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/a;)V

    return-object v0

    :cond_45
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/c;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/c;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/a;)V

    return-object v0

    :cond_51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/d;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/a;)V

    return-object v0
.end method
