###### Class com.applovin.impl.mediation.g (com.applovin.impl.mediation.g)
.class public Lcom/applovin/impl/mediation/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/g$b;,
        Lcom/applovin/impl/mediation/g$c;,
        Lcom/applovin/impl/mediation/g$a;,
        Lcom/applovin/impl/mediation/g$e;,
        Lcom/applovin/impl/mediation/g$d;
    }
.end annotation


# instance fields
.field private final acG:Landroid/os/Handler;

.field private adUnitId:Ljava/lang/String;

.field private final ami:Lcom/applovin/impl/mediation/b/f;

.field private final amj:Ljava/lang/String;

.field private amk:Lcom/applovin/mediation/adapter/MaxAdapter;

.field private aml:Lcom/applovin/impl/mediation/b/a;

.field private amm:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private amn:Lcom/applovin/mediation/nativeAds/MaxNativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private amo:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private amp:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final amq:Lcom/applovin/impl/mediation/g$a;

.field private amr:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field private final ams:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final amt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final amu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final amv:Z

.field private final logger:Lcom/applovin/impl/sdk/x;

.field private final name:Ljava/lang/String;

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/b/f;Lcom/applovin/mediation/adapter/MaxAdapter;ZLcom/applovin/impl/sdk/n;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->acG:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/impl/mediation/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/mediation/g$a;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/mediation/g$1;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->ams:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->amt:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->amu:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_62

    if-eqz p2, :cond_5a

    if-eqz p4, :cond_52

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/f;->yA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    iput-object p4, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p4

    iput-object p4, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    iput-object p1, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/applovin/impl/mediation/g;->amv:Z

    return-void

    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No adapter specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No adapter name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic A(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic B(Lcom/applovin/impl/mediation/g;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/g;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic C(Lcom/applovin/impl/mediation/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/g;->uh()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/g;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/g;->amm:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/sdk/n;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)Lcom/applovin/mediation/nativeAds/MaxNativeAd;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/g;->amn:Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    return-object p1
.end method

.method private synthetic a(Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V
    .registers 11

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    move-object v1, v0

    check-cast v1, Lcom/applovin/mediation/adapter/MaxRewardedAdViewAdapter;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amr:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v6, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/applovin/mediation/adapter/MaxRewardedAdViewAdapter;->showRewardedAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/g;Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->b(Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/g$c;Lcom/applovin/impl/mediation/b/h;)V
    .registers 9

    const-string v0, "MediationAdapterWrapper"

    :try_start_2
    new-instance v1, Lcom/applovin/impl/mediation/g$1;

    invoke-direct {v1, p0, p4}, Lcom/applovin/impl/mediation/g$1;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/mediation/g$c;)V

    invoke-interface {p1, p2, p3, v1}, Lcom/applovin/mediation/adapter/MaxSignalProvider;->collectSignal(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    goto :goto_63

    :catchall_b
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed signal collection for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/applovin/impl/mediation/g;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " due to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/applovin/impl/mediation/g;->b(Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect_signal:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3, p1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "collect_signal"

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/g;->bC(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->Cw()Lcom/applovin/impl/mediation/f;

    move-result-object p2

    iget-object p3, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->aml:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {p2, p3, p1, v1}, Lcom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;)V

    :goto_63
    invoke-static {p4}, Lcom/applovin/impl/mediation/g$c;->a(Lcom/applovin/impl/mediation/g$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_11b

    invoke-virtual {p5}, Lcom/applovin/impl/mediation/b/f;->yE()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-nez p3, :cond_b4

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failing signal collection "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " since it has 0 timeout"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The adapter ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") has 0 timeout"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/applovin/impl/mediation/g;->b(Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V

    goto :goto_11b

    :cond_b4
    invoke-virtual {p5}, Lcom/applovin/impl/mediation/b/f;->yE()J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-lez p3, :cond_fa

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_e4

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting timeout "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/applovin/impl/mediation/b/f;->yE()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms. for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e4
    invoke-virtual {p5}, Lcom/applovin/impl/mediation/b/f;->yE()J

    move-result-wide p1

    iget-object p3, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object p3

    new-instance p5, Lcom/applovin/impl/mediation/g$e;

    const/4 v0, 0x0

    invoke-direct {p5, p0, p4, v0}, Lcom/applovin/impl/mediation/g$e;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/mediation/g$c;Lcom/applovin/impl/mediation/g$1;)V

    sget-object p4, Lcom/applovin/impl/sdk/e/q$b;->aUE:Lcom/applovin/impl/sdk/e/q$b;

    invoke-virtual {p3, p5, p4, p1, p2}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V

    goto :goto_11b

    :cond_fa
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_11b

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Negative timeout set for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", not scheduling a timeout"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    :goto_11b
    return-void
.end method

.method private synthetic a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterBase;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->loadNativeAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxAdViewAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/applovin/mediation/adapter/MaxAdViewAdapter;->loadAdViewAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V
    .registers 4

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    new-instance v0, Lcom/applovin/impl/mediation/x0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/x0;-><init>(Lcom/applovin/impl/mediation/g;Ljava/lang/Runnable;)V

    const-string p1, "show_ad"

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/mediation/g;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Runnable;Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with \'run_on_ui_thread\' value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/b/f;->yC()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    new-instance v6, Lcom/applovin/impl/mediation/g$b;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/mediation/g$b;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/mediation/b/f;JLjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    invoke-interface {p1, p2, p3, v6}, Lcom/applovin/mediation/adapter/MaxAdapter;->initialize(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V
    .registers 6

    invoke-static {p2}, Lcom/applovin/impl/mediation/g$c;->a(Lcom/applovin/impl/mediation/g$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/applovin/impl/mediation/g$c;->b(Lcom/applovin/impl/mediation/g$c;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/applovin/impl/mediation/g$c;->b(Lcom/applovin/impl/mediation/g$c;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollected(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/Runnable;)V
    .registers 5
    .param p2    # Lcom/applovin/mediation/MaxAdFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/applovin/impl/mediation/w0;

    invoke-direct {v0, p0, p1, p3}, Lcom/applovin/impl/mediation/w0;-><init>(Lcom/applovin/impl/mediation/g;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->acG:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    :cond_11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_14
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)Z
    .registers 5
    .param p2    # Lcom/applovin/mediation/MaxAdFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    if-nez v0, :cond_b

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/f;->yC()Z

    move-result p1

    return p1

    :cond_b
    const-string v1, "initialize"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->shouldInitializeOnUiThread()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1e
    const-string v1, "collect_signal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->shouldCollectSignalsOnUiThread()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_31
    const-string v1, "load_ad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    if-eqz p2, :cond_46

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/MaxAdapter;->shouldLoadAdsOnUiThread(Lcom/applovin/mediation/MaxAdFormat;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_46
    const-string v1, "show_ad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    if-eqz p2, :cond_5b

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/MaxAdapter;->shouldShowAdsOnUiThread(Lcom/applovin/mediation/MaxAdFormat;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_5b
    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/f;->yC()Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->amt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private synthetic b(Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V
    .registers 11

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    move-object v1, v0

    check-cast v1, Lcom/applovin/mediation/adapter/MaxInterstitialAdViewAdapter;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amr:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v6, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/applovin/mediation/adapter/MaxInterstitialAdViewAdapter;->showInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/g;Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->a(Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V

    return-void
.end method

.method private synthetic b(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, p1, p2, v1}, Lcom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;->loadRewardedInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V
    .registers 8

    const-string v0, "MediationAdapterWrapper"

    :try_start_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_66

    :catchall_6
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start loading ad for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    const-string v3, "load_ad"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/mediation/g$a;->a(Lcom/applovin/impl/mediation/g$a;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load_ad:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v4}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/mediation/g;->bC(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Cw()Lcom/applovin/impl/mediation/f;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->aml:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {p1, v1, v3, v2}, Lcom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;)V

    :goto_66
    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->amt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_d1

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/f;->yE()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_b0

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_9e

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms. for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/mediation/g$d;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/applovin/impl/mediation/g$d;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/mediation/g$1;)V

    sget-object v0, Lcom/applovin/impl/sdk/e/q$b;->aUE:Lcom/applovin/impl/sdk/e/q$b;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V

    goto :goto_d1

    :cond_b0
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_d1

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative timeout set for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", not scheduling a timeout"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    :goto_d1
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V
    .registers 6

    invoke-static {p2}, Lcom/applovin/impl/mediation/g$c;->a(Lcom/applovin/impl/mediation/g$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/applovin/impl/mediation/g$c;->b(Lcom/applovin/impl/mediation/g$c;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/applovin/impl/mediation/g$c;->b(Lcom/applovin/impl/mediation/g$c;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/mediation/g;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)Z
    .registers 9

    if-eqz p1, :cond_92

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->xC()Lcom/applovin/impl/mediation/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ad_show"

    const/4 v4, -0x1

    const-string v5, "MediationAdapterWrapper"

    if-nez v0, :cond_1f

    const-string p1, "Adapter has been garbage collected"

    invoke-static {v5, p1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {p2, v4, p1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-static {p1, v3, p2, v2}, Lcom/applovin/impl/mediation/g$a;->a(Lcom/applovin/impl/mediation/g$a;Ljava/lang/String;Lcom/applovin/mediation/MaxError;Landroid/os/Bundle;)V

    return v1

    :cond_1f
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->xC()Lcom/applovin/impl/mediation/g;

    move-result-object v0

    if-ne v0, p0, :cond_8a

    if-nez p2, :cond_38

    sget-object p2, Lcom/applovin/mediation/MaxAdFormat;->APP_OPEN:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    if-ne p2, p1, :cond_30

    goto :goto_38

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No activity specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->ams:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string p2, "Mediation adapter \'"

    if-nez p1, :cond_66

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is disabled. Showing ads with this adapter is disabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {p2, v4, p1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-static {p1, v3, p2, v2}, Lcom/applovin/impl/mediation/g$a;->a(Lcom/applovin/impl/mediation/g$a;Ljava/lang/String;Lcom/applovin/mediation/MaxError;Landroid/os/Bundle;)V

    return v1

    :cond_66
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/g;->ug()Z

    move-result p1

    if-eqz p1, :cond_6e

    const/4 p1, 0x1

    return p1

    :cond_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' does not have an ad loaded. Please load an ad first"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mediated ad belongs to a different adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No mediated ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bC(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as disabled due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediationAdapterWrapper"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->ams:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/mediation/b/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->aml:Lcom/applovin/impl/mediation/b/a;

    return-object p0
.end method

.method private synthetic c(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amr:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, v1, p1, v2}, Lcom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;->showRewardedInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V

    return-void
.end method

.method private synthetic c(Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cz()Lcom/applovin/impl/mediation/a/d;

    move-result-object v0

    check-cast p1, Lcom/applovin/impl/mediation/b/c;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/applovin/impl/mediation/a/d;->a(Lcom/applovin/impl/mediation/b/c;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    return-void
.end method

.method private synthetic c(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, p1, p2, v1}, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;->loadRewardedAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 7

    const-string v0, "MediationAdapterWrapper"

    :try_start_2
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p2

    if-eqz p2, :cond_c6

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_2 .. :try_end_51} :catchall_52

    goto :goto_c6

    :catchall_52
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/g;->bC(Ljava/lang/String;)V

    const-string v1, "destroy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cw()Lcom/applovin/impl/mediation/f;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/g;->aml:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {v1, v2, p1, v3}, Lcom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c6
    :goto_c6
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/g;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic d(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amr:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, v1, p1, v2}, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;->showRewardedAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V

    return-void
.end method

.method private synthetic d(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxAppOpenAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, p1, p2, v1}, Lcom/applovin/mediation/adapter/MaxAppOpenAdapter;->loadAppOpenAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;)V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/mediation/g$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    return-object p0
.end method

.method private synthetic e(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxAppOpenAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amr:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, v1, p1, v2}, Lcom/applovin/mediation/adapter/MaxAppOpenAdapter;->showAppOpenAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;)V

    return-void
.end method

.method private synthetic e(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, p1, p2, v1}, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;->loadInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    return-void
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/sdk/x;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->logger:Lcom/applovin/impl/sdk/x;

    return-object p0
.end method

.method private synthetic f(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v0, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amr:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-interface {v0, v1, p1, v2}, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;->showInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    return-void
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->amu:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private synthetic g(Ljava/lang/Runnable;)V
    .registers 7

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_67

    :catchall_4
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start displaying ad for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    const/4 v3, 0x0

    const-string v4, "show_ad"

    invoke-static {v0, v4, v2, v3}, Lcom/applovin/impl/mediation/g$a;->a(Lcom/applovin/impl/mediation/g$a;Ljava/lang/String;Lcom/applovin/mediation/MaxError;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show_ad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4}, Lcom/applovin/impl/mediation/g;->bC(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Cw()Lcom/applovin/impl/mediation/f;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->aml:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {p1, v0, v4, v1}, Lcom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;)V

    :goto_67
    return-void
.end method

.method static synthetic h(Lcom/applovin/impl/mediation/g;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->acG:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/mediation/b/f;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/mediation/g;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g;->adUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->d(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic l(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/g;->a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic m(Lcom/applovin/impl/mediation/g;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/g;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic n(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->b(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic o(Lcom/applovin/impl/mediation/g;Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->b(Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V

    return-void
.end method

.method public static synthetic p(Lcom/applovin/impl/mediation/g;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/g;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic q(Lcom/applovin/impl/mediation/g;Ljava/lang/Runnable;Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/g;->a(Ljava/lang/Runnable;Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic r(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/g$c;Lcom/applovin/impl/mediation/b/h;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/mediation/g;->a(Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/g$c;Lcom/applovin/impl/mediation/b/h;)V

    return-void
.end method

.method public static synthetic s(Lcom/applovin/impl/mediation/g;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/g;->a(Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic t(Lcom/applovin/impl/mediation/g;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/g;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic u(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->c(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic uh()V
    .registers 2

    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/g;->bC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->amm:Landroid/view/View;

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->amn:Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->amo:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    iput-object v0, p0, Lcom/applovin/impl/mediation/g;->amp:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic v(Lcom/applovin/impl/mediation/g;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/g;->b(Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic w(Lcom/applovin/impl/mediation/g;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic x(Lcom/applovin/impl/mediation/g;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/g;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic y(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->e(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic z(Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->c(Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/g;->b(Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->xF()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/applovin/impl/mediation/z0;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/mediation/z0;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)V

    goto :goto_49

    :cond_12
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_20

    new-instance v0, Lcom/applovin/impl/mediation/s;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/s;-><init>(Lcom/applovin/impl/mediation/g;Landroid/app/Activity;)V

    goto :goto_49

    :cond_20
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->APP_OPEN:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_2e

    new-instance v0, Lcom/applovin/impl/mediation/v;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/v;-><init>(Lcom/applovin/impl/mediation/g;Landroid/app/Activity;)V

    goto :goto_49

    :cond_2e
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_3c

    new-instance v0, Lcom/applovin/impl/mediation/t0;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/t0;-><init>(Lcom/applovin/impl/mediation/g;Landroid/app/Activity;)V

    goto :goto_49

    :cond_3c
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_4d

    new-instance v0, Lcom/applovin/impl/mediation/b1;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/b1;-><init>(Lcom/applovin/impl/mediation/g;Landroid/app/Activity;)V

    :goto_49
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/mediation/g;->a(Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V

    goto :goto_75

    :cond_4d
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a supported ad format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_75
    :goto_75
    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/b/a;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V
    .registers 7

    invoke-direct {p0, p1, p4}, Lcom/applovin/impl/mediation/g;->b(Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_14

    new-instance v0, Lcom/applovin/impl/mediation/v0;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/applovin/impl/mediation/v0;-><init>(Lcom/applovin/impl/mediation/g;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V

    goto :goto_21

    :cond_14
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_25

    new-instance v0, Lcom/applovin/impl/mediation/y;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/applovin/impl/mediation/y;-><init>(Lcom/applovin/impl/mediation/g;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;Landroid/app/Activity;)V

    :goto_21
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/mediation/g;->a(Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V

    goto :goto_4d

    :cond_25
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to show "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a supported ad format"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4d
    :goto_4d
    return-void
.end method

.method a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 5
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/applovin/impl/mediation/w;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/applovin/impl/mediation/w;-><init>(Lcom/applovin/impl/mediation/g;Ljava/lang/Runnable;Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V

    const-string p1, "initialize"

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/mediation/g;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lcom/applovin/impl/mediation/b/h;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .registers 12

    if-eqz p4, :cond_7b

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->ams:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "The adapter ("

    if-nez v0, :cond_43

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mediation adapter \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is disabled. Signal collection ads with this adapter is disabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediationAdapterWrapper"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is disabled"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    return-void

    :cond_43
    new-instance v5, Lcom/applovin/impl/mediation/g$c;

    invoke-direct {v5, p2, p4}, Lcom/applovin/impl/mediation/g$c;-><init>(Lcom/applovin/impl/mediation/b/h;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V

    iget-object p4, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, p4, Lcom/applovin/mediation/adapter/MaxSignalProvider;

    if-eqz v0, :cond_61

    move-object v2, p4

    check-cast v2, Lcom/applovin/mediation/adapter/MaxSignalProvider;

    new-instance p4, Lcom/applovin/impl/mediation/x;

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/x;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/g$c;Lcom/applovin/impl/mediation/b/h;)V

    const-string p1, "collect_signal"

    invoke-direct {p0, p1, p4}, Lcom/applovin/impl/mediation/g;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_7a

    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") does not support signal collection"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/applovin/impl/mediation/g;->b(Ljava/lang/String;Lcom/applovin/impl/mediation/g$c;)V

    :goto_7a
    return-void

    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V
    .registers 2
    .param p1    # Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/impl/mediation/g;->amo:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    return-void
.end method

.method a(Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/mediation/g;->adUnitId:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/g;->aml:Lcom/applovin/impl/mediation/b/a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;Lcom/applovin/impl/mediation/MediationServiceImpl$a;)V
    .registers 7

    if-eqz p3, :cond_c3

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->ams:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Mediation adapter \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' was disabled due to earlier failures. Loading ads with this adapter is disabled."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MediationAdapterWrapper"

    invoke-static {p3, p2}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p2}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p1, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    return-void

    :cond_31
    iput-object p2, p0, Lcom/applovin/impl/mediation/g;->amr:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object p1, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-static {p1, p5}, Lcom/applovin/impl/mediation/g$a;->a(Lcom/applovin/impl/mediation/g$a;Lcom/applovin/impl/mediation/MediationServiceImpl$a;)V

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->xF()Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->xE()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    goto :goto_47

    :cond_43
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    :goto_47
    sget-object p5, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_51

    new-instance p5, Lcom/applovin/impl/mediation/y0;

    invoke-direct {p5, p0, p2, p4}, Lcom/applovin/impl/mediation/y0;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto :goto_84

    :cond_51
    sget-object p5, Lcom/applovin/mediation/MaxAdFormat;->APP_OPEN:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_5b

    new-instance p5, Lcom/applovin/impl/mediation/q;

    invoke-direct {p5, p0, p2, p4}, Lcom/applovin/impl/mediation/q;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto :goto_84

    :cond_5b
    sget-object p5, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_65

    new-instance p5, Lcom/applovin/impl/mediation/u0;

    invoke-direct {p5, p0, p2, p4}, Lcom/applovin/impl/mediation/u0;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto :goto_84

    :cond_65
    sget-object p5, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_6f

    new-instance p5, Lcom/applovin/impl/mediation/t;

    invoke-direct {p5, p0, p2, p4}, Lcom/applovin/impl/mediation/t;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto :goto_84

    :cond_6f
    sget-object p5, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_79

    new-instance p5, Lcom/applovin/impl/mediation/a1;

    invoke-direct {p5, p0, p2, p4}, Lcom/applovin/impl/mediation/a1;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto :goto_84

    :cond_79
    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p5

    if-eqz p5, :cond_8f

    new-instance p5, Lcom/applovin/impl/mediation/r;

    invoke-direct {p5, p0, p2, p1, p4}, Lcom/applovin/impl/mediation/r;-><init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;)V

    :goto_84
    new-instance p2, Lcom/applovin/impl/mediation/u;

    invoke-direct {p2, p0, p5, p3}, Lcom/applovin/impl/mediation/u;-><init>(Lcom/applovin/impl/mediation/g;Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V

    const-string p3, "load_ad"

    invoke-direct {p0, p3, p1, p2}, Lcom/applovin/impl/mediation/g;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/Runnable;)V

    return-void

    :cond_8f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to load "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->xE()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is not a supported ad format"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No mediated ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/impl/mediation/g;->amp:Landroid/view/ViewGroup;

    return-void
.end method

.method destroy()V
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/g;->amv:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/applovin/impl/mediation/c1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/c1;-><init>(Lcom/applovin/impl/mediation/g;)V

    const-string v1, "destroy"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/mediation/g;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    if-eqz v0, :cond_58

    :try_start_4
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get adapter version for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapter_version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v4}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "adapter_version"

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/g;->bC(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cw()Lcom/applovin/impl/mediation/f;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/g;->aml:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {v1, v2, v0, v3}, Lcom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;)V

    :cond_58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amk:Lcom/applovin/mediation/adapter/MaxAdapter;

    if-eqz v0, :cond_58

    :try_start_4
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get adapter\'s SDK version for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdk_version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v4}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "sdk_version"

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/g;->bC(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cw()Lcom/applovin/impl/mediation/f;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/g;->ami:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/b/f;->vt()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/g;->aml:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {v1, v2, v0, v3}, Lcom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;)V

    :cond_58
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->ams:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapterWrapper{adapterTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/g;->amj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ub()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amm:Landroid/view/View;

    return-object v0
.end method

.method public uc()Lcom/applovin/mediation/nativeAds/MaxNativeAd;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amn:Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    return-object v0
.end method

.method public ud()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amo:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    return-object v0
.end method

.method public ue()Landroid/view/ViewGroup;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amp:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public uf()Lcom/applovin/impl/mediation/MediationServiceImpl$a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amq:Lcom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/g$a;->a(Lcom/applovin/impl/mediation/g$a;)Lcom/applovin/impl/mediation/MediationServiceImpl$a;

    move-result-object v0

    return-object v0
.end method

.method public ug()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/impl/mediation/g;->amu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
