###### Class com.fyber.inneractive.sdk.web.c0 (com.fyber.inneractive.sdk.web.c0)
.class public abstract Lcom/fyber/inneractive/sdk/web/c0;
.super Lcom/fyber/inneractive/sdk/web/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fyber/inneractive/sdk/web/d0;",
        ">",
        "Lcom/fyber/inneractive/sdk/web/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Lcom/fyber/inneractive/sdk/mraid/b0;

.field public G:Lcom/fyber/inneractive/sdk/web/i$g;

.field public H:Lcom/fyber/inneractive/sdk/measurement/a;

.field public I:Lcom/fyber/inneractive/sdk/measurement/a$a;

.field public final J:Ljava/lang/Runnable;

.field public K:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public final L:Ljava/lang/Runnable;

.field public final M:Ljava/lang/Runnable;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/fyber/inneractive/sdk/web/i$g;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/web/d;-><init>(Landroid/content/Context;ZZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->t:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->u:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->v:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->w:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->x:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->y:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->z:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/web/c0;->A:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->B:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->C:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->D:Z

    sget-object p1, Lcom/fyber/inneractive/sdk/mraid/b0;->HIDDEN:Lcom/fyber/inneractive/sdk/mraid/b0;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->F:Lcom/fyber/inneractive/sdk/mraid/b0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->I:Lcom/fyber/inneractive/sdk/measurement/a$a;

    new-instance p1, Lcom/fyber/inneractive/sdk/web/c0$a;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/web/c0$a;-><init>(Lcom/fyber/inneractive/sdk/web/c0;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->J:Ljava/lang/Runnable;

    new-instance p1, Lcom/fyber/inneractive/sdk/web/c0$b;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/web/c0$b;-><init>(Lcom/fyber/inneractive/sdk/web/c0;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->K:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance p1, Lcom/fyber/inneractive/sdk/web/c0$c;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/web/c0$c;-><init>(Lcom/fyber/inneractive/sdk/web/c0;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->L:Ljava/lang/Runnable;

    new-instance p1, Lcom/fyber/inneractive/sdk/web/c0$d;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/web/c0$d;-><init>(Lcom/fyber/inneractive/sdk/web/c0;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->M:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/web/c0;->G:Lcom/fyber/inneractive/sdk/web/i$g;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .registers 15

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p1, :cond_24

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1d

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_24

    :cond_1d
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_24
    :goto_24
    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/l;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/fyber/inneractive/sdk/util/l;->a(Landroid/content/Context;I)I

    move-result p1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v2

    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    div-double v6, v8, v6

    mul-double v10, v4, v6

    double-to-int v2, v10

    int-to-double v10, v3

    mul-double v10, v10, v6

    double-to-int v6, v10

    sub-int/2addr v3, v1

    sub-int/2addr v3, p1

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v7, :cond_76

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScaleX()F

    move-result v7

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScaleY()F

    move-result v7

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_76

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/web/g;->getWidthDp()I

    move-result v2

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/web/g;->getHeightDp()I

    move-result v6

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/web/g;->getHeightDp()I

    move-result v3

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/l;->b(I)I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, p1

    iget p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->v:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->t:I

    goto :goto_80

    :cond_76
    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v10, p1

    div-double v10, v8, v10

    mul-double v4, v4, v10

    double-to-int p1, v4

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->t:I

    :goto_80
    int-to-double v3, v3

    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v0, p1

    div-double/2addr v8, v0

    mul-double v3, v3, v8

    double-to-int p1, v3

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->u:I

    iget p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->v:I

    if-ne p1, v2, :cond_92

    iget p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->w:I

    if-eq p1, v6, :cond_102

    :cond_92
    iput v2, p0, Lcom/fyber/inneractive/sdk/web/c0;->v:I

    iput v6, p0, Lcom/fyber/inneractive/sdk/web/c0;->w:I

    if-eqz p2, :cond_102

    new-instance p1, Lcom/fyber/inneractive/sdk/mraid/y;

    invoke-direct {p1, v2, v6}, Lcom/fyber/inneractive/sdk/mraid/y;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->t:I

    iget p2, p0, Lcom/fyber/inneractive/sdk/web/c0;->u:I

    new-instance v0, Lcom/fyber/inneractive/sdk/mraid/w;

    invoke-direct {v0, p1, p2}, Lcom/fyber/inneractive/sdk/mraid/w;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->t:I

    iget p2, p0, Lcom/fyber/inneractive/sdk/web/c0;->u:I

    new-instance v0, Lcom/fyber/inneractive/sdk/mraid/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/fyber/inneractive/sdk/mraid/v;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->x:I

    if-lez p1, :cond_d4

    iget p2, p0, Lcom/fyber/inneractive/sdk/web/c0;->y:I

    if-lez p2, :cond_d4

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result p1

    iget p2, p0, Lcom/fyber/inneractive/sdk/web/c0;->y:I

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result p2

    new-instance v0, Lcom/fyber/inneractive/sdk/mraid/t;

    invoke-direct {v0, p1, p2}, Lcom/fyber/inneractive/sdk/mraid/t;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    goto :goto_102

    :cond_d4
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz p1, :cond_102

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    if-lez p1, :cond_102

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    if-lez p1, :cond_102

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result p1

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result p2

    new-instance v0, Lcom/fyber/inneractive/sdk/mraid/t;

    invoke-direct {v0, p1, p2}, Lcom/fyber/inneractive/sdk/mraid/t;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    :cond_102
    :goto_102
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/mraid/u;)V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/mraid/u;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/fyber/inneractive/sdk/mraid/u;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_4b

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    return-void

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public k()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_9

    const-string v1, "window.mraidbridge.fireReadyEvent();"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public l()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public m()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/web/g;->getWidthDp()I

    move-result v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/web/g;->getHeightDp()I

    move-result v2

    new-instance v3, Lcom/fyber/inneractive/sdk/mraid/y;

    invoke-direct {v3, v1, v2}, Lcom/fyber/inneractive/sdk/mraid/y;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/fyber/inneractive/sdk/mraid/w;

    invoke-direct {v3, v1, v2}, Lcom/fyber/inneractive/sdk/mraid/w;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_3a
    iget v1, p0, Lcom/fyber/inneractive/sdk/web/c0;->v:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/web/c0;->w:I

    new-instance v3, Lcom/fyber/inneractive/sdk/mraid/y;

    invoke-direct {v3, v1, v2}, Lcom/fyber/inneractive/sdk/mraid/y;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/fyber/inneractive/sdk/web/c0;->t:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/web/c0;->u:I

    new-instance v3, Lcom/fyber/inneractive/sdk/mraid/w;

    invoke-direct {v3, v1, v2}, Lcom/fyber/inneractive/sdk/mraid/w;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_52
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    goto :goto_5d

    :cond_5b
    iget v1, p0, Lcom/fyber/inneractive/sdk/web/c0;->t:I

    :goto_5d
    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    goto :goto_6c

    :cond_6a
    iget v2, p0, Lcom/fyber/inneractive/sdk/web/c0;->u:I

    :goto_6c
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result v2

    new-instance v3, Lcom/fyber/inneractive/sdk/mraid/v;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Lcom/fyber/inneractive/sdk/mraid/v;-><init>(IIII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/web/c0;->a(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/fyber/inneractive/sdk/mraid/b0;->DEFAULT:Lcom/fyber/inneractive/sdk/mraid/b0;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0;->F:Lcom/fyber/inneractive/sdk/mraid/b0;

    new-instance v1, Lcom/fyber/inneractive/sdk/mraid/z;

    invoke-direct {v1, v0}, Lcom/fyber/inneractive/sdk/mraid/z;-><init>(Lcom/fyber/inneractive/sdk/mraid/b0;)V

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    return-void
.end method

.method public n()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/web/c0;->B:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_19

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/web/c0;->z:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_19
    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/c0;->J:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void
.end method

.method public o()Z
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0;->F:Lcom/fyber/inneractive/sdk/mraid/b0;

    sget-object v1, Lcom/fyber/inneractive/sdk/mraid/b0;->EXPANDED:Lcom/fyber/inneractive/sdk/mraid/b0;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public p()Z
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0;->G:Lcom/fyber/inneractive/sdk/web/i$g;

    if-eqz v0, :cond_e

    sget-object v1, Lcom/fyber/inneractive/sdk/web/i$g;->INTERSTITIAL:Lcom/fyber/inneractive/sdk/web/i$g;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public q()V
    .registers 5

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/c0;->B:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/c0;->C:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/c0;->z:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_2b

    const-string v1, "FyberMraidVideoController.play()"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0;->M:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    sget-object v1, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/c0;->D:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    const-string v1, "FyberMraidVideoController.mute(true)"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public setAdDefaultSize(II)V
    .registers 3

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->x:I

    iput p2, p0, Lcom/fyber/inneractive/sdk/web/c0;->y:I

    return-void
.end method

.method public setAutoplayMRAIDVideos(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->z:Z

    return-void
.end method

.method public setCenteringTagsRequired(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/c0;->A:Z

    return-void
.end method
