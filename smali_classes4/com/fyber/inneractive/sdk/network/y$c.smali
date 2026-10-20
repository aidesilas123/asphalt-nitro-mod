###### Class com.fyber.inneractive.sdk.network.y.c (com.fyber.inneractive.sdk.network.y$c)
.class public Lcom/fyber/inneractive/sdk/network/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/network/y;->d(Lcom/fyber/inneractive/sdk/network/c0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/network/c0;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/network/y;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/y;Lcom/fyber/inneractive/sdk/network/c0;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/y$c;->b:Lcom/fyber/inneractive/sdk/network/y;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/y$c;->a:Lcom/fyber/inneractive/sdk/network/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/y$c;->a:Lcom/fyber/inneractive/sdk/network/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/y$c;->b:Lcom/fyber/inneractive/sdk/network/y;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/y$c;->a:Lcom/fyber/inneractive/sdk/network/c0;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/network/y;->b(Lcom/fyber/inneractive/sdk/network/c0;)V

    return-void
.end method
