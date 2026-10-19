###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.e (com.gameloft.igp.IGPFreemiumActivity$g$a$e)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_b1

    const/4 v5, 0x0

    if-eq p2, v3, :cond_4c

    const/4 v6, 0x2

    if-eq p2, v6, :cond_19

    return v4

    :cond_19
    cmpg-float p2, v0, v5

    if-ltz p2, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_40

    cmpg-float p2, v1, v5

    if-ltz p2, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_34

    goto :goto_40

    :cond_34
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4b

    :cond_40
    :goto_40
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_4b
    return v3

    :cond_4c
    cmpg-float p2, v0, v5

    if-ltz p2, :cond_a5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_a5

    cmpg-float p2, v1, v5

    if-ltz p2, :cond_a5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_67

    goto :goto_a5

    :cond_67
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1, v4}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3

    :cond_a5
    :goto_a5
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return v3

    :cond_b1
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return v3
.end method
