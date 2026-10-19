###### Class com.fyber.inneractive.sdk.player.controller.v.a (com.fyber.inneractive.sdk.player.controller.v$a)
.class public Lcom/fyber/inneractive/sdk/player/controller/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/controller/v;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/controller/v;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/v;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/v$a;->a:Lcom/fyber/inneractive/sdk/player/controller/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/v$a;->a:Lcom/fyber/inneractive/sdk/player/controller/v;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/v$a;->a:Lcom/fyber/inneractive/sdk/player/controller/v;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/v;->b:Lcom/fyber/inneractive/sdk/player/controller/v$c;

    check-cast p1, Lcom/fyber/inneractive/sdk/player/controller/r;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/controller/r;->b:Lcom/fyber/inneractive/sdk/player/controller/n;

    iget-boolean p1, p1, Lcom/fyber/inneractive/sdk/player/controller/r;->a:Z

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->f(Z)V

    return-void
.end method
