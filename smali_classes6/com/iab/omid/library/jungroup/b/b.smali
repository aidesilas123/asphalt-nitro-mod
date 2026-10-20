###### Class com.iab.omid.library.jungroup.b.b (com.iab.omid.library.jungroup.b.b)
.class public final Lcom/iab/omid/library/jungroup/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/jungroup/b/b$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/iab/omid/library/jungroup/b/b;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/iab/omid/library/jungroup/b/b$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/jungroup/b/b;

    invoke-direct {v0}, Lcom/iab/omid/library/jungroup/b/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/jungroup/b/b;->d:Lcom/iab/omid/library/jungroup/b/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget-boolean v0, p0, Lcom/iab/omid/library/jungroup/b/b;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-object v2, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    iget-object v2, v2, Lcom/iab/omid/library/jungroup/b/a;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object v3, v3, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    iget-object v4, v3, Lcom/iab/omid/library/jungroup/publisher/a;->a:Lcom/iab/omid/library/jungroup/e/b;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    if-eqz v4, :cond_10

    if-eqz v0, :cond_31

    const-string v4, "foregrounded"

    goto :goto_33

    :cond_31
    const-string v4, "backgrounded"

    :goto_33
    invoke-virtual {v3}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, "setState"

    invoke-static {v3, v4, v6}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_41
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_9
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    iget-boolean p1, p0, Lcom/iab/omid/library/jungroup/b/b;->b:Z

    if-eqz p1, :cond_34

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/iab/omid/library/jungroup/b/b;->b:Z

    iget-boolean p1, p0, Lcom/iab/omid/library/jungroup/b/b;->a:Z

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/iab/omid/library/jungroup/b/b;->a()V

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/b/b;->c:Lcom/iab/omid/library/jungroup/b/b$a;

    if-eqz p1, :cond_34

    sget-object p1, Lcom/iab/omid/library/jungroup/walking/b;->h:Lcom/iab/omid/library/jungroup/walking/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    if-nez p1, :cond_34

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    sget-object v0, Lcom/iab/omid/library/jungroup/walking/b;->k:Lcom/iab/omid/library/jungroup/walking/b$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    sget-object v0, Lcom/iab/omid/library/jungroup/walking/b;->l:Lcom/iab/omid/library/jungroup/walking/b$b;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_34
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 8

    new-instance p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {p1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-eq p1, v2, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    sget-object v2, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    iget-object v2, v2, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-boolean v5, v4, Lcom/iab/omid/library/jungroup/adsession/l;->f:Z

    if-eqz v5, :cond_36

    iget-boolean v5, v4, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-nez v5, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    if-nez v5, :cond_3a

    goto :goto_20

    :cond_3a
    iget-object v4, v4, Lcom/iab/omid/library/jungroup/adsession/l;->d:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v3, 0x0

    goto :goto_20

    :cond_4c
    if-eqz p1, :cond_51

    if-eqz v3, :cond_51

    const/4 v0, 0x1

    :cond_51
    iget-boolean p1, p0, Lcom/iab/omid/library/jungroup/b/b;->b:Z

    if-eq p1, v0, :cond_9a

    iput-boolean v0, p0, Lcom/iab/omid/library/jungroup/b/b;->b:Z

    iget-boolean p1, p0, Lcom/iab/omid/library/jungroup/b/b;->a:Z

    if-eqz p1, :cond_9a

    invoke-virtual {p0}, Lcom/iab/omid/library/jungroup/b/b;->a()V

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/b/b;->c:Lcom/iab/omid/library/jungroup/b/b$a;

    if-eqz p1, :cond_9a

    xor-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_89

    sget-object p1, Lcom/iab/omid/library/jungroup/walking/b;->h:Lcom/iab/omid/library/jungroup/walking/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    if-nez p1, :cond_9a

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    sget-object v0, Lcom/iab/omid/library/jungroup/walking/b;->k:Lcom/iab/omid/library/jungroup/walking/b$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    sget-object v0, Lcom/iab/omid/library/jungroup/walking/b;->l:Lcom/iab/omid/library/jungroup/walking/b$b;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9a

    :cond_89
    sget-object p1, Lcom/iab/omid/library/jungroup/walking/b;->h:Lcom/iab/omid/library/jungroup/walking/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    if-eqz p1, :cond_9a

    sget-object v0, Lcom/iab/omid/library/jungroup/walking/b;->l:Lcom/iab/omid/library/jungroup/walking/b$b;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    sput-object p1, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    :cond_9a
    :goto_9a
    return-void
.end method
