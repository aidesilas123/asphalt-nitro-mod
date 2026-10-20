###### Class com.fyber.inneractive.sdk.web.t.c (com.fyber.inneractive.sdk.web.t$c)
.class public Lcom/fyber/inneractive/sdk/web/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/ignite/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/web/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/t$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/web/t$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/t;->b()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    sget-object v2, Lcom/fyber/inneractive/sdk/network/q;->IGNITE_FLOW_FAILED_TO_INSTALL_APP:Lcom/fyber/inneractive/sdk/network/q;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/t$c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/web/t$c;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    check-cast v1, Lcom/fyber/inneractive/sdk/flow/p$a;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/q;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/k;)V

    return-void
.end method

.method public b()V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/web/t;->c:Ljava/lang/String;

    new-instance v3, Lcom/fyber/inneractive/sdk/ignite/c$d;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/web/t;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/web/t;->d:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/p$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/p$a;->a:Lcom/fyber/inneractive/sdk/flow/p;

    invoke-direct {v3, v4, v5, v0}, Lcom/fyber/inneractive/sdk/ignite/c$d;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/k;Lcom/fyber/inneractive/sdk/flow/p;)V

    invoke-virtual {v1, v2, v3}, Lcom/fyber/inneractive/sdk/ignite/c;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/ignite/c$d;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$c;->c:Lcom/fyber/inneractive/sdk/web/t;

    const-string v1, "onShowInstallStarted();"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->f(Ljava/lang/String;)V

    return-void
.end method
