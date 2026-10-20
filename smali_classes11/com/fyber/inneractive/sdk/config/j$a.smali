###### Class com.fyber.inneractive.sdk.config.j.a (com.fyber.inneractive.sdk.config.j$a)
.class public Lcom/fyber/inneractive/sdk/config/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/config/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Lcom/fyber/inneractive/sdk/config/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/config/j;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/j;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/j$a;->a:Lcom/fyber/inneractive/sdk/config/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 5

    check-cast p1, Lcom/fyber/inneractive/sdk/config/i;

    if-eqz p1, :cond_2e

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/config/j$a;->a:Lcom/fyber/inneractive/sdk/config/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p2, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    invoke-virtual {p1, p3}, Lcom/fyber/inneractive/sdk/config/i;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2e

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/fyber/inneractive/sdk/config/j;->d:Z

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    iget-object p1, p2, Lcom/fyber/inneractive/sdk/config/j;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fyber/inneractive/sdk/config/j$b;

    iget-object v0, p2, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    invoke-interface {p3, p2, v0}, Lcom/fyber/inneractive/sdk/config/j$b;->onGlobalConfigChanged(Lcom/fyber/inneractive/sdk/config/j;Lcom/fyber/inneractive/sdk/config/i;)V

    goto :goto_1c

    :cond_2e
    return-void
.end method
