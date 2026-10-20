###### Class com.fyber.inneractive.sdk.config.p.a (com.fyber.inneractive.sdk.config.p$a)
.class public Lcom/fyber/inneractive/sdk/config/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/config/p;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/config/p;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/p;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/p$a;->a:Lcom/fyber/inneractive/sdk/config/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/p$a;->a:Lcom/fyber/inneractive/sdk/config/p;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/p;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->B:Lcom/fyber/inneractive/sdk/network/c0;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/network/y;->b(Lcom/fyber/inneractive/sdk/network/c0;)V

    return-void
.end method
