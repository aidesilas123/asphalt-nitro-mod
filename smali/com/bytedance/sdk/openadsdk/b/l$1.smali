###### Class com.bytedance.sdk.openadsdk.b.l.AnonymousClass1 (com.bytedance.sdk.openadsdk.b.l$1)
.class Lcom/bytedance/sdk/openadsdk/b/l$1;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/l;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/l$1;->a:Lcom/bytedance/sdk/openadsdk/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_12

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/b/l$a;

    if-eqz v1, :cond_12

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/b/l$a;

    :cond_12
    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/l$1;->a:Lcom/bytedance/sdk/openadsdk/b/l;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/l;->a(Lcom/bytedance/sdk/openadsdk/b/l;Lcom/bytedance/sdk/openadsdk/b/l$a;)V

    :cond_19
    const/4 p1, 0x1

    return p1
.end method
