###### Class com.json.xb (com.ironsource.xb)
.class public final Lcom/ironsource/xb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u001b\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0002J\u000e\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\u000cJ\u000e\u0010\t\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\u000cJ&\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014J\u000e\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0005\u001a\u00020\u000cR\"\u0010\u001a\u001a\u0010\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010\u00020\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001cR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010!\u00a8\u0006&"
    }
    d2 = {
        "Lcom/ironsource/xb;",
        "",
        "Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;",
        "activity",
        "Landroid/widget/RelativeLayout;",
        "a",
        "",
        "marginPercentageFromTop",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "b",
        "Lcom/ironsource/dc;",
        "loadAdConfig",
        "",
        "",
        "c",
        "e",
        "d",
        "f",
        "",
        "description",
        "",
        "width",
        "height",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/ref/WeakReference;",
        "mTestSuiteActivityWeakReference",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "mHandler",
        "Landroid/widget/RelativeLayout;",
        "mBannerContainer",
        "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;",
        "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;",
        "mBannerLayout",
        "handler",
        "<init>",
        "(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Landroid/os/Handler;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Landroid/os/Handler;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/xb;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/ironsource/xb;->b:Landroid/os/Handler;

    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)Landroid/widget/RelativeLayout;
    .registers 4

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static final b(Lcom/ironsource/xb;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/xb;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    invoke-direct {p0}, Lcom/ironsource/xb;->g()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/ironsource/xb;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/xb;->c:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private static final c(Lcom/ironsource/xb;Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/xb;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/ironsource/xb;->d:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/ironsource/xb;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final d(D)Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    invoke-virtual {v1}, Lcom/ironsource/fc;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double v1, v1, p1

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private final g()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/xb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    return-object v0
.end method

.method public static synthetic h(Lcom/ironsource/xb;)V
    .registers 1

    invoke-static {p0}, Lcom/ironsource/xb;->b(Lcom/ironsource/xb;)V

    return-void
.end method

.method public static synthetic i(Lcom/ironsource/xb;Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ironsource/xb;->c(Lcom/ironsource/xb;Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/xb;->d:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    invoke-virtual {v1, v0}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    :cond_9
    iget-object v0, p0, Lcom/ironsource/xb;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/j8;

    invoke-direct {v1, p0}, Lcom/ironsource/j8;-><init>(Lcom/ironsource/xb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/xb;->d:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-void
.end method

.method public final a(D)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/xb;->c:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/ironsource/xb;->d:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-nez v0, :cond_9

    goto :goto_10

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/ironsource/xb;->d(D)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_10
    invoke-direct {p0}, Lcom/ironsource/xb;->g()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    move-result-object p1

    if-eqz p1, :cond_26

    invoke-direct {p0, p1}, Lcom/ironsource/xb;->a(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/xb;->c:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/ironsource/xb;->b:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/ia;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/ia;-><init>(Lcom/ironsource/xb;Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    return-void
.end method

.method public final a(Lcom/ironsource/dc;)V
    .registers 4

    const-string v0, "loadAdConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/dc;)V

    invoke-virtual {v0}, Lcom/ironsource/fc;->g()V

    return-void
.end method

.method public final a(Lcom/ironsource/dc;Ljava/lang/String;II)V
    .registers 7

    const-string v0, "loadAdConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/xb;->a()V

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/dc;)V

    invoke-direct {p0}, Lcom/ironsource/xb;->g()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {v0, p2, p3, p4}, Lcom/ironsource/fc;->a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/fc;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/xb;->d:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, p1}, Lcom/ironsource/fc;->b(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    :cond_27
    return-void
.end method

.method public final b(Lcom/ironsource/dc;)V
    .registers 4

    const-string v0, "loadAdConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/dc;)V

    invoke-virtual {v0}, Lcom/ironsource/fc;->h()V

    return-void
.end method

.method public final c()Z
    .registers 2

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    invoke-virtual {v0}, Lcom/ironsource/fc;->e()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 2

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    invoke-virtual {v0}, Lcom/ironsource/fc;->f()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .registers 3

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    iget-object v1, p0, Lcom/ironsource/xb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ironsource/fc;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final f()V
    .registers 3

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    iget-object v1, p0, Lcom/ironsource/xb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ironsource/fc;->b(Landroid/app/Activity;)V

    return-void
.end method
