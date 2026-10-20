###### Class com.fyber.inneractive.sdk.player.ui.l.b (com.fyber.inneractive.sdk.player.ui.l$b)
.class public Lcom/fyber/inneractive/sdk/player/ui/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/ui/l;->setLastFrameBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/ui/l;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/ui/l;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/ui/l$b;->b:Lcom/fyber/inneractive/sdk/player/ui/l;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/ui/l$b;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/ui/l$b;->b:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_22

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/ui/l$b;->b:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    if-lez p1, :cond_22

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/ui/l$b;->b:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/ui/l$b;->b:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/ui/l$b;->b:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/ui/l$b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Landroid/graphics/Bitmap;)V

    :cond_22
    return-void
.end method
