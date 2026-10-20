###### Class com.facebook.ads.redexgen.X.C4V (com.facebook.ads.redexgen.X.4V)
.class public final Lcom/facebook/ads/redexgen/X/4V;
.super Lcom/facebook/ads/redexgen/X/Ts;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7P;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Qb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewabilityCheckRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Ts<",
        "Lcom/facebook/ads/redexgen/X/Qb;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/7P;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/YA;

.field public A01:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iVby5wy6H7l4dzY0Hld0xs9tuHtnGk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nr0U5YnFPaRVMsCPPiWFbDdqiRS3TX59"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NmHEOi9mcJk9OQjZmIqLk3AYwOx5ICK3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "j6OxXppfxNxejmkkIb10P2S2ED13bfax"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YxA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "okdCTGqDBxOQkU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XAA3rxsPdfTGxXL8JCFSxOB2RupP9g"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Mu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4V;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ts;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/YA;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Z

    return-void
.end method

.method private A00(I)V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0S;->A3G(I)V

    :cond_d
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4V;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/4V;->A02:[Ljava/lang/String;

    const-string v1, "k6Oe58jhR2JQ133LIP7LsY5lW6eco9l5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Z

    return-void
.end method


# virtual methods
.method public final A06()V
    .registers 12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ts;->A07()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Qb;

    const/4 v9, 0x0

    if-nez v4, :cond_d

    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/4V;->A00(I)V

    return-void

    :cond_d
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0C(Lcom/facebook/ads/redexgen/X/Qb;)Landroid/view/View;

    move-result-object v3

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0I(Lcom/facebook/ads/redexgen/X/Qb;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Qa;

    const/4 v6, 0x1

    if-nez v3, :cond_31

    const/4 v1, 0x1

    :goto_1f
    if-nez v1, :cond_23

    if-nez v2, :cond_33

    :cond_23
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0P(Lcom/facebook/ads/redexgen/X/Qb;)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2f

    :goto_2b
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/4V;->A00(I)V

    :cond_2e
    return-void

    :cond_2f
    const/4 v6, 0x2

    goto :goto_2b

    :cond_31
    const/4 v1, 0x0

    goto :goto_1f

    :cond_33
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A03(Lcom/facebook/ads/redexgen/X/Qb;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/YA;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qc;->A04()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A05(Lcom/facebook/ads/redexgen/X/Qb;)I

    :goto_46
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A04(Lcom/facebook/ads/redexgen/X/Qb;)I

    move-result v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A06(Lcom/facebook/ads/redexgen/X/Qb;)I

    move-result v0

    if-le v1, v0, :cond_79

    const/4 v10, 0x1

    :goto_51
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0F(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0F(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A04()Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v8, 0x1

    :goto_62
    if-nez v10, :cond_6a

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qc;->A04()Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_6a
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/Qb;->A0G(Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Qc;

    :cond_6d
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qc;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    monitor-enter v4

    goto :goto_7f

    :cond_77
    const/4 v8, 0x0

    goto :goto_62

    :cond_79
    const/4 v10, 0x0

    goto :goto_51

    :cond_7b
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/Qb;->A07(Lcom/facebook/ads/redexgen/X/Qb;I)I

    goto :goto_46

    :goto_7f
    :try_start_7f
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0J(Lcom/facebook/ads/redexgen/X/Qb;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0J(Lcom/facebook/ads/redexgen/X/Qb;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_97
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0J(Lcom/facebook/ads/redexgen/X/Qb;)Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v0, v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    if-eqz v10, :cond_e7

    if-nez v8, :cond_e7
    :try_end_a9
    .catchall {:try_start_7f .. :try_end_a9} :catchall_13d

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/Qb;->A0A(Lcom/facebook/ads/redexgen/X/Qb;J)J

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0P(Lcom/facebook/ads/redexgen/X/Qb;)Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A3H()V

    :cond_c1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qa;->A03()V

    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVisibleAnimation()Z

    move-result v0

    if-eqz v0, :cond_e0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_e0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0Q(Lcom/facebook/ads/redexgen/X/Qb;)Z

    move-result v0

    if-nez v0, :cond_103

    return-void

    :cond_e7
    if-nez v10, :cond_120

    if-eqz v8, :cond_120

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Z

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0P(Lcom/facebook/ads/redexgen/X/Qb;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qc;->A02()Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2n(Lcom/facebook/ads/redexgen/X/0Q;)V

    :cond_100
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qa;->A00()V

    :cond_103
    :goto_103
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0O(Lcom/facebook/ads/redexgen/X/Qb;)Z

    move-result v0

    if-nez v0, :cond_11f

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0D(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/K8;

    move-result-object v0

    if-eqz v0, :cond_11f

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0B(Lcom/facebook/ads/redexgen/X/Qb;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0D(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/K8;

    move-result-object v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A02(Lcom/facebook/ads/redexgen/X/Qb;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11f
    return-void

    :cond_120
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qa;->A02()V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Z

    if-nez v0, :cond_13a

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Qb;->A0P(Lcom/facebook/ads/redexgen/X/Qb;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qc;->A02()Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A3F(Lcom/facebook/ads/redexgen/X/0Q;)V

    :cond_13a
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Z

    goto :goto_103

    :catchall_13d
    move-exception v0

    :try_start_13e
    monitor-exit v4
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    throw v0
.end method

.method public final A5p()Lcom/facebook/ads/redexgen/X/YA;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/YA;

    return-object v0
.end method
