###### Class com.hyprmx.android.sdk.footer.d (com.hyprmx.android.sdk.footer.d)
.class public final Lcom/hyprmx/android/sdk/footer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;
.implements Lkotlinx/coroutines/s;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;

.field public final b:Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;

.field public final c:Lcom/hyprmx/android/sdk/footer/FooterContract$View;

.field public final d:Lcom/hyprmx/android/sdk/utility/f0;

.field public final e:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;Lcom/hyprmx/android/sdk/footer/a;Lcom/hyprmx/android/sdk/footer/FooterFragment;ZLcom/hyprmx/android/sdk/utility/f0;)V
    .registers 13

    const-string v0, "footerUIModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "footerView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCacheManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/footer/d;->a:Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/footer/d;->b:Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/footer/d;->c:Lcom/hyprmx/android/sdk/footer/FooterContract$View;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/footer/d;->d:Lcom/hyprmx/android/sdk/utility/f0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p6

    iput-object p6, p0, Lcom/hyprmx/android/sdk/footer/d;->e:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p4, p0}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setPresenter(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/hyprmx/android/sdk/footer/a;->g()Z

    move-result p6

    const/4 v0, 0x0

    if-nez p6, :cond_4a

    invoke-virtual {p3}, Lcom/hyprmx/android/sdk/footer/a;->h()Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_3b

    invoke-static {p6}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_3c

    :cond_3b
    move-object p6, p1

    :goto_3c
    if-eqz p6, :cond_47

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    if-nez p6, :cond_45

    goto :goto_47

    :cond_45
    const/4 p6, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    const/4 p6, 0x1

    :goto_48
    if-eqz p6, :cond_50

    :cond_4a
    invoke-virtual {p3}, Lcom/hyprmx/android/sdk/footer/a;->d()Lcom/hyprmx/android/sdk/footer/e;

    move-result-object p6

    if-eqz p6, :cond_52

    :cond_50
    const/4 p6, 0x1

    goto :goto_53

    :cond_52
    const/4 p6, 0x0

    :goto_53
    invoke-interface {p4, p6}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setVisible(Z)V

    invoke-virtual {p3}, Lcom/hyprmx/android/sdk/footer/a;->f()I

    move-result p6

    invoke-interface {p4, p6}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setMinimumHeight(I)V

    invoke-interface {p4, p5}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->enableNavigation(Z)V

    invoke-virtual {p3}, Lcom/hyprmx/android/sdk/footer/a;->h()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_7b

    invoke-static {p5}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    if-lez p6, :cond_75

    goto :goto_76

    :cond_75
    const/4 p2, 0x0

    :goto_76
    if-eqz p2, :cond_7b

    invoke-interface {p4, p5}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setText(Ljava/lang/String;)V

    :cond_7b
    invoke-virtual {p3}, Lcom/hyprmx/android/sdk/footer/a;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_88

    invoke-static {p2}, Lcom/hyprmx/android/sdk/utility/w;->a(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p4, p2}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setBackgroundColor(I)V

    :cond_88
    invoke-virtual {p3}, Lcom/hyprmx/android/sdk/footer/a;->d()Lcom/hyprmx/android/sdk/footer/e;

    move-result-object p2

    if-eqz p2, :cond_a7

    invoke-virtual {p2}, Lcom/hyprmx/android/sdk/footer/e;->d()I

    move-result p4

    if-lez p4, :cond_a7

    invoke-virtual {p2}, Lcom/hyprmx/android/sdk/footer/e;->c()I

    move-result p4

    if-lez p4, :cond_a7

    new-instance v3, Lcom/hyprmx/android/sdk/footer/b;

    invoke-direct {v3, p0, p2, p1}, Lcom/hyprmx/android/sdk/footer/b;-><init>(Lcom/hyprmx/android/sdk/footer/d;Lcom/hyprmx/android/sdk/footer/e;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_a7
    invoke-virtual {p3}, Lcom/hyprmx/android/sdk/footer/a;->e()Lcom/hyprmx/android/sdk/footer/e;

    move-result-object p2

    if-eqz p2, :cond_c6

    invoke-virtual {p2}, Lcom/hyprmx/android/sdk/footer/e;->d()I

    move-result p3

    if-lez p3, :cond_c6

    invoke-virtual {p2}, Lcom/hyprmx/android/sdk/footer/e;->c()I

    move-result p3

    if-lez p3, :cond_c6

    new-instance v3, Lcom/hyprmx/android/sdk/footer/c;

    invoke-direct {v3, p0, p2, p1}, Lcom/hyprmx/android/sdk/footer/c;-><init>(Lcom/hyprmx/android/sdk/footer/d;Lcom/hyprmx/android/sdk/footer/e;Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_c6
    return-void
.end method


# virtual methods
.method public final didTapBack()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->b:Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;->didTapBack()V

    :cond_7
    return-void
.end method

.method public final didTapForward()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->b:Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;->didTapForward()V

    :cond_7
    return-void
.end method

.method public final didTapURL(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->a:Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;->didTapURL(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public final enableBackwardNavigation(Z)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->c:Lcom/hyprmx/android/sdk/footer/FooterContract$View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setVisible(Z)V

    :cond_8
    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->c:Lcom/hyprmx/android/sdk/footer/FooterContract$View;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->enableBackNavigation(Z)V

    return-void
.end method

.method public final enableForwardNavigation(Z)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->c:Lcom/hyprmx/android/sdk/footer/FooterContract$View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setVisible(Z)V

    :cond_8
    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->c:Lcom/hyprmx/android/sdk/footer/FooterContract$View;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->enableForwardNavigation(Z)V

    return-void
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->e:Lkotlinx/coroutines/CompletableJob;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final setVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/d;->c:Lcom/hyprmx/android/sdk/footer/FooterContract$View;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setVisible(Z)V

    return-void
.end method
