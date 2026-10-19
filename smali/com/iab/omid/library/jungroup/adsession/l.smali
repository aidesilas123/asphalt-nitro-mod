###### Class com.iab.omid.library.jungroup.adsession.l (com.iab.omid.library.jungroup.adsession.l)
.class public final Lcom/iab/omid/library/jungroup/adsession/l;
.super Lcom/iab/omid/library/jungroup/adsession/b;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/adsession/d;

.field public final b:Lcom/iab/omid/library/jungroup/adsession/c;

.field public final c:Ljava/util/ArrayList;

.field public d:Lcom/iab/omid/library/jungroup/e/a;

.field public e:Lcom/iab/omid/library/jungroup/publisher/a;

.field public f:Z

.field public g:Z

.field public final h:Ljava/lang/String;

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/iab/omid/library/jungroup/adsession/c;Lcom/iab/omid/library/jungroup/adsession/d;)V
    .registers 5

    invoke-direct {p0}, Lcom/iab/omid/library/jungroup/adsession/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->f:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/adsession/l;->b:Lcom/iab/omid/library/jungroup/adsession/c;

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/l;->a:Lcom/iab/omid/library/jungroup/adsession/d;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/jungroup/adsession/l;->a(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/jungroup/adsession/d;->a()Lcom/iab/omid/library/jungroup/adsession/e;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/jungroup/adsession/e;->b:Lcom/iab/omid/library/jungroup/adsession/e;

    if-eq v0, v1, :cond_40

    invoke-virtual {p2}, Lcom/iab/omid/library/jungroup/adsession/d;->a()Lcom/iab/omid/library/jungroup/adsession/e;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/jungroup/adsession/e;->d:Lcom/iab/omid/library/jungroup/adsession/e;

    if-ne v0, v1, :cond_32

    goto :goto_40

    :cond_32
    new-instance v0, Lcom/iab/omid/library/jungroup/publisher/c;

    invoke-virtual {p2}, Lcom/iab/omid/library/jungroup/adsession/d;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/jungroup/adsession/d;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, v1}, Lcom/iab/omid/library/jungroup/publisher/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_49

    :cond_40
    :goto_40
    new-instance v0, Lcom/iab/omid/library/jungroup/publisher/b;

    invoke-virtual {p2}, Lcom/iab/omid/library/jungroup/adsession/d;->d()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/iab/omid/library/jungroup/publisher/b;-><init>(Landroid/webkit/WebView;)V

    :goto_49
    iput-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    iget-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/jungroup/publisher/a;->a()V

    invoke-static {}, Lcom/iab/omid/library/jungroup/b/a;->a()Lcom/iab/omid/library/jungroup/b/a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/iab/omid/library/jungroup/b/a;->a(Lcom/iab/omid/library/jungroup/adsession/l;)V

    iget-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/jungroup/publisher/a;->a(Lcom/iab/omid/library/jungroup/adsession/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    iget-boolean v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->f:Z

    sget-object v1, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    iget-object v2, v1, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    iget-object v4, v1, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "setDeviceVolume"

    if-nez v2, :cond_bc

    invoke-static {}, Lcom/iab/omid/library/jungroup/b/g;->a()Lcom/iab/omid/library/jungroup/b/g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/iab/omid/library/jungroup/b/b;->d:Lcom/iab/omid/library/jungroup/b/b;

    iput-object v2, v5, Lcom/iab/omid/library/jungroup/b/b;->c:Lcom/iab/omid/library/jungroup/b/b$a;

    iput-boolean v0, v5, Lcom/iab/omid/library/jungroup/b/b;->a:Z

    iput-boolean v3, v5, Lcom/iab/omid/library/jungroup/b/b;->b:Z

    invoke-virtual {v5}, Lcom/iab/omid/library/jungroup/b/b;->a()V

    sget-object v5, Lcom/iab/omid/library/jungroup/walking/b;->h:Lcom/iab/omid/library/jungroup/walking/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    if-nez v5, :cond_53

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v5, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    sget-object v6, Lcom/iab/omid/library/jungroup/walking/b;->k:Lcom/iab/omid/library/jungroup/walking/b$a;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v5, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    sget-object v6, Lcom/iab/omid/library/jungroup/walking/b;->l:Lcom/iab/omid/library/jungroup/walking/b$b;

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_53
    iget-object v2, v2, Lcom/iab/omid/library/jungroup/b/g;->d:Lcom/iab/omid/library/jungroup/a/d;

    iget-object v5, v2, Lcom/iab/omid/library/jungroup/a/d;->b:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    iget-object v7, v2, Lcom/iab/omid/library/jungroup/a/d;->b:Landroid/media/AudioManager;

    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iget-object v7, v2, Lcom/iab/omid/library/jungroup/a/d;->c:Lcom/iab/omid/library/jungroup/a/a;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_78

    if-gtz v5, :cond_6e

    goto :goto_78

    :cond_6e
    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v6, v5, v7

    if-lez v6, :cond_76

    goto :goto_79

    :cond_76
    move v7, v5

    goto :goto_79

    :cond_78
    :goto_78
    const/4 v7, 0x0

    :goto_79
    iput v7, v2, Lcom/iab/omid/library/jungroup/a/d;->e:F

    iget-object v5, v2, Lcom/iab/omid/library/jungroup/a/d;->d:Lcom/iab/omid/library/jungroup/a/c;

    check-cast v5, Lcom/iab/omid/library/jungroup/b/g;

    iput v7, v5, Lcom/iab/omid/library/jungroup/b/g;->a:F

    iget-object v6, v5, Lcom/iab/omid/library/jungroup/b/g;->e:Lcom/iab/omid/library/jungroup/b/a;

    if-nez v6, :cond_87

    iput-object v1, v5, Lcom/iab/omid/library/jungroup/b/g;->e:Lcom/iab/omid/library/jungroup/b/a;

    :cond_87
    iget-object v1, v5, Lcom/iab/omid/library/jungroup/b/g;->e:Lcom/iab/omid/library/jungroup/b/a;

    iget-object v1, v1, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object v5, v5, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {v5}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v4, v6}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_93

    :cond_b1
    iget-object v1, v2, Lcom/iab/omid/library/jungroup/a/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v5, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_bc
    invoke-static {}, Lcom/iab/omid/library/jungroup/b/g;->a()Lcom/iab/omid/library/jungroup/b/g;

    move-result-object v1

    iget v1, v1, Lcom/iab/omid/library/jungroup/b/g;->a:F

    iget-object v2, p0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v4, v0}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/adsession/l;->a:Lcom/iab/omid/library/jungroup/adsession/d;

    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/jungroup/publisher/a;->a(Lcom/iab/omid/library/jungroup/adsession/l;Lcom/iab/omid/library/jungroup/adsession/d;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/iab/omid/library/jungroup/e/a;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/jungroup/e/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->d:Lcom/iab/omid/library/jungroup/e/a;

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;)V
    .registers 6

    iget-boolean v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/jungroup/b/c;

    iget-object v2, v1, Lcom/iab/omid/library/jungroup/b/c;->a:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_b

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-nez v1, :cond_2d

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/iab/omid/library/jungroup/b/c;

    invoke-direct {v1, p1, p2}, Lcom/iab/omid/library/jungroup/b/c;-><init>(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-void
.end method

.method public final b()Z
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->b:Lcom/iab/omid/library/jungroup/adsession/c;

    sget-object v1, Lcom/iab/omid/library/jungroup/adsession/i;->b:Lcom/iab/omid/library/jungroup/adsession/i;

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/adsession/c;->a:Lcom/iab/omid/library/jungroup/adsession/i;

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final c()Z
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->b:Lcom/iab/omid/library/jungroup/adsession/c;

    sget-object v1, Lcom/iab/omid/library/jungroup/adsession/i;->b:Lcom/iab/omid/library/jungroup/adsession/i;

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/adsession/c;->b:Lcom/iab/omid/library/jungroup/adsession/i;

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
