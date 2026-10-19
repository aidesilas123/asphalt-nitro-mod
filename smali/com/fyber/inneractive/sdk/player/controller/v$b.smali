###### Class com.fyber.inneractive.sdk.player.controller.v.b (com.fyber.inneractive.sdk.player.controller.v$b)
.class public Lcom/fyber/inneractive/sdk/player/controller/v$b;
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

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/v$b;->a:Lcom/fyber/inneractive/sdk/player/controller/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/v$b;->a:Lcom/fyber/inneractive/sdk/player/controller/v;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/v$b;->a:Lcom/fyber/inneractive/sdk/player/controller/v;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/v;->b:Lcom/fyber/inneractive/sdk/player/controller/v$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
