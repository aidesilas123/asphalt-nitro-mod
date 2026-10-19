###### Class com.iab.omid.library.jungroup.a.d (com.iab.omid.library.jungroup.a.d)
.class public final Lcom/iab/omid/library/jungroup/a/d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/media/AudioManager;

.field public final c:Lcom/iab/omid/library/jungroup/a/a;

.field public final d:Lcom/iab/omid/library/jungroup/a/c;

.field public e:F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/jungroup/a/a;Lcom/iab/omid/library/jungroup/b/g;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/a/d;->a:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/a/d;->b:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/iab/omid/library/jungroup/a/d;->c:Lcom/iab/omid/library/jungroup/a/a;

    iput-object p4, p0, Lcom/iab/omid/library/jungroup/a/d;->d:Lcom/iab/omid/library/jungroup/a/c;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 8

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/a/d;->b:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/a/d;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/a/d;->c:Lcom/iab/omid/library/jungroup/a/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_26

    if-gtz p1, :cond_1c

    goto :goto_26

    :cond_1c
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_24

    goto :goto_27

    :cond_24
    move v1, p1

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x0

    :goto_27
    iget p1, p0, Lcom/iab/omid/library/jungroup/a/d;->e:F

    const/4 v0, 0x1

    const/4 v2, 0x0

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    if-eqz p1, :cond_70

    iput v1, p0, Lcom/iab/omid/library/jungroup/a/d;->e:F

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/a/d;->d:Lcom/iab/omid/library/jungroup/a/c;

    check-cast p1, Lcom/iab/omid/library/jungroup/b/g;

    iput v1, p1, Lcom/iab/omid/library/jungroup/b/g;->a:F

    iget-object v3, p1, Lcom/iab/omid/library/jungroup/b/g;->e:Lcom/iab/omid/library/jungroup/b/a;

    if-nez v3, :cond_44

    sget-object v3, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    iput-object v3, p1, Lcom/iab/omid/library/jungroup/b/g;->e:Lcom/iab/omid/library/jungroup/b/a;

    :cond_44
    iget-object p1, p1, Lcom/iab/omid/library/jungroup/b/g;->e:Lcom/iab/omid/library/jungroup/b/a;

    iget-object p1, p1, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object v3, v3, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {v3}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "setDeviceVolume"

    invoke-static {v3, v5, v4}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_50

    :cond_70
    return-void
.end method
