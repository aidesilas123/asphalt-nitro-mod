###### Class com.fyber.inneractive.sdk.web.m (com.fyber.inneractive.sdk.web.m)
.class public Lcom/fyber/inneractive/sdk/web/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/i;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/m;->a:Lcom/fyber/inneractive/sdk/web/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/m;->a:Lcom/fyber/inneractive/sdk/web/i;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/i;->o()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/i;->r()V

    :cond_b
    return-void
.end method
