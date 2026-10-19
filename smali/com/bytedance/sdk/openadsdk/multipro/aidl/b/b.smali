###### Class com.bytedance.sdk.openadsdk.multipro.aidl.b.b (com.bytedance.sdk.openadsdk.multipro.aidl.b.b)
.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;
.super Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;
.source "DislikeClosedListenerImpl.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;)V
    .registers 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onItemClickClosed()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.multipro.aidl.b.b.AnonymousClass1 (com.bytedance.sdk.openadsdk.multipro.aidl.b.b$1)
.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;
.super Ljava/lang/Object;
.source "DislikeClosedListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->onItemClickClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;->a()V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a(ILjava/lang/String;)V

    :cond_1b
    return-void
.end method
