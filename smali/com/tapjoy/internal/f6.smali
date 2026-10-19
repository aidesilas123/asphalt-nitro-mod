###### Class com.tapjoy.internal.f6 (com.tapjoy.internal.f6)
.class public final Lcom/tapjoy/internal/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/o7;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Lcom/tapjoy/internal/o7;

.field public final synthetic d:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/o7;Landroid/graphics/drawable/BitmapDrawable;Lcom/tapjoy/internal/o7;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 5

    iput-object p1, p0, Lcom/tapjoy/internal/f6;->a:Lcom/tapjoy/internal/o7;

    iput-object p2, p0, Lcom/tapjoy/internal/f6;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/tapjoy/internal/f6;->c:Lcom/tapjoy/internal/o7;

    iput-object p4, p0, Lcom/tapjoy/internal/f6;->d:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_39

    iget-object p2, p0, Lcom/tapjoy/internal/f6;->a:Lcom/tapjoy/internal/o7;

    if-nez p2, :cond_12

    iget-object p2, p0, Lcom/tapjoy/internal/f6;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_21

    :cond_12
    iget-object p2, p0, Lcom/tapjoy/internal/f6;->c:Lcom/tapjoy/internal/o7;

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Lcom/tapjoy/internal/o7;->b()V

    iget-object p2, p0, Lcom/tapjoy/internal/f6;->c:Lcom/tapjoy/internal/o7;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    invoke-static {p1, v2}, Lcom/tapjoy/internal/ta;->a(Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_21
    iget-object p2, p0, Lcom/tapjoy/internal/f6;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_2a

    invoke-static {p1, p2}, Lcom/tapjoy/internal/ta;->a(Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_9b

    :cond_2a
    iget-object p1, p0, Lcom/tapjoy/internal/f6;->a:Lcom/tapjoy/internal/o7;

    if-eqz p1, :cond_9b

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tapjoy/internal/f6;->a:Lcom/tapjoy/internal/o7;

    iput-boolean v4, p1, Lcom/tapjoy/internal/o7;->d:Z

    invoke-virtual {p1}, Lcom/tapjoy/internal/o7;->a()V

    goto :goto_9b

    :cond_39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_9b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v5, 0x0

    cmpg-float v6, v0, v5

    if-ltz v6, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-gez v0, :cond_65

    cmpg-float v0, p2, v5

    if-ltz v0, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_63

    goto :goto_65

    :cond_63
    const/4 p2, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    const/4 p2, 0x1

    :goto_66
    if-eqz p2, :cond_77

    iget-object v0, p0, Lcom/tapjoy/internal/f6;->d:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_70

    invoke-static {p1, v0}, Lcom/tapjoy/internal/ta;->a(Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_77

    :cond_70
    iget-object v0, p0, Lcom/tapjoy/internal/f6;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_77

    invoke-static {p1, v2}, Lcom/tapjoy/internal/ta;->a(Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_77
    :goto_77
    iget-object p1, p0, Lcom/tapjoy/internal/f6;->a:Lcom/tapjoy/internal/o7;

    if-eqz p1, :cond_83

    invoke-virtual {p1}, Lcom/tapjoy/internal/o7;->b()V

    iget-object p1, p0, Lcom/tapjoy/internal/f6;->a:Lcom/tapjoy/internal/o7;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_83
    iget-object p1, p0, Lcom/tapjoy/internal/f6;->a:Lcom/tapjoy/internal/o7;

    if-nez p1, :cond_8b

    iget-object p1, p0, Lcom/tapjoy/internal/f6;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_9b

    :cond_8b
    iget-object p1, p0, Lcom/tapjoy/internal/f6;->c:Lcom/tapjoy/internal/o7;

    if-eqz p1, :cond_9b

    if-eqz p2, :cond_9b

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tapjoy/internal/f6;->c:Lcom/tapjoy/internal/o7;

    iput-boolean v4, p1, Lcom/tapjoy/internal/o7;->d:Z

    invoke-virtual {p1}, Lcom/tapjoy/internal/o7;->a()V

    :cond_9b
    :goto_9b
    return v3
.end method
