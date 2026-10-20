###### Class com.fyber.inneractive.sdk.renderers.m.a (com.fyber.inneractive.sdk.renderers.m$a)
.class public Lcom/fyber/inneractive/sdk/renderers/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/renderers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/renderers/m;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/renderers/m;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/m$a;->a:Lcom/fyber/inneractive/sdk/renderers/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/c;)V
    .registers 3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/m$a;->a:Lcom/fyber/inneractive/sdk/renderers/m;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/renderers/m;->z:Lcom/fyber/inneractive/sdk/player/controller/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/fyber/inneractive/sdk/player/controller/b;->d(Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/m$a;->a:Lcom/fyber/inneractive/sdk/renderers/m;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/renderers/m;->z:Lcom/fyber/inneractive/sdk/player/controller/b;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/controller/b;->h()V

    return-void
.end method
