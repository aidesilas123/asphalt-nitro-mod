###### Class com.hyprmx.android.sdk.om.f (com.hyprmx.android.sdk.om.f)
.class public interface abstract Lcom/hyprmx/android/sdk/om/f;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(F)Lcom/hyprmx/android/sdk/tracking/a;
.end method

.method public abstract a()V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/view/View;)V
.end method

.method public abstract d()Lcom/iab/omid/library/jungroup/adsession/b;
.end method

###### Class com.hyprmx.android.sdk.om.f.CC (com.hyprmx.android.sdk.om.f$-CC)
.class public final synthetic Lcom/hyprmx/android/sdk/om/f$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hyprmx/android/sdk/om/f;F)Lcom/hyprmx/android/sdk/tracking/a;
    .registers 2

    new-instance p1, Lcom/hyprmx/android/sdk/om/f$a;

    invoke-direct {p1}, Lcom/hyprmx/android/sdk/om/f$a;-><init>()V

    return-object p1
.end method

.method public static b(Lcom/hyprmx/android/sdk/om/f;)V
    .registers 8

    invoke-interface {p0}, Lcom/hyprmx/android/sdk/om/f;->d()Lcom/iab/omid/library/jungroup/adsession/b;

    move-result-object v0

    if-eqz v0, :cond_94

    check-cast v0, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-eqz v1, :cond_e

    goto/16 :goto_94

    :cond_e
    iget-object v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->d:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-eqz v1, :cond_18

    goto :goto_1d

    :cond_18
    iget-object v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_1d
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    iget-object v2, v0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "finishSession"

    invoke-static {v2, v5, v4}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    iget-object v4, v2, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3a

    const/4 v4, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    :goto_3b
    iget-object v5, v2, Lcom/iab/omid/library/jungroup/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8d

    iget-object v2, v2, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_51

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    if-nez v1, :cond_8d

    invoke-static {}, Lcom/iab/omid/library/jungroup/b/g;->a()Lcom/iab/omid/library/jungroup/b/g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/iab/omid/library/jungroup/walking/b;->h:Lcom/iab/omid/library/jungroup/walking/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    if-eqz v4, :cond_6b

    sget-object v6, Lcom/iab/omid/library/jungroup/walking/b;->l:Lcom/iab/omid/library/jungroup/walking/b$b;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v5, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    :cond_6b
    iget-object v4, v2, Lcom/iab/omid/library/jungroup/walking/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-object v4, Lcom/iab/omid/library/jungroup/walking/b;->i:Landroid/os/Handler;

    new-instance v6, Lcom/iab/omid/library/jungroup/walking/a;

    invoke-direct {v6, v2}, Lcom/iab/omid/library/jungroup/walking/a;-><init>(Lcom/iab/omid/library/jungroup/walking/b;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lcom/iab/omid/library/jungroup/b/b;->d:Lcom/iab/omid/library/jungroup/b/b;

    iput-boolean v3, v2, Lcom/iab/omid/library/jungroup/b/b;->a:Z

    iput-boolean v3, v2, Lcom/iab/omid/library/jungroup/b/b;->b:Z

    iput-object v5, v2, Lcom/iab/omid/library/jungroup/b/b;->c:Lcom/iab/omid/library/jungroup/b/b$a;

    iget-object v1, v1, Lcom/iab/omid/library/jungroup/b/g;->d:Lcom/iab/omid/library/jungroup/a/d;

    iget-object v2, v1, Lcom/iab/omid/library/jungroup/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_8d
    iget-object v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/jungroup/publisher/a;->b()V

    iput-object v5, v0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    :cond_94
    :goto_94
    invoke-interface {p0}, Lcom/hyprmx/android/sdk/om/f;->c()V

    return-void
.end method

.method public static c(Lcom/hyprmx/android/sdk/om/f;Landroid/view/View;)V
    .registers 6

    const-string v0, "friendlyObstruction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-interface {p0}, Lcom/hyprmx/android/sdk/om/f;->d()Lcom/iab/omid/library/jungroup/adsession/b;

    move-result-object v0

    if-eqz v0, :cond_4e

    check-cast v0, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-eqz v1, :cond_12

    goto :goto_4e

    :cond_12
    sget v1, Lcom/iab/omid/library/jungroup/adsession/l;->k:I

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/jungroup/b/c;

    iget-object v3, v2, Lcom/iab/omid/library/jungroup/b/c;->a:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1a

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_4e

    iget-object p1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_37} :catch_38

    goto :goto_4e

    :catch_38
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error removing registered obstruction with error msg - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static d(Lcom/hyprmx/android/sdk/om/f;Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;)V
    .registers 4

    const-string v0, "friendlyObstruction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purpose"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-interface {p0}, Lcom/hyprmx/android/sdk/om/f;->d()Lcom/iab/omid/library/jungroup/adsession/b;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1, p2}, Lcom/iab/omid/library/jungroup/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_2a

    :catch_14
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error registering obstruction with error msg - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static e(Lcom/hyprmx/android/sdk/om/f;)V
    .registers 3

    invoke-interface {p0}, Lcom/hyprmx/android/sdk/om/f;->d()Lcom/iab/omid/library/jungroup/adsession/b;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-eqz v1, :cond_d

    goto :goto_12

    :cond_d
    iget-object v0, v0, Lcom/iab/omid/library/jungroup/adsession/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_12
    :goto_12
    return-void
.end method

.method public static f(Lcom/hyprmx/android/sdk/om/f;Landroid/view/View;)V
    .registers 6

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/hyprmx/android/sdk/om/f;->d()Lcom/iab/omid/library/jungroup/adsession/b;

    move-result-object v0

    if-eqz v0, :cond_5c

    check-cast v0, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-eqz v1, :cond_12

    goto :goto_5c

    :cond_12
    const-string v1, "AdView is null"

    invoke-static {v1, p1}, Lcom/iab/omid/library/jungroup/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->d:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_22

    goto :goto_5c

    :cond_22
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/jungroup/adsession/l;->a(Landroid/view/View;)V

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/jungroup/publisher/a;->d()V

    sget-object v1, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    iget-object v1, v1, Lcom/iab/omid/library/jungroup/b/a;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/jungroup/adsession/l;

    if-eq v2, v0, :cond_3e

    iget-object v3, v2, Lcom/iab/omid/library/jungroup/adsession/l;->d:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-ne v3, p1, :cond_3e

    iget-object v2, v2, Lcom/iab/omid/library/jungroup/adsession/l;->d:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_3e

    :cond_5c
    :goto_5c
    return-void
.end method

###### Class com.hyprmx.android.sdk.om.f.a (com.hyprmx.android.sdk.om.f$a)
.class public final Lcom/hyprmx/android/sdk/om/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/tracking/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/om/f$-CC;->a(Lcom/hyprmx/android/sdk/om/f;F)Lcom/hyprmx/android/sdk/tracking/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/hyprmx/android/sdk/tracking/d;->a(Lcom/hyprmx/android/sdk/tracking/a;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->b(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->c(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->d(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->e(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->f(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->g(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->h(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->i(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->j(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->k(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->l(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->m(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->n(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic n(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->o(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
