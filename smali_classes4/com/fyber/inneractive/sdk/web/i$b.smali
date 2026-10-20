###### Class com.fyber.inneractive.sdk.web.i.b (com.fyber.inneractive.sdk.web.i$b)
.class public Lcom/fyber/inneractive/sdk/web/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/web/i;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/i;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/i$b;->a:Lcom/fyber/inneractive/sdk/web/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_12

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/i$b;->a:Lcom/fyber/inneractive/sdk/web/i;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/web/i;->o()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/i$b;->a:Lcom/fyber/inneractive/sdk/web/i;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/web/i;->r()V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method
