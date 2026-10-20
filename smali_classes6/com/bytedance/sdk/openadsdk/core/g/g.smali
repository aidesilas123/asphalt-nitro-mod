###### Class com.bytedance.sdk.openadsdk.core.g.g (com.bytedance.sdk.openadsdk.core.g.g)
.class public Lcom/bytedance/sdk/openadsdk/core/g/g;
.super Ljava/lang/Object;
.source "ViewabilityTracker.java"


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

.field private final e:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

.field private final f:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/bytedance2/adsession/AdSession;Lcom/iab/omid/library/bytedance2/adsession/AdEvents;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->g:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->a:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->b:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->e:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->f:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->c:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a(FZ)V
    .registers 3

    return-void
.end method

.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->e:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->f:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    if-nez v0, :cond_a

    goto/16 :goto_76

    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/e;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_72

    if-eq p1, v2, :cond_61

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3f

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    goto :goto_72

    :cond_1e
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->b:I

    if-eqz v3, :cond_72

    if-eq v3, v0, :cond_72

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->e:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->finish()V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->a:Z

    goto :goto_71

    :cond_2c
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->g:Z

    if-eqz v3, :cond_31

    goto :goto_72

    :cond_31
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->b:I

    if-eq v3, v2, :cond_37

    if-ne v3, v0, :cond_72

    :cond_37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->f:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->impressionOccurred()V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->g:Z

    goto :goto_71

    :cond_3f
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->b:I

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->e:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->start()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->d:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    if-nez v0, :cond_54

    sget-object v0, Lcom/iab/omid/library/bytedance2/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/bytedance2/adsession/media/Position;

    invoke-static {v2, v0}, Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/bytedance2/adsession/media/Position;)Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->d:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    :cond_54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->f:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->d:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->loaded(Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;)V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->d:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    goto :goto_71

    :cond_61
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->b:I

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->e:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->start()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->f:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->loaded()V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->a:Z

    :goto_71
    const/4 v1, 0x1

    :cond_72
    :goto_72
    if-eqz v1, :cond_76

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->b:I

    :cond_76
    :goto_76
    return-void
.end method

.method a(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->e:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public a(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->e:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    goto :goto_4

    :cond_1c
    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(ZF)V
    .registers 3

    return-void
.end method

.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/g;->a:Z

    return v0
.end method

.method b()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(I)V

    return-void
.end method

.method b(I)V
    .registers 2

    return-void
.end method

.method c()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(I)V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/g/g;->a(I)V

    return-void
.end method
