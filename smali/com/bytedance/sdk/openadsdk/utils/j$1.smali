###### Class com.bytedance.sdk.openadsdk.utils.j.AnonymousClass1 (com.bytedance.sdk.openadsdk.utils.j$1)
.class final Lcom/bytedance/sdk/openadsdk/utils/j$1;
.super Ljava/lang/Object;
.source "ImageBytesHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/k/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/j;->a(Lcom/bytedance/sdk/openadsdk/k/a;IILcom/bytedance/sdk/openadsdk/utils/j$a;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/utils/j$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/j$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/j$a;->b()V

    :cond_7
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/j$a;->a()V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/a/b;)V
    .registers 3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/k/a/b;->d()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    if-eqz p1, :cond_e

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/j$a;->a(Lcom/bytedance/sdk/openadsdk/k/a/b;)V

    return-void

    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/j$1;->a:Lcom/bytedance/sdk/openadsdk/utils/j$a;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/j$a;->a()V

    :cond_15
    return-void
.end method
