###### Class com.bytedance.sdk.openadsdk.apiImpl.feed.b.AnonymousClass1 (com.bytedance.sdk.openadsdk.apiImpl.feed.b$1)
.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/b$1;
.super Ljava/lang/Object;
.source "PAGFeedNativeVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/b;->f()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/b$1;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/b$1;->a:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/h;->a:Lcom/bytedance/sdk/openadsdk/core/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/view/View;I)V

    :cond_9
    return-void
.end method
