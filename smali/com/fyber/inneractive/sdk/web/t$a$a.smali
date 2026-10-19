###### Class com.fyber.inneractive.sdk.web.t.a.RunnableC0203a (com.fyber.inneractive.sdk.web.t$a$a)
.class public Lcom/fyber/inneractive/sdk/web/t$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/t$a;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/t$a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/t$a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/t$a$a;->a:Lcom/fyber/inneractive/sdk/web/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/t$a$a;->a:Lcom/fyber/inneractive/sdk/web/t$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/t$a;->a:Lcom/fyber/inneractive/sdk/web/t;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/web/t;->y:Z

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/t;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/t;->g(Ljava/lang/String;)V

    :cond_d
    return-void
.end method
