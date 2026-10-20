###### Class com.fyber.inneractive.sdk.util.r0 (com.fyber.inneractive.sdk.util.r0)
.class public Lcom/fyber/inneractive/sdk/util/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/util/s0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/s0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/r0;->a:Lcom/fyber/inneractive/sdk/util/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/r0;->a:Lcom/fyber/inneractive/sdk/util/s0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/util/s0;->c()V

    return-void
.end method
