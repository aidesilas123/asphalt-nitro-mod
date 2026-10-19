###### Class com.fyber.inneractive.sdk.ignite.g (com.fyber.inneractive.sdk.ignite.g)
.class public Lcom/fyber/inneractive/sdk/ignite/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/ignite/g$a;,
        Lcom/fyber/inneractive/sdk/ignite/g$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/ignite/n;

.field public b:Lcom/fyber/inneractive/sdk/ignite/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ignite/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/ignite/a;

    invoke-direct {v0, p1}, Lcom/fyber/inneractive/sdk/ignite/a;-><init>(Lcom/fyber/inneractive/sdk/ignite/n;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/g;->b:Lcom/fyber/inneractive/sdk/ignite/a;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/g;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    return-void
.end method
