###### Class com.bytedance.sdk.component.b.a.a.a.d.AnonymousClass1 (com.bytedance.sdk.component.b.a.a.a.d$1)
.class Lcom/bytedance/sdk/component/b/a/a/a/d$1;
.super Ljava/lang/Object;
.source "NetDispatcher.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/b/a/a/a/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/b/a/a/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/b/a/a/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/d$1;->a:Lcom/bytedance/sdk/component/b/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "systemHttp Dispatcher"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
