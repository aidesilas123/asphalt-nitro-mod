###### Class com.fyber.inneractive.sdk.web.t.e (com.fyber.inneractive.sdk.web.t$e)
.class public Lcom/fyber/inneractive/sdk/web/t$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/ignite/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$e;->a:Lcom/fyber/inneractive/sdk/web/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$e;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$e;->a:Lcom/fyber/inneractive/sdk/web/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCancelResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$e;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/web/t;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2e
    return-void
.end method
