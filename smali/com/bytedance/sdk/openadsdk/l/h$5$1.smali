###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass5.AnonymousClass1 (com.bytedance.sdk.openadsdk.l.h$5$1)
.class Lcom/bytedance/sdk/openadsdk/l/h$5$1;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h$5;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h$5;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$5$1;->a:Lcom/bytedance/sdk/openadsdk/l/h$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$5$1;->a:Lcom/bytedance/sdk/openadsdk/l/h$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->g(Lcom/bytedance/sdk/openadsdk/l/h;)Lcom/bytedance/sdk/openadsdk/l/b;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$5$1;->a:Lcom/bytedance/sdk/openadsdk/l/h$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->g(Lcom/bytedance/sdk/openadsdk/l/h;)Lcom/bytedance/sdk/openadsdk/l/b;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/l/b;->a(J)V

    :cond_19
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h$5$1;->a(Ljava/lang/String;)V

    return-void
.end method
