###### Class com.hyprmx.android.sdk.banner.h (com.hyprmx.android.sdk.banner.h)
.class public final Lcom/hyprmx/android/sdk/banner/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/banner/i;
.implements Lkotlinx/coroutines/s;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/s;

.field public b:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/s;)V
    .registers 3

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/h;->a:Lkotlinx/coroutines/s;

    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/banner/h;Landroid/view/View;I)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_7
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_20

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge p1, p2, :cond_1b

    const/4 p0, 0x0

    goto :goto_21

    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_7

    :cond_20
    const/4 p0, 0x1

    :goto_21
    return p0
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/h;->b:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/hyprmx/android/sdk/banner/h;->b:Lkotlinx/coroutines/Job;

    :cond_b
    return-void
.end method

.method public final a(Landroid/view/View;JILcom/hyprmx/android/sdk/banner/j;)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vcl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/h;->b:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_24

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Tracking job already started on view "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return-void

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tracking starting on view "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/banner/h$a;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move v4, p4

    move-object v5, p5

    move-wide v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/hyprmx/android/sdk/banner/h$a;-><init>(Landroid/view/View;Lcom/hyprmx/android/sdk/banner/h;ILcom/hyprmx/android/sdk/banner/j;JLkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/h;->b:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/h;->a:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
