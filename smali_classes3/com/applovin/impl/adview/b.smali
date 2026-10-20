###### Class com.applovin.impl.adview.b (com.applovin.impl.adview.b)
.class public Lcom/applovin/impl/adview/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/b$a;,
        Lcom/applovin/impl/adview/b$b;,
        Lcom/applovin/impl/adview/b$c;
    }
.end annotation


# instance fields
.field private volatile agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile agB:Lcom/applovin/adview/AppLovinAdViewEventListener;

.field private volatile agC:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private volatile agD:Lcom/applovin/impl/adview/g;

.field private agc:Landroid/content/Context;

.field private agd:Landroid/view/ViewGroup;

.field private age:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private agf:Lcom/applovin/communicator/AppLovinCommunicator;

.field private final agg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private agh:Lcom/applovin/sdk/AppLovinAdSize;

.field private agi:Ljava/lang/String;

.field private agj:Lcom/applovin/impl/sdk/d/d;

.field private agk:Lcom/applovin/impl/adview/e;

.field private agl:Lcom/applovin/impl/adview/b$c;

.field private agm:Lcom/applovin/impl/adview/d;

.field private agn:Lcom/applovin/impl/adview/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ago:Ljava/lang/Runnable;

.field private agp:Ljava/lang/Runnable;

.field private volatile agq:Lcom/applovin/impl/sdk/ad/e;

.field private volatile agr:Lcom/applovin/sdk/AppLovinAd;

.field private ags:Lcom/applovin/impl/adview/m;

.field private agt:Lcom/applovin/impl/adview/m;

.field private final agu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/sdk/AppLovinAd;",
            ">;"
        }
    .end annotation
.end field

.field private final agv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile agw:Z

.field private volatile agx:Z

.field private volatile agy:Z

.field private volatile agz:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private logger:Lcom/applovin/impl/sdk/x;

.field private sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agg:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agr:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agt:Lcom/applovin/impl/adview/m;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/b;->agu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/b;->agv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applovin/impl/adview/b;->agw:Z

    iput-boolean v1, p0, Lcom/applovin/impl/adview/b;->agx:Z

    iput-boolean v1, p0, Lcom/applovin/impl/adview/b;->agy:Z

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agD:Lcom/applovin/impl/adview/g;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/v;)Lcom/applovin/impl/adview/v;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agn:Lcom/applovin/impl/adview/v;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/ad/e;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/d/d;)Lcom/applovin/impl/sdk/d/d;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agj:Lcom/applovin/impl/sdk/d/d;

    return-object p1
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->qT()V

    return-void
.end method

.method private static a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_1f

    const/4 v1, -0x1

    goto :goto_32

    :cond_1f
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    if-ne v1, v4, :cond_28

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_32

    :cond_28
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    :goto_32
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_54

    :cond_41
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v2

    if-ne v2, v4, :cond_4a

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_54

    :cond_4a
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v3, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int v4, p1

    :goto_54
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_60

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_60
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_70

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_70
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    if-eqz p1, :cond_5c

    if-eqz p2, :cond_54

    if-eqz p3, :cond_4c

    iput-object p2, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BD()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->age:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {p5}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agf:Lcom/applovin/communicator/AppLovinCommunicator;

    iput-object p3, p0, Lcom/applovin/impl/adview/b;->agh:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p4, p0, Lcom/applovin/impl/adview/b;->agi:Ljava/lang/String;

    instance-of p4, p5, Lcom/applovin/adview/AppLovinFullscreenActivity;

    if-eqz p4, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    :goto_27
    iput-object p5, p0, Lcom/applovin/impl/adview/b;->agc:Landroid/content/Context;

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    new-instance p1, Lcom/applovin/impl/adview/e;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/e;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/n;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agk:Lcom/applovin/impl/adview/e;

    new-instance p1, Lcom/applovin/impl/adview/b$a;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/applovin/impl/adview/b$a;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/b$1;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agp:Ljava/lang/Runnable;

    new-instance p1, Lcom/applovin/impl/adview/b$b;

    invoke-direct {p1, p0, p4}, Lcom/applovin/impl/adview/b$b;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/b$1;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->ago:Ljava/lang/Runnable;

    new-instance p1, Lcom/applovin/impl/adview/b$c;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/b$c;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/n;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agl:Lcom/applovin/impl/adview/b$c;

    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void

    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad size specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    return-object p0
