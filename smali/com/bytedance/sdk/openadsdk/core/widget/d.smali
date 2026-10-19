###### Class com.bytedance.sdk.openadsdk.core.widget.d (com.bytedance.sdk.openadsdk.core.widget.d)
.class public Lcom/bytedance/sdk/openadsdk/core/widget/d;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

.field private final b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private final j:Landroid/view/View$OnTouchListener;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/d$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->j:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->d:F

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    return-object p0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_48

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    int-to-float v0, v0

    const v4, 0x3c23d70a    # 0.01f

    mul-float v5, v0, v4

    cmpg-float v5, v3, v5

    if-lez v5, :cond_47

    const v5, 0x3f7d70a4    # 0.99f

    mul-float v0, v0, v5

    cmpl-float v0, v3, v0

    if-gez v0, :cond_47

    int-to-float v0, v2

    mul-float v4, v4, v0

    cmpg-float v2, p1, v4

    if-lez v2, :cond_47

    mul-float v0, v0, v5

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_48

    :cond_47
    const/4 v1, 0x1

    :cond_48
    return v1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->e:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:I

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/d;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->f:I

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/d;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:I

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->j:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c:Z

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.widget.d.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.widget.d$1)
.class Lcom/bytedance/sdk/openadsdk/core/widget/d$1;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_90

    const/4 p2, 0x0

    if-eq v3, v1, :cond_32

    const/4 p1, 0x3

    if-eq v3, p1, :cond_2b

    goto/16 :goto_cd

    :cond_2b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    goto/16 :goto_cd

    :cond_32
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c(Lcom/bytedance/sdk/openadsdk/core/widget/d;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_54

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->d(Lcom/bytedance/sdk/openadsdk/core/widget/d;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_59

    :cond_54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    :cond_59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->e(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->a(Landroid/view/View;Z)V

    :cond_8a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    goto :goto_cd

    :cond_90
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v3, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Landroid/view/MotionEvent;)Z

    move-result p2

    invoke-static {v3, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    float-to-int v0, v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    float-to-int v0, v2

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object p2

    if-eqz p2, :cond_cd

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result p2

    if-eqz p2, :cond_cd

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->a(Landroid/view/View;Z)V

    :cond_cd
    :goto_cd
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

###### Class com.bytedance.sdk.openadsdk.core.widget.d.a (com.bytedance.sdk.openadsdk.core.widget.d$a)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/view/View;Z)V
.end method

.method public abstract w()Z
.end method
