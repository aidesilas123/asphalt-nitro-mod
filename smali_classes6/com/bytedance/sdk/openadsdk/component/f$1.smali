###### Class com.bytedance.sdk.openadsdk.component.f.AnonymousClass1 (com.bytedance.sdk.openadsdk.component.f$1)
.class final Lcom/bytedance/sdk/openadsdk/component/f$1;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/f;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bytedance/sdk/openadsdk/component/f$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/d/o<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/f$d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/f$d;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/f$1;->a:Lcom/bytedance/sdk/openadsdk/component/f$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/f$1;->a:Lcom/bytedance/sdk/openadsdk/component/f$d;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/f$d;->a()V

    :cond_7
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/d/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/d/k<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/f$1;->a:Lcom/bytedance/sdk/openadsdk/component/f$d;

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/f$d;->a(Landroid/graphics/Bitmap;)V

    :cond_1b
    return-void

    :cond_1c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/f$1;->a:Lcom/bytedance/sdk/openadsdk/component/f$d;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/f$d;->a()V

    :cond_23
    return-void
.end method
