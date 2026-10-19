###### Class com.tapjoy.internal.j3 (com.tapjoy.internal.j3)
.class public final Lcom/tapjoy/internal/j3;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/Rect;

.field public e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/j3;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/j3;->b:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/tapjoy/internal/j3;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/tapjoy/internal/j3;->d:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/tapjoy/internal/j3;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/j3;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/internal/j3;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/j3;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/j3;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/tapjoy/internal/j3;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tapjoy/internal/j3;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tapjoy/internal/j3;->f:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 6

    iput-object p1, p0, Lcom/tapjoy/internal/j3;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/tapjoy/internal/j3;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    div-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/tapjoy/internal/j3;->d:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/tapjoy/internal/j3;->c:Landroid/graphics/Rect;

    iget-boolean p1, p0, Lcom/tapjoy/internal/j3;->a:Z

    if-eqz p1, :cond_24

    iput-object v1, p0, Lcom/tapjoy/internal/j3;->e:Landroid/graphics/Rect;

    goto :goto_28

    :cond_24
    iget-object p1, p0, Lcom/tapjoy/internal/j3;->d:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/tapjoy/internal/j3;->e:Landroid/graphics/Rect;

    :goto_28
    return-void
.end method
