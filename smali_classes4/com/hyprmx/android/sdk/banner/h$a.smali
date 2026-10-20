###### Class com.hyprmx.android.sdk.banner.h.a (com.hyprmx.android.sdk.banner.h$a)
.class public final Lcom/hyprmx/android/sdk/banner/h$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/banner/h;->a(Landroid/view/View;JILcom/hyprmx/android/sdk/banner/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.banner.ViewVisibilityTracker$startTracking$1"
    f = "ViewVisibilityTracker.kt"
    i = {}
    l = {
        0x36
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/hyprmx/android/sdk/banner/h;

.field public final synthetic d:I

.field public final synthetic e:Lcom/hyprmx/android/sdk/banner/j;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/hyprmx/android/sdk/banner/h;ILcom/hyprmx/android/sdk/banner/j;JLkotlin/coroutines/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/hyprmx/android/sdk/banner/h;",
            "I",
            "Lcom/hyprmx/android/sdk/banner/j;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/banner/h$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/banner/h$a;->c:Lcom/hyprmx/android/sdk/banner/h;

    iput p3, p0, Lcom/hyprmx/android/sdk/banner/h$a;->d:I

    iput-object p4, p0, Lcom/hyprmx/android/sdk/banner/h$a;->e:Lcom/hyprmx/android/sdk/banner/j;

    iput-wide p5, p0, Lcom/hyprmx/android/sdk/banner/h$a;->f:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/hyprmx/android/sdk/banner/h$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/banner/h$a;->c:Lcom/hyprmx/android/sdk/banner/h;

    iget v3, p0, Lcom/hyprmx/android/sdk/banner/h$a;->d:I

    iget-object v4, p0, Lcom/hyprmx/android/sdk/banner/h$a;->e:Lcom/hyprmx/android/sdk/banner/j;

    iget-wide v5, p0, Lcom/hyprmx/android/sdk/banner/h$a;->f:J

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/hyprmx/android/sdk/banner/h$a;-><init>(Landroid/view/View;Lcom/hyprmx/android/sdk/banner/h;ILcom/hyprmx/android/sdk/banner/j;JLkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/banner/h$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/banner/h$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/banner/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/banner/h$a;->a:I

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    if-ne v2, v3, :cond_e

    goto :goto_16

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_19
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v4, v5

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v8, v4, v2

    iget-object v2, v0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget-object v2, v0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/4 v2, 0x0

    if-ne v8, v10, :cond_40

    const/4 v12, 0x1

    goto :goto_41

    :cond_40
    const/4 v12, 0x0

    :goto_41
    if-gt v3, v8, :cond_47

    if-ge v8, v10, :cond_47

    const/4 v13, 0x1

    goto :goto_48

    :cond_47
    const/4 v13, 0x0

    :goto_48
    if-ge v8, v10, :cond_4e

    if-gtz v8, :cond_4e

    const/4 v14, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v14, 0x0

    :goto_4f
    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, v0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v15, v4, v2

    aget v16, v4, v3

    iget-object v2, v0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v7

    iget-object v2, v0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v17

    iget-object v2, v0, Lcom/hyprmx/android/sdk/banner/h$a;->c:Lcom/hyprmx/android/sdk/banner/h;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/banner/h$a;->b:Landroid/view/View;

    iget v5, v0, Lcom/hyprmx/android/sdk/banner/h$a;->d:I

    invoke-static {v2, v4, v5}, Lcom/hyprmx/android/sdk/banner/h;->a(Lcom/hyprmx/android/sdk/banner/h;Landroid/view/View;I)Z

    move-result v18

    iget-object v6, v0, Lcom/hyprmx/android/sdk/banner/h$a;->e:Lcom/hyprmx/android/sdk/banner/j;

    invoke-interface/range {v6 .. v18}, Lcom/hyprmx/android/sdk/banner/j;->onVisibleEvent(ZIIIIZZZIIFZ)V

    iget-wide v4, v0, Lcom/hyprmx/android/sdk/banner/h$a;->f:J

    iput v3, v0, Lcom/hyprmx/android/sdk/banner/h$a;->a:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_19

    return-object v1
.end method
