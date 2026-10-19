###### Class com.fyber.inneractive.sdk.flow.h.a (com.fyber.inneractive.sdk.flow.h$a)
.class public Lcom/fyber/inneractive/sdk/flow/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/flow/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/flow/h;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/flow/h;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/h$a;->a:Lcom/fyber/inneractive/sdk/flow/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/flow/h$a;->a:Lcom/fyber/inneractive/sdk/flow/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s : IAAdContentLoaderImpl : retry load ad task started execution"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/h$a;->a:Lcom/fyber/inneractive/sdk/flow/h;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/h;->c()V

    return-void
.end method
