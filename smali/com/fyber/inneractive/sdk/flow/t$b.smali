###### Class com.fyber.inneractive.sdk.flow.t.b (com.fyber.inneractive.sdk.flow.t$b)
.class public Lcom/fyber/inneractive/sdk/flow/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/flow/t;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/flow/t;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/flow/t;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/t$b;->a:Lcom/fyber/inneractive/sdk/flow/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/t$b;->a:Lcom/fyber/inneractive/sdk/flow/t;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/t;->c()V

    return-void
.end method
