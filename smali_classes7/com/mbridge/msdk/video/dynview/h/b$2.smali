###### Class com.mbridge.msdk.video.dynview.h.b.AnonymousClass2 (com.mbridge.msdk.video.dynview.h.b$2)
.class final Lcom/mbridge/msdk/video/dynview/h/b$2;
.super Ljava/lang/Object;
.source "MBridgeUIAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/h/b;->a(Landroid/view/View;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/h/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/h/b;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/h/b$2;->b:Lcom/mbridge/msdk/video/dynview/h/b;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/h/b$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/h/b$2;->a:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/h/b$2;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_17
    return-void
.end method
