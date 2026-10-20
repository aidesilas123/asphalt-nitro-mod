###### Class com.fyber.inneractive.sdk.web.d.e (com.fyber.inneractive.sdk.web.d$e)
.class public Lcom/fyber/inneractive/sdk/web/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/web/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/fyber/inneractive/sdk/util/k0;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/web/d;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/d;Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/d$e;->c:Lcom/fyber/inneractive/sdk/web/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/web/d$e;->b:Lcom/fyber/inneractive/sdk/util/k0;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/d$e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "open"

    return-object v0
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d$e;->c:Lcom/fyber/inneractive/sdk/web/d;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/d$e;->b:Lcom/fyber/inneractive/sdk/util/k0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    if-eqz v0, :cond_11

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/web/d0;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/web/b$a;)Lcom/fyber/inneractive/sdk/util/x$a;

    move-result-object v0

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/x$a;->a:Lcom/fyber/inneractive/sdk/util/x$d;

    :cond_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: open url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