.end method

.method static synthetic b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/impl/adview/b;->a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private synthetic b(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agh:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agz:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agz:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    goto :goto_41

    :catchall_19
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while running ad load callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinAdView"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v2, "notifyAdLoaded"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    return-void
.end method

.method private synthetic c(Landroid/view/MotionEvent;)V
    .registers 11

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    instance-of v0, v0, Lcom/applovin/impl/sdk/ad/a;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/sdk/ad/a;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agc:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1f

    check-cast v0, Landroid/app/Activity;

    goto :goto_27

    :cond_1f
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/u;->a(Landroid/view/View;Lcom/applovin/impl/sdk/n;)Landroid/app/Activity;

    move-result-object v0

    :goto_27
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7a

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    if-eqz p1, :cond_38

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_38
    new-instance p1, Lcom/applovin/impl/adview/m;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    iget-object v3, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/applovin/impl/adview/m;-><init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/adview/d;Landroid/app/Activity;Lcom/applovin/impl/sdk/n;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    new-instance v0, Lcom/applovin/impl/adview/c0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/c0;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agB:Lcom/applovin/adview/AppLovinAdViewEventListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    check-cast v1, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agj:Lcom/applovin/impl/sdk/d/d;

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/d;->JO()V

    :cond_62
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->isOpenMeasurementEnabled()Z

    move-result p1

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/m;->rJ()Lcom/applovin/impl/adview/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/a/b;->x(Landroid/view/View;)V

    goto :goto_a3

    :cond_7a
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to expand ad. No Activity found."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/a;->FK()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_9c

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->age:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->qY()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v3

    iget-boolean v7, p0, Lcom/applovin/impl/adview/b;->agy:Z

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/b;Landroid/net/Uri;Landroid/view/MotionEvent;ZLandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agj:Lcom/applovin/impl/sdk/d/d;

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/d;->JN()V

    :cond_9c
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    const-string v0, "javascript:al_onFailedExpand();"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/d;->bq(Ljava/lang/String;)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method private synthetic c(Landroid/webkit/WebView;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/a/b;->i(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agn:Lcom/applovin/impl/adview/v;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/applovin/impl/adview/v;->sh()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/a/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->agn:Lcom/applovin/impl/adview/v;

    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/v;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/a/b;->a(Landroid/view/View;Ljava/util/List;)V

    goto :goto_37

    :cond_2e
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/a/b;->x(Landroid/view/View;)V

    :goto_37
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/b;->IK()V

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/b;->IL()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->rc()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/x;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    return-object p0
.end method

.method private static synthetic d(Landroid/webkit/WebView;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/v;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->agn:Lcom/applovin/impl/adview/v;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/b;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->agg:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic fX(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agz:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agz:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_1f

    :catchall_a
    move-exception p1

    const-string v0, "AppLovinAdView"

    const-string v1, "Exception while running app load callback"

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "notifyAdLoadFailed"

    invoke-virtual {v1, v0, v2, p1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method static synthetic g(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/n;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/adview/b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->agc:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/adview/b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/impl/adview/b;->agx:Z

    return p0
.end method

.method static synthetic j(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/d/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->agj:Lcom/applovin/impl/sdk/d/d;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/adview/b;)Lcom/applovin/adview/AppLovinAdViewEventListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/b;->agB:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-object p0
.end method

.method public static synthetic l(Lcom/applovin/impl/adview/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->ri()V

    return-void
.end method

.method public static synthetic m(Lcom/applovin/impl/adview/b;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic n(Lcom/applovin/impl/adview/b;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/applovin/impl/adview/b;Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->b(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public static synthetic p(Lcom/applovin/impl/adview/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->rd()V

    return-void
.end method

.method public static synthetic q(Lcom/applovin/impl/adview/b;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->fX(I)V

    return-void
.end method

.method private qP()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    const-string v1, "AppLovinAdView"

    const-string v2, "Destroying..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/x;->k(Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agz:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agC:Lcom/applovin/sdk/AppLovinAdClickListener;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agB:Lcom/applovin/adview/AppLovinAdViewEventListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->agx:Z

    return-void
.end method

.method private qS()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/g0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/g0;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic r(Lcom/applovin/impl/adview/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->rg()V

    return-void
.end method

.method private ra()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/l0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/l0;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rb()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agj:Lcom/applovin/impl/sdk/d/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/d;->rb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agj:Lcom/applovin/impl/sdk/d/d;

    :cond_a
    return-void
.end method

.method private rc()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    new-instance v1, Lcom/applovin/impl/sdk/utils/n;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/utils/n;-><init>()V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->Lo()Lcom/applovin/impl/sdk/utils/n;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/utils/n;->g(Lcom/applovin/impl/sdk/ad/e;)Lcom/applovin/impl/sdk/utils/n;

    move-result-object v2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->qY()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/utils/n;->a(Lcom/applovin/adview/AppLovinAdView;)Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/u;->c(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->Lo()Lcom/applovin/impl/sdk/utils/n;

    move-result-object v2

    const-string v3, "Fullscreen Ad Properties"

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/utils/n;->dz(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/n;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/utils/n;->h(Lcom/applovin/impl/sdk/ad/e;)Lcom/applovin/impl/sdk/utils/n;

    :cond_2d
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/utils/n;->L(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->Lo()Lcom/applovin/impl/sdk/utils/n;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private synthetic rd()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->qZ()Lcom/applovin/impl/adview/d;

    move-result-object v0

    const-string v1, "chrome://crash"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic re()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agt:Lcom/applovin/impl/adview/m;

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    if-eqz v1, :cond_2d

    :cond_8
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/applovin/impl/adview/m;->rI()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->agt:Lcom/applovin/impl/adview/m;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/m;->dismiss()V

    iput-object v1, p0, Lcom/applovin/impl/adview/b;->agt:Lcom/applovin/impl/adview/m;

    goto :goto_24

    :cond_17
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/m;->rI()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/m;->dismiss()V

    iput-object v1, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    :goto_24
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agB:Lcom/applovin/adview/AppLovinAdViewEventListener;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    check-cast v2, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {v1, v0, v2}, Lcom/applovin/impl/sdk/utils/m;->b(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    :cond_2d
    return-void
.end method

.method private synthetic rf()V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->ra()V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/b;->a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->isOpenMeasurementEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a/b;->x(Landroid/view/View;)V

    :cond_36
    return-void
.end method

.method private synthetic rg()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching expanded ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/m;->rI()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agt:Lcom/applovin/impl/adview/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agh:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    :cond_34
    return-void
.end method

.method private synthetic rh()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->qT()V

    :cond_b
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->qP()V

    return-void
.end method

.method private synthetic ri()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    const-string v1, "/"

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic s(Lcom/applovin/impl/adview/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->rf()V

    return-void
.end method

.method public static synthetic t(Lcom/applovin/impl/adview/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->rh()V

    return-void
.end method

.method public static synthetic u(Lcom/applovin/impl/adview/b;Landroid/webkit/WebView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->c(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static synthetic v(Landroid/webkit/WebView;)V
    .registers 1

    invoke-static {p0}, Lcom/applovin/impl/adview/b;->d(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static synthetic w(Lcom/applovin/impl/adview/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->re()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/adview/AppLovinAdView;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/util/AttributeSet;)V
    .registers 13

    if-eqz p1, :cond_34

    if-nez p2, :cond_c

    const-string p1, "AppLovinAdView"

    const-string p2, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view."

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p3, :cond_16

    invoke-static {p6}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/util/AttributeSet;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p3

    if-nez p3, :cond_16

    sget-object p3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :cond_16
    move-object v3, p3

    if-nez p5, :cond_1d

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p5

    :cond_1d
    if-eqz p5, :cond_33

    invoke-virtual {p5}, Lcom/applovin/sdk/AppLovinSdk;->a()Lcom/applovin/impl/sdk/n;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p6}, Lcom/applovin/impl/sdk/utils/c;->b(Landroid/util/AttributeSet;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->loadNextAd()V

    :cond_33
    return-void

    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/impl/adview/g;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agD:Lcom/applovin/impl/adview/g;

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/view/MotionEvent;Landroid/os/Bundle;)V
    .registers 14
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->age:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-boolean v6, p0, Lcom/applovin/impl/adview/b;->agy:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/b;Landroid/net/Uri;Landroid/view/MotionEvent;ZLandroid/os/Bundle;)V

    goto :goto_1f

    :cond_10
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    const-string p3, "AppLovinAdView"

    const-string p4, "Unable to process ad click - AppLovinAdView destroyed prematurely"

    invoke-virtual {p2, p3, p4}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agC:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method a(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    const-string v0, "AppLovinAdView"

    if-eqz p1, :cond_27

    iget-boolean v1, p0, Lcom/applovin/impl/adview/b;->agx:Z

    if-nez v1, :cond_c

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/b;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_1e

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    const-string v2, "Ad view has paused when an ad was received, ad saved for later"

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    new-instance v0, Lcom/applovin/impl/adview/d0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/d0;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_38

    :cond_27
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    const-string v1, "No provided when to the view controller"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/b;->fW(I)V

    :goto_38
    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_fa

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/u;->b(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/n;)V

    iget-boolean p2, p0, Lcom/applovin/impl/adview/b;->agw:Z

    const-string v0, "AppLovinAdView"

    if-eqz p2, :cond_f4

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/u;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/n;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object p2

    check-cast p2, Lcom/applovin/impl/sdk/ad/e;

    if-nez p2, :cond_33

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to retrieve the loaded ad: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    const-string p2, "Unable to retrieve the loaded ad"

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    return-void

    :cond_33
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    if-ne p2, p1, :cond_70

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to show ad again: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object p2, Lcom/applovin/impl/sdk/c/b;->aMJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6f

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of p1, p1, Lcom/applovin/impl/sdk/ad/h;

    const-string p2, "Attempting to show ad again"

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    goto :goto_6f

    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendering ad #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/m;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-eq p1, v0, :cond_b3

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->rb()V

    :cond_b3
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->isOpenMeasurementEnabled()Z

    move-result p1

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/b;->IM()V

    :cond_c8
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agr:Lcom/applovin/sdk/AppLovinAd;

    iput-object p2, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    iget-boolean p1, p0, Lcom/applovin/impl/adview/b;->agx:Z

    if-nez p1, :cond_e7

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agh:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/u;->c(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result p1

    if-eqz p1, :cond_e7

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BD()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lcom/applovin/impl/sdk/ad/e;)V

    :cond_e7
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    if-eqz p1, :cond_ee

    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->qS()V

    :cond_ee
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->ago:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_f9

    :cond_f4
    const-string p1, "Unable to render ad: AppLovinAdView is not initialized."

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/x;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f9
    return-void

    :cond_fa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Lcom/applovin/sdk/AppLovinAdSize;)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Lcom/applovin/impl/adview/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->agk:Lcom/applovin/impl/adview/e;

    iget-object v3, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    iget-object v4, p0, Lcom/applovin/impl/adview/b;->agc:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/adview/d;-><init>(Lcom/applovin/impl/adview/e;Lcom/applovin/impl/sdk/n;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3c

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWillNotCacheDrawing(Z)V

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    invoke-static {v1, p1}, Lcom/applovin/impl/adview/b;->a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-boolean p1, p0, Lcom/applovin/impl/adview/b;->agw:Z

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agp:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_31
    new-instance p1, Lcom/applovin/impl/adview/a0;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/a0;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->agw:Z

    return-void

    :catchall_3c
    move-exception p1

    const-string v1, "AppLovinAdView"

    const-string v2, "Failed to initialize AdWebView"

    invoke-static {v1, v2, p1}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v2

    const-string v3, "initAdWebView"

    invoke-virtual {v2, v1, v3, p1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->agv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .registers 3

    new-instance v0, Lcom/applovin/impl/adview/b0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/b0;-><init>(Lcom/applovin/impl/adview/b;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/webkit/WebView;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/b;->d(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/applovin/impl/adview/k0;

    invoke-direct {v0, p1}, Lcom/applovin/impl/adview/k0;-><init>(Landroid/webkit/WebView;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aQS:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p2, :cond_2b

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->Hn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2c

    :cond_2b
    return-void

    :cond_2c
    :try_start_2c
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agr:Lcom/applovin/sdk/AppLovinAd;

    if-eq p2, v0, :cond_9a

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    iput-object p2, p0, Lcom/applovin/impl/adview/b;->agr:Lcom/applovin/sdk/AppLovinAd;

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/d;->setAdHtmlLoaded(Z)V

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz p2, :cond_59

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->Co()Lcom/applovin/impl/a/a/a;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/a/a/a;->V(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    const-string v0, "javascript:al_onAdViewRendered();"

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/d;->bq(Ljava/lang/String;)V

    :cond_59
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agh:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/u;->c(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result p2

    if-eqz p2, :cond_9a

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/e;->isOpenMeasurementEnabled()Z

    move-result p2

    if-eqz p2, :cond_9a

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object p2

    new-instance v0, Lcom/applovin/impl/sdk/e/ab;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    const-string v2, "StartOMSDK"

    new-instance v3, Lcom/applovin/impl/adview/j0;

    invoke-direct {v3, p0, p1}, Lcom/applovin/impl/adview/j0;-><init>(Lcom/applovin/impl/adview/b;Landroid/webkit/WebView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/e/ab;-><init>(Lcom/applovin/impl/sdk/n;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/applovin/impl/sdk/e/q$b;->aUt:Lcom/applovin/impl/sdk/e/q$b;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V
    :try_end_84
    .catchall {:try_start_2c .. :try_end_84} :catchall_85

    goto :goto_9a

    :catchall_85
    move-exception p1

    const-string p2, "AppLovinAdView"

    const-string v0, "Exception while notifying ad display listener"

    invoke-static {p2, v0, p1}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "onAdHtmlLoaded"

    invoke-virtual {v0, p2, v1, p1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public destroy()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/i0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/i0;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method fW(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->agx:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agp:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    new-instance v0, Lcom/applovin/impl/adview/f0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/f0;-><init>(Lcom/applovin/impl/adview/b;I)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/applovin/impl/adview/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAd()Lcom/applovin/impl/sdk/ad/e;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    return-object v0
.end method

.method public getSdk()Lcom/applovin/impl/sdk/n;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    return-object v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agh:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agi:Ljava/lang/String;

    return-object v0
.end method

.method public loadNextAd()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agl:Lcom/applovin/impl/adview/b$c;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agc:Landroid/content/Context;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->agw:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->age:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agi:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->agh:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/applovin/impl/adview/b;->agl:Lcom/applovin/impl/adview/b$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_23

    :cond_1c
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/x;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/c;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BR()Lcom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/d/f;->aTg:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/g;->a(Lcom/applovin/impl/sdk/d/f;)J

    :cond_13
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->agw:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/m;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->isOpenMeasurementEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/u;->c(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->getAdEventTracker()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->IM()V

    :cond_2d
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    const-string v1, "AppLovinAdView"

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    const-string v2, "onDetachedFromWindowCalled with expanded ad present"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->qS()V

    goto :goto_55

    :cond_48
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    const-string v2, "onDetachedFromWindowCalled without an expanded ad present"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .registers 3

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object p1

    const-string v0, "crash_applovin_ad_webview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    new-instance p1, Lcom/applovin/impl/adview/e0;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/e0;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public pause()V
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->agw:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->agx:Z

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->agx:Z

    :cond_c
    :goto_c
    return-void
.end method

.method public qQ()Lcom/applovin/adview/AppLovinAdViewEventListener;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agB:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-object v0
.end method

.method public qR()Lcom/applovin/impl/adview/g;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agD:Lcom/applovin/impl/adview/g;

    return-object v0
.end method

.method public qT()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/h0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/h0;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public qU()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->ags:Lcom/applovin/impl/adview/m;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agt:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_9

    goto :goto_3e

    :cond_9
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agp:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/m;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    goto :goto_41

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->qT()V

    :goto_41
    return-void
.end method

.method public qV()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->agy:Z

    return-void
.end method

.method public qW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->agy:Z

    return-void
.end method

.method public qX()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agc:Landroid/content/Context;

    instance-of v0, v0, Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agq:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->Gv()Lcom/applovin/impl/sdk/ad/e$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/ad/e$a;->aGG:Lcom/applovin/impl/sdk/ad/e$a;

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agc:Landroid/content/Context;

    check-cast v0, Lcom/applovin/impl/adview/l;

    invoke-interface {v0}, Lcom/applovin/impl/adview/l;->dismiss()V

    :cond_20
    return-void
.end method

.method public qY()Lcom/applovin/adview/AppLovinAdView;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agd:Landroid/view/ViewGroup;

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method public qZ()Lcom/applovin/impl/adview/d;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    return-object v0
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->agw:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/b;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->agx:Z

    return-void
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agC:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agA:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agz:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->agB:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agg:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStatsManagerHelper(Lcom/applovin/impl/sdk/d/d;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->agm:Lcom/applovin/impl/adview/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/d;->setStatsManagerHelper(Lcom/applovin/impl/sdk/d/d;)V

    :cond_7
    return-void
.end method
