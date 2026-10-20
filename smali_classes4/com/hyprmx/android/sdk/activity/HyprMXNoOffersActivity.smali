###### Class com.hyprmx.android.sdk.activity.HyprMXNoOffersActivity (com.hyprmx.android.sdk.activity.HyprMXNoOffersActivity)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/activity/e0;

.field public b:Landroid/widget/TextView;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/s;

    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->c:Z

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->a:Lcom/hyprmx/android/sdk/activity/e0;

    if-eqz v1, :cond_14

    new-instance v4, Lcom/hyprmx/android/sdk/activity/d0;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v4, v1, v0, v2}, Lcom/hyprmx/android/sdk/activity/d0;-><init>(Lcom/hyprmx/android/sdk/activity/e0;ZLkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_14
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "#"

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/hyprmx/android/sdk/activity/a;->c:Lcom/hyprmx/android/sdk/activity/f0;

    if-nez v1, :cond_12

    const-string p1, "Cancelling ad. Cannot recreate HyprMXNoOffersActivity."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_12
    invoke-interface {v1, p0}, Lcom/hyprmx/android/sdk/activity/f0;->a(Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;)Lcom/hyprmx/android/sdk/activity/e0;

    move-result-object v1

    iput-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->a:Lcom/hyprmx/android/sdk/activity/e0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_35

    const-string p1, "Cancelling ad because activity was destroyed."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->a:Lcom/hyprmx/android/sdk/activity/e0;

    if-eqz v3, :cond_31

    new-instance v6, Lcom/hyprmx/android/sdk/activity/d0;

    invoke-direct {v6, v3, v1, v2}, Lcom/hyprmx/android/sdk/activity/d0;-><init>(Lcom/hyprmx/android/sdk/activity/e0;ZLkotlin/coroutines/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_35
    sget p1, Lcom/hyprmx/android/R$layout;->hyprmx_no_ad:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/hyprmx/android/R$id;->hyprmx_close_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v3, "findViewById(R.id.hyprmx_close_button)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_4f

    const-string p1, "closeButton"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4f
    new-instance v3, Lcom/hyprmx/android/sdk/activity/f1;

    invoke-direct {v3, p0}, Lcom/hyprmx/android/sdk/activity/f1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/hyprmx/android/R$id;->hyprmx_no_ad_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v3, "findViewById(R.id.hyprmx_no_ad_title)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->a:Lcom/hyprmx/android/sdk/activity/e0;

    if-eqz v3, :cond_da

    iget-object v3, v3, Lcom/hyprmx/android/sdk/activity/e0;->b:Lcom/hyprmx/android/sdk/api/data/r;

    if-eqz v3, :cond_da

    iget-object v3, v3, Lcom/hyprmx/android/sdk/api/data/r;->a:Lcom/hyprmx/android/sdk/api/data/l;

    if-eqz v3, :cond_da

    const-string v4, "titleView"

    if-nez p1, :cond_7a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_7a
    iget-object v5, v3, Lcom/hyprmx/android/sdk/api/data/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->b:Landroid/widget/TextView;

    if-nez p1, :cond_87

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_87
    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, v3, Lcom/hyprmx/android/sdk/api/data/l;->b:Ljava/lang/String;

    const-string v7, "color"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_a0} :catch_a2

    :goto_a0
    move v1, v0

    goto :goto_c8

    :catch_a2
    :try_start_a2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float v0, v0, v5

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a2 .. :try_end_bf} :catch_c0

    goto :goto_a0

    :catch_c0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :goto_c8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->b:Landroid/widget/TextView;

    if-nez p1, :cond_d3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d4

    :cond_d3
    move-object v2, p1

    :goto_d4
    iget p1, v3, Lcom/hyprmx/android/sdk/api/data/l;->c:I

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_da
    return-void
.end method

.method public final onDestroy()V
    .registers 8

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->c:Z

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;->a:Lcom/hyprmx/android/sdk/activity/e0;

    if-eqz v1, :cond_15

    new-instance v4, Lcom/hyprmx/android/sdk/activity/d0;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v4, v1, v0, v2}, Lcom/hyprmx/android/sdk/activity/d0;-><init>(Lcom/hyprmx/android/sdk/activity/e0;ZLkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_15
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
