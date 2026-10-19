###### Class com.json.mediationsdk.p (com.ironsource.mediationsdk.p)
.class public Lcom/ironsource/mediationsdk/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/y7;
.implements Lcom/ironsource/ba;
.implements Lcom/ironsource/e3;
.implements Lcom/ironsource/e3$b;
.implements Lcom/ironsource/e3$c;
.implements Lcom/ironsource/e3$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/p$c;,
        Lcom/ironsource/mediationsdk/p$d;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private final D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/Boolean;

.field private N:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/Boolean;

.field private Q:Lcom/ironsource/n5;

.field private R:Lcom/ironsource/mediationsdk/y;

.field private S:Lcom/ironsource/mediationsdk/w;

.field private T:Lcom/ironsource/m7;

.field private U:Lcom/ironsource/za;

.field private V:Lcom/ironsource/h1;

.field private W:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

.field private X:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Y:Z

.field private Z:Z

.field private a0:Z

.field private final b:Ljava/lang/String;

.field private b0:Z

.field private final c:Ljava/lang/String;

.field private c0:Z

.field private final d:Lcom/ironsource/e5;

.field private d0:Z

.field private final e:Lcom/ironsource/e5$a;

.field private e0:I

.field private f:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private final f0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/demandOnly/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ironsource/mediationsdk/v;

.field private final g0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/demandOnly/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private final h0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/demandOnly/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/ironsource/y8;

.field private i0:Lcom/ironsource/mediationsdk/demandOnly/f;

.field private j:Lcom/ironsource/mediationsdk/logger/b;

.field private j0:Lcom/ironsource/mediationsdk/demandOnly/k;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k0:Lcom/ironsource/mediationsdk/demandOnly/c;

.field private final l:Ljava/lang/Object;

.field private l0:Lcom/ironsource/l4;

.field private m:Lcom/ironsource/mediationsdk/utils/c;

.field private m0:Lcom/ironsource/z7;

.field private n:Ljava/lang/String;

.field private n0:Lcom/ironsource/tc;

.field private o:Ljava/lang/String;

.field private o0:Z

.field private p:Ljava/lang/String;

.field private p0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

.field private q:Ljava/lang/String;

.field q0:Lcom/ironsource/mediationsdk/events/ISErrorListener;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r0:Lcom/ironsource/u5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/u5<",
            "Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field s0:Lcom/ironsource/u5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/u5<",
            "Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Landroid/content/Context;

.field private y:Ljava/lang/Boolean;

.field private z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->b:Ljava/lang/String;

    const-string v0, "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b7.7.0"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->r:Ljava/util/Map;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->s:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->u:Z

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->y:Ljava/lang/Boolean;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    const-string v3, "sessionDepth"

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->P:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->o0:Z

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/l5;->c()Lcom/ironsource/e5;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->d:Lcom/ironsource/e5;

    invoke-static {}, Lcom/ironsource/e9;->g()Lcom/ironsource/k5;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/k5;->a()Lcom/ironsource/e5$a;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->e:Lcom/ironsource/e5$a;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->X0()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->A:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->H:Z

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->X:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/ironsource/mediationsdk/p;->E:I

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->L:Z

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->w:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/mediationsdk/w;

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->i0:Lcom/ironsource/mediationsdk/demandOnly/f;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->j0:Lcom/ironsource/mediationsdk/demandOnly/k;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->k0:Lcom/ironsource/mediationsdk/demandOnly/c;

    iput v2, p0, Lcom/ironsource/mediationsdk/p;->e0:I

    new-instance v1, Lcom/ironsource/l4;

    invoke-direct {v1}, Lcom/ironsource/l4;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->l0:Lcom/ironsource/l4;

    new-instance v1, Lcom/ironsource/z7;

    invoke-direct {v1}, Lcom/ironsource/z7;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    new-instance v1, Lcom/ironsource/tc;

    invoke-direct {v1}, Lcom/ironsource/tc;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->n0:Lcom/ironsource/tc;

    new-instance v1, Lcom/ironsource/mediationsdk/p$a;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/p$a;-><init>(Lcom/ironsource/mediationsdk/p;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->q0:Lcom/ironsource/mediationsdk/events/ISErrorListener;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->p0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    new-instance v0, Lcom/ironsource/u5$a;

    invoke-direct {v0}, Lcom/ironsource/u5$a;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->r0:Lcom/ironsource/u5;

    new-instance v0, Lcom/ironsource/u5$b;

    invoke-direct {v0}, Lcom/ironsource/u5$b;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->s0:Lcom/ironsource/u5;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/mediationsdk/p$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;-><init>()V

    return-void
.end method

.method private A()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private A0(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->P0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->M0()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p2

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p2, :cond_26

    const-string p1, "showProgrammaticInterstitial error: empty default placement in response"

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p2, v2, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3fc

    invoke-direct {p2, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_26
    if-eqz p1, :cond_2c

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->C0(Landroid/app/Activity;)V

    goto :goto_4e

    :cond_2c
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_4e

    const-string p1, "Activity must be provided in showInterstitial when initializing SDK with context"

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p2, v2, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object p2

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fe

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_4e
    :goto_4e
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->b0:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    new-instance v1, Lcom/ironsource/mediationsdk/model/Placement;

    invoke-direct {v1, p2}, Lcom/ironsource/mediationsdk/model/Placement;-><init>(Lcom/ironsource/mediationsdk/model/BasePlacement;)V

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/o1;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_71

    :cond_5d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/y;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_71

    :catch_67
    move-exception p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "showProgrammaticInterstitial()"

    invoke-virtual {p2, v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_71
    return-void
.end method

.method private B()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->X:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onInitializationCompleted()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/ironsource/a4;

    const v2, 0x13a82

    invoke-direct {v1, v2, v0}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InitializationListener;->onInitializationComplete()V

    :cond_2d
    return-void
.end method

.method private B0()V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->V(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4f

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Banner started in programmatic mode"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance v1, Lcom/ironsource/mediationsdk/k;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/k;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/k1;)V

    new-instance v2, Lcom/ironsource/mediationsdk/w;

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/o8;->a()Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/ironsource/mediationsdk/w;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/k;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/mediationsdk/w;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->V0()V

    goto :goto_75

    :cond_4f
    const/4 v0, 0x1

    invoke-static {v2, v0, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    new-array v3, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v2

    invoke-direct {p0, v1, v3}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x14572

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_75
    return-void
.end method

.method private C()V
    .registers 5

    sget-boolean v0, Lcom/ironsource/mediationsdk/p;->a:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ironsource/mediationsdk/p;->a:Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    :try_start_c
    const-string v2, "status"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1d
    new-instance v0, Lcom/ironsource/a4;

    const/16 v2, 0x72

    invoke-direct {v0, v2, v1}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    :cond_2b
    return-void
.end method

.method private C0(Landroid/app/Activity;)V
    .registers 5

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity is updated to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private D0(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->S0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_29

    if-nez p2, :cond_f

    :try_start_8
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->N0()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p2

    goto :goto_f

    :catch_d
    move-exception v2

    goto :goto_2b

    :cond_f
    :goto_f
    if-nez p2, :cond_34

    const-string v2, "showProgrammaticRewardedVideo error: empty default placement in response"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x3fd

    invoke-direct {v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_d

    return-void

    :catch_29
    move-exception v2

    move-object p2, v1

    :goto_2b
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "showProgrammaticRewardedVideo()"

    invoke-virtual {v3, v4, v5, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    if-eqz p1, :cond_3a

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->C0(Landroid/app/Activity;)V

    goto :goto_5b

    :cond_3a
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_5b

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Activity must be provided in showRewardedVideo when initializing SDK with context"

    invoke-virtual {p1, p2, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p1

    const-string p2, "Rewarded Video"

    invoke-static {v2, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_5b
    :goto_5b
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    if-eqz v2, :cond_6b

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    if-nez v3, :cond_67

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->a0:Z

    if-eqz v3, :cond_6b

    :cond_67
    invoke-virtual {v2, p1, p2}, Lcom/ironsource/o1;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_8a

    :cond_6b
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    if-eqz v2, :cond_73

    invoke-interface {v2, p1, p2}, Lcom/ironsource/n5;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_8a

    :cond_73
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "showProgrammaticRewardedVideo - show called before init completed, managers not initiated yet"

    invoke-virtual {p1, p2, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x3ff

    invoke-direct {p1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :goto_8a
    return-void
.end method

.method private E()V
    .registers 4

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/o8;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "is_deviceid_optout"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/ironsource/l3;->a:Lcom/ironsource/l3;

    invoke-virtual {v1, v0}, Lcom/ironsource/l3;->b(Z)V

    :cond_2e
    return-void
.end method

.method private E0(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_31

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/ironsource/wb;->a()Lcom/ironsource/wb;

    move-result-object v0

    new-instance v1, Lcom/ironsource/t4;

    invoke-direct {v1, p1}, Lcom/ironsource/t4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/wb;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/u1;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/u1;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    sget-object v0, Lcom/ironsource/ka;->P:Lcom/ironsource/ka;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/u1;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_31
    return-void
.end method

.method private F()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->p0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->a()Lcom/ironsource/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->adQualityAvailable()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private F0()V
    .registers 13

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Adunit: Interstitial is now initiated - programmatic mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->V(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_69

    new-instance v0, Lcom/ironsource/mediationsdk/y;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/p7;->b()I

    move-result v9

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/o8;->a()Ljava/util/HashSet;

    move-result-object v10

    iget-object v11, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/mediationsdk/y;-><init>(Ljava/util/List;Lcom/ironsource/p7;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_5d

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->x:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/y;->a(Landroid/content/Context;Z)V

    :cond_5d
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    if-eqz v0, :cond_8f

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/y;->i()V

    goto :goto_8f

    :cond_69
    const/4 v0, 0x1

    invoke-static {v3, v0, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method private G()V
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->H:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->I()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/k1;->d()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->d0:Z

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->H()V

    return-void

    :cond_22
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->B0()V

    return-void
.end method

.method private G0(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-virtual {v0, p1}, Lcom/ironsource/z7;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/z7;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/z7;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/z7;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {}, Lcom/ironsource/o5;->a()Lcom/ironsource/p5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/z7;->a(Lcom/ironsource/p5;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isGooglePlayInstalled(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ironsource/z7;->b(Z)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {}, Lcom/ironsource/o;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/z7;->a(I)V

    return-void
.end method

.method private H()V
    .registers 9

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->V(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    new-instance v0, Lcom/ironsource/h1;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v3

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->k()Z

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/h1;-><init>(Ljava/util/List;Lcom/ironsource/k1;Ljava/lang/String;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->V0()V

    goto :goto_66

    :cond_3f
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v2

    new-array v3, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v0

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x14572

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_66
    return-void
.end method

.method private H0()V
    .registers 3

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->L()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/bb;->k()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/a;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->a0:Z

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->M(Lcom/ironsource/bb;)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/p;->e0:I

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->a0:Z

    if-eqz v0, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->z0()V

    return-void

    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->J0()V

    return-void
.end method

.method private I()V
    .registers 11

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Banner started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/ta;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/ta;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/c;->i()Lcom/ironsource/ua;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/ua;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_46
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_50
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v6

    new-instance v2, Lcom/ironsource/f3$a;

    const-string v3, "Mediation"

    invoke-direct {v2, v3}, Lcom/ironsource/f3$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/ironsource/k1;->k()Z

    move-result v3

    if-eqz v3, :cond_70

    const-string v3, "isOneFlow"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/f3$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_70
    new-instance v1, Lcom/ironsource/mediationsdk/demandOnly/c;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->q()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/ironsource/f3$b;

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v3

    invoke-direct {v9, v3, v2}, Lcom/ironsource/f3$b;-><init>(Lcom/ironsource/g5;Lcom/ironsource/f3$a;)V

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/ironsource/mediationsdk/demandOnly/c;-><init>(Ljava/util/List;Lcom/ironsource/k1;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/f3;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->k0:Lcom/ironsource/mediationsdk/demandOnly/c;

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_50 .. :try_end_8a} :catchall_b4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/h$b;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->k0:Lcom/ironsource/mediationsdk/demandOnly/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->g()Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/demandOnly/c;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;)V

    goto :goto_94

    :cond_ae
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_dc

    :catchall_b4
    move-exception v1

    :try_start_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v1

    :cond_b7
    invoke-static {v3, v3, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x14572

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_dc
    return-void
.end method

.method private I0()V
    .registers 7

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isInitResponseCached(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getFirstSessionTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    if-nez v1, :cond_35

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get first session timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveFirstSessionTimestamp(Landroid/content/Context;J)V

    :cond_35
    return-void
.end method

.method private J0()V
    .registers 11

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->V(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    if-lez v0, :cond_5b

    new-instance v0, Lcom/ironsource/za;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v3

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->k()Z

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/za;-><init>(Ljava/util/List;Lcom/ironsource/bb;Ljava/lang/String;ZLcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_4b

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->x:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/q1;->a(Landroid/content/Context;Z)V

    :cond_4b
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Z:Z

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    if-eqz v0, :cond_83

    iput-boolean v9, p0, Lcom/ironsource/mediationsdk/p;->Z:Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    invoke-virtual {v0}, Lcom/ironsource/q1;->w()V

    goto :goto_83

    :cond_5b
    iget v0, p0, Lcom/ironsource/mediationsdk/p;->e0:I

    const/4 v1, 0x1

    invoke-static {v9, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v9

    const/16 v4, 0x3f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object v3, v2, v9

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x13da2

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v9}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_83
    :goto_83
    return-void
.end method

.method private K()V
    .registers 7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Interstitial started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/ta;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/ta;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/c;->i()Lcom/ironsource/ua;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/ua;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_4f
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->R(Ljava/util/List;)Lcom/ironsource/mediationsdk/demandOnly/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->i0:Lcom/ironsource/mediationsdk/demandOnly/f;

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_78

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->i0:Lcom/ironsource/mediationsdk/demandOnly/f;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/demandOnly/f;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)V

    goto :goto_60

    :cond_72
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_a1

    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    :cond_7b
    const/4 v0, 0x1

    invoke-static {v3, v3, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_a1
    return-void
.end method

.method private L()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Rewarded Video started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/ta;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/ta;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/c;->i()Lcom/ironsource/ua;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/ua;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_4f
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->p0(Ljava/util/List;)Lcom/ironsource/mediationsdk/demandOnly/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->j0:Lcom/ironsource/mediationsdk/demandOnly/k;

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_88

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_66

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    return-void

    :cond_66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->j0:Lcom/ironsource/mediationsdk/demandOnly/k;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/demandOnly/k;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)V

    goto :goto_70

    :cond_82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_90

    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0

    :cond_8b
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_90
    return-void
.end method

.method private L0(Ljava/lang/String;)Lcom/ironsource/m1;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance p1, Lcom/ironsource/v3;

    invoke-direct {p1}, Lcom/ironsource/v3;-><init>()V

    return-object p1

    :cond_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/ironsource/k1;->j()Lcom/ironsource/m1;

    move-result-object p1

    return-object p1

    :cond_1d
    invoke-virtual {v0, p1}, Lcom/ironsource/k1;->a(Ljava/lang/String;)Lcom/ironsource/m1;

    move-result-object p1

    if-eqz p1, :cond_24

    return-object p1

    :cond_24
    invoke-virtual {v0}, Lcom/ironsource/k1;->j()Lcom/ironsource/m1;

    move-result-object p1

    return-object p1
.end method

.method private M(Lcom/ironsource/bb;)I
    .registers 4

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->a0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/ironsource/bb;->k()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/a;->e()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    if-eqz p1, :cond_19

    const/4 v1, 0x2

    :cond_19
    return v1
.end method

.method private M0()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/p7;->a()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private N0()Lcom/ironsource/mediationsdk/model/Placement;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/bb;->a()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private O0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_45

    :cond_17
    const/4 v0, 0x0

    :try_start_18
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->P0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->M0()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    if-nez v0, :cond_33

    const-string p1, "Default placement was not found"

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    :goto_33
    if-nez v0, :cond_38

    sget-object p1, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;

    return-object p1

    :cond_38
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/b;->c(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object p1

    return-object p1

    :cond_45
    :goto_45
    sget-object p1, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;

    return-object p1
.end method

.method private P0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/ironsource/p7;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private R(Ljava/util/List;)Lcom/ironsource/mediationsdk/demandOnly/f;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)",
            "Lcom/ironsource/mediationsdk/demandOnly/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v3

    new-instance v0, Lcom/ironsource/f3$a;

    const-string v1, "Mediation"

    invoke-direct {v0, v1}, Lcom/ironsource/f3$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ironsource/p7;->k()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isOneFlow"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/f3$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    new-instance v8, Lcom/ironsource/f3$b;

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v1

    invoke-direct {v8, v1, v0}, Lcom/ironsource/f3$b;-><init>(Lcom/ironsource/g5;Lcom/ironsource/f3$a;)V

    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/f;

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->r0:Lcom/ironsource/u5;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->q()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/mediationsdk/demandOnly/f;-><init>(Ljava/util/List;Lcom/ironsource/p7;Lcom/ironsource/mediationsdk/c;Lcom/ironsource/u5;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/f3;)V

    return-object v0
.end method

.method private R0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_45

    :cond_17
    const/4 v0, 0x0

    :try_start_18
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->S0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->N0()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    if-nez v0, :cond_33

    const-string p1, "Default placement was not found"

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    :goto_33
    if-nez v0, :cond_38

    sget-object p1, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;

    return-object p1

    :cond_38
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/b;->c(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object p1

    return-object p1

    :cond_45
    :goto_45
    sget-object p1, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;

    return-object p1
.end method

.method private S(Lcom/ironsource/mediationsdk/s$d;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    const/16 v1, 0x1fe

    if-nez v0, :cond_e

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v0, "ironSource SDK was not initialized"

    invoke-direct {p1, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_e
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->H:Z

    if-nez v0, :cond_1a

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v0, "ironSource SDK was not initialized using Demand Only mode"

    invoke-direct {p1, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_1a
    sget-object v0, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    if-ne p1, v0, :cond_26

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v0, "ironSource initialization failed"

    invoke-direct {p1, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_26
    sget-object v0, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    if-ne p1, v0, :cond_3c

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/s;->d()Z

    move-result p1

    if-eqz p1, :cond_3c

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v0, "ironSource initialization in progress"

    invoke-direct {p1, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method private S0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/ironsource/bb;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private T(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/c;
    .registers 6

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isInitResponseCached(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getCachedValueByKeyOfCachedInitResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getCachedValueByKeyOfCachedInitResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "response"

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getCachedValueByKeyOfCachedInitResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    new-instance p2, Lcom/ironsource/mediationsdk/utils/c;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/ironsource/mediationsdk/utils/c$a;->b:Lcom/ironsource/mediationsdk/utils/c$a;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/utils/c;->a(Lcom/ironsource/mediationsdk/utils/c$a;)V

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    return-object p2
.end method

.method private U(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/mediationsdk/utils/c;
    .registers 14

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->d:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "using custom identifier"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_24
    move-object v5, v0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getSegmentData()Ljava/util/ArrayList;

    move-result-object v0

    move-object v8, v0

    goto :goto_30

    :cond_2f
    move-object v8, v1

    :goto_30
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v3

    iget-boolean v7, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->g()Z

    move-result v9

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v2 .. v9}, Lcom/ironsource/mediationsdk/server/ServerURL;->getCPVProvidersURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_52

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "serverResponseString is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v1

    :cond_52
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isEncryptedResponse()Z

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "encrypt"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "response"

    invoke-virtual {v2, p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string p1, "encryptedResponse is empty - return null"

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v1

    :cond_76
    invoke-static {}, Lcom/ironsource/w3;->b()Lcom/ironsource/w3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/w3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_91

    const-string p1, "encoded response invalid - return null"

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->C()V

    return-object v1

    :cond_91
    new-instance v0, Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p2, p3}, Lcom/ironsource/mediationsdk/utils/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9a} :catch_b0

    :try_start_9a
    sget-object p1, Lcom/ironsource/mediationsdk/utils/c$a;->c:Lcom/ironsource/mediationsdk/utils/c$a;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/c;->a(Lcom/ironsource/mediationsdk/utils/c$a;)V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->m()Z

    move-result p1

    if-nez p1, :cond_cb

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "response invalid - return null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ac} :catch_ad

    return-object v1

    :catch_ad
    move-exception p1

    move-object v1, v0

    goto :goto_b1

    :catch_b0
    move-exception p1

    :goto_b1
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :cond_cb
    return-object v0
.end method

.method private V(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/c;->i()Lcom/ironsource/ua;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/ua;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    return-object v0
.end method

.method private V0()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "load banner after init"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->N:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->N:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/lang/String;

    :cond_1f
    return-void
.end method

.method private W(ILorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/ironsource/a4;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method

.method private X(Lcom/ironsource/m0;Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/c;)V
    .registers 6

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->b(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->b(I)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->a(I)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->c(I)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->i()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->c([ILandroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->h()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->a([ILandroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->j()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->b([ILandroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->g()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->d([ILandroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p2

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/j0;->i()Lcom/ironsource/nb;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/u1;->a(Lcom/ironsource/nb;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/m0;->k()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/ironsource/u1;->a(Z)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/m0;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ironsource/u1;->d(I)V

    return-void
.end method

.method private X0()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/b;-><init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->j:Lcom/ironsource/mediationsdk/logger/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V

    new-instance v0, Lcom/ironsource/y8;

    invoke-direct {v0}, Lcom/ironsource/y8;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    new-instance v0, Lcom/ironsource/mediationsdk/v;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/v;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->g:Lcom/ironsource/mediationsdk/v;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/v;->setInternalOfferwallListener(Lcom/ironsource/k7;)V

    return-void
.end method

.method private Z(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ad unit has already been initialized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    return-void
.end method

.method private Z0()Z
    .registers 5

    :try_start_0
    const-string v0, "com.ironsource.adqualitysdk.sdk.IronSourceAdQuality"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdQuality SDK exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_22

    const/4 v0, 0x1

    return v0

    :catchall_22
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "No AdQuality SDK found"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    .registers 9

    sget-object v0, Lcom/ironsource/mediationsdk/p$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "initISDemandOnly() had failed"

    const/4 v3, 0x0

    const-string v4, "init() had failed"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_d2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_74

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1c

    goto/16 :goto_137

    :cond_1c
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->H:Z

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/h$b;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->g()Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/e1;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Banner"

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/e1;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2a

    :cond_4e
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    goto/16 :goto_104

    :cond_52
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_137

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x25a

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->N:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/lang/String;

    goto/16 :goto_137

    :cond_74
    if-nez p2, :cond_84

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->x()Z

    move-result p2

    if-nez p2, :cond_84

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->A:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_137

    :cond_84
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-virtual {p1, v5}, Lcom/ironsource/y8;->onOfferwallAvailable(Z)V

    goto/16 :goto_137

    :cond_8b
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    const-string p2, "Interstitial"

    if-eqz p1, :cond_be

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->r0:Lcom/ironsource/u5;

    invoke-interface {v1, v0}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    invoke-static {v2, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_9b

    :cond_bb
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_104

    :cond_be
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    if-eqz p1, :cond_137

    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v4, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_137

    :cond_d2
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    const-string v1, "Rewarded Video"

    if-eqz v0, :cond_108

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_102

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->s0:Lcom/ironsource/u5;

    invoke-interface {v0, p2}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-interface {v0, p2, v3}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_e2

    :cond_102
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_104
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_137

    :cond_108
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    if-eqz v0, :cond_120

    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->Z:Z

    if-eqz p1, :cond_137

    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/p;->Z:Z

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v4, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_137

    :cond_120
    if-nez p2, :cond_130

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->y()Z

    move-result p2

    if-nez p2, :cond_130

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->A:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_137

    :cond_130
    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p1

    invoke-virtual {p1, v5, v3}, Lcom/ironsource/va;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_137
    :goto_137
    return-void
.end method

.method private a1(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const-string v0, "^[a-zA-Z0-9]*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private declared-synchronized b0(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_149

    const/16 v2, 0x1fe

    :try_start_1d
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    if-nez v3, :cond_30

    const-string p1, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_131

    monitor-exit p0

    return-void

    :cond_30
    :try_start_30
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    if-nez v3, :cond_43

    const-string p1, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_131

    monitor-exit p0

    return-void

    :cond_43
    :try_start_43
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    if-ne v3, v4, :cond_61

    const-string p1, "init() had failed"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "init() had failed"

    const-string v1, "Interstitial"

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_5f
    .catchall {:try_start_43 .. :try_end_5f} :catchall_131

    monitor-exit p0

    return-void

    :cond_61
    :try_start_61
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$d;->c()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8f

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    const/16 v6, 0x424

    if-ne v3, v6, :cond_83

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    const v3, 0x14191

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    :cond_83
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-interface {p2, v0, v4}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_8d
    .catchall {:try_start_61 .. :try_end_8d} :catchall_131

    monitor-exit p0

    return-void

    :cond_8f
    :try_start_8f
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$d;->e()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/p;->C0(Landroid/app/Activity;)V

    sget-object v4, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    const v6, 0x1443b

    if-ne v3, v4, :cond_e4

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/s;->d()Z

    move-result v3

    if-eqz v3, :cond_b8

    const-string p1, "init() had failed"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "init() had failed"

    const-string v1, "Interstitial"

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_df

    :cond_b8
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_bb
    .catchall {:try_start_8f .. :try_end_bb} :catchall_131

    :try_start_bb
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_e1

    :try_start_c5
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V
    :try_end_df
    .catchall {:try_start_c5 .. :try_end_df} :catchall_131

    :cond_df
    :goto_df
    monitor-exit p0

    return-void

    :catchall_e1
    move-exception p1

    :try_start_e2
    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw p1

    :cond_e4
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->l()Z

    move-result v3

    if-nez v3, :cond_fc

    const-string p1, "No interstitial configurations found"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "the server response does not contain interstitial data"

    const-string v1, "Interstitial"

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_fa
    .catchall {:try_start_e3 .. :try_end_fa} :catchall_131

    monitor-exit p0

    return-void

    :cond_fc
    :try_start_fc
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_131

    :try_start_ff
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->i0:Lcom/ironsource/mediationsdk/demandOnly/f;

    if-nez v3, :cond_129

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_126

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V

    :cond_126
    monitor-exit v1
    :try_end_127
    .catchall {:try_start_ff .. :try_end_127} :catchall_12e

    monitor-exit p0

    return-void

    :cond_129
    :try_start_129
    monitor-exit v1
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_12e

    :try_start_12a
    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/demandOnly/f;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_131

    goto :goto_147

    :catchall_12e
    move-exception p1

    :try_start_12f
    monitor-exit v1
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    :try_start_130
    throw p1
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_131

    :catchall_131
    move-exception p1

    :try_start_132
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_147
    .catchall {:try_start_132 .. :try_end_147} :catchall_149

    :goto_147
    monitor-exit p0

    return-void

    :catchall_149
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b1(Ljava/lang/String;)Lcom/ironsource/f2;
    .registers 5

    new-instance v0, Lcom/ironsource/f2;

    invoke-direct {v0}, Lcom/ironsource/f2;-><init>()V

    if-eqz p1, :cond_22

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-direct {p0, p1, v1, v2}, Lcom/ironsource/mediationsdk/p;->n0(Ljava/lang/String;II)Z

    move-result v1

    const-string v2, "appKey"

    if-eqz v1, :cond_1b

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->a1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "should contain only english characters and numbers"

    goto :goto_1d

    :cond_1b
    const-string v1, "length should be between 5-10 characters"

    :goto_1d
    invoke-static {v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    goto :goto_2b

    :cond_22
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fa

    const-string v2, "Init Fail - appKey is missing"

    invoke-direct {p1, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    :goto_2b
    invoke-virtual {v0, p1}, Lcom/ironsource/f2;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_2e
    return-object v0
.end method

.method private c1()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private d1()Z
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->c1()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->e1()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private e0(Lcom/ironsource/mediationsdk/utils/c;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->j:Lcom/ironsource/mediationsdk/logger/b;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/j0;->g()Lcom/ironsource/q0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/q0;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->setDebugLevel(I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/j0;->g()Lcom/ironsource/q0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/q0;->a()I

    move-result p1

    const-string v1, "console"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    return-void
.end method

.method private e1()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private f0(Lcom/ironsource/mediationsdk/utils/c;Landroid/content/Context;)V
    .registers 11

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/bb;->n()Lcom/ironsource/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/m0;->l()Z

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->j()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/p7;->j()Lcom/ironsource/m0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/m0;->l()Z

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->c1()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/k1;->h()Lcom/ironsource/m0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/m0;->l()Z

    move-result v3

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->u()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/g2;->e()Lcom/ironsource/h9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/h9;->g()Lcom/ironsource/m0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/m0;->l()Z

    move-result v4

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    :goto_61
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->x()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/g2;->f()Lcom/ironsource/w9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/w9;->c()Lcom/ironsource/m0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/m0;->l()Z

    move-result v5

    goto :goto_79

    :cond_78
    const/4 v5, 0x0

    :goto_79
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/j0;->h()Lcom/ironsource/la;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/la;->i()Z

    move-result v7

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/bb;->n()Lcom/ironsource/m0;

    move-result-object v0

    :goto_97
    invoke-direct {p0, v0, p2, p1}, Lcom/ironsource/mediationsdk/p;->s0(Lcom/ironsource/m0;Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/c;)V

    goto :goto_b1

    :cond_9b
    if-eqz v5, :cond_aa

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->f()Lcom/ironsource/w9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/w9;->c()Lcom/ironsource/m0;

    move-result-object v0

    goto :goto_97

    :cond_aa
    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->b(Z)V

    :goto_b1
    if-eqz v2, :cond_c3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p7;->j()Lcom/ironsource/m0;

    move-result-object v0

    :goto_bf
    invoke-direct {p0, v0, p2, p1}, Lcom/ironsource/mediationsdk/p;->X(Lcom/ironsource/m0;Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/c;)V

    goto :goto_e8

    :cond_c3
    if-eqz v3, :cond_d2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/k1;->h()Lcom/ironsource/m0;

    move-result-object v0

    goto :goto_bf

    :cond_d2
    if-eqz v4, :cond_e1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->e()Lcom/ironsource/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/h9;->g()Lcom/ironsource/m0;

    move-result-object v0

    goto :goto_bf

    :cond_e1
    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/u1;->b(Z)V

    :goto_e8
    sget-object p1, Lcom/ironsource/ka;->P:Lcom/ironsource/ka;

    invoke-virtual {p1, v7}, Lcom/ironsource/u1;->b(Z)V

    if-eqz v7, :cond_112

    invoke-virtual {v6}, Lcom/ironsource/la;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/u1;->b(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/ironsource/la;->l()[I

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/u1;->c([ILandroid/content/Context;)V

    invoke-virtual {v6}, Lcom/ironsource/la;->k()[I

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/u1;->a([ILandroid/content/Context;)V

    invoke-virtual {v6}, Lcom/ironsource/la;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ironsource/u1;->a(Z)V

    invoke-virtual {v6}, Lcom/ironsource/la;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ironsource/u1;->d(I)V

    :cond_112
    return-void
.end method

.method private g0(Lcom/ironsource/o0;)V
    .registers 4

    sget-object v0, Lcom/ironsource/l3;->a:Lcom/ironsource/l3;

    invoke-virtual {p1}, Lcom/ironsource/o0;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/l3;->c(Z)V

    invoke-virtual {p1}, Lcom/ironsource/o0;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/l3;->a(Z)V

    invoke-virtual {p1}, Lcom/ironsource/o0;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ironsource/l3;->a(I)V

    return-void
.end method

.method private h0(Ljava/lang/String;Lcom/ironsource/f2;)V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x80

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/p;->n0(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "dynamicUserId"

    const-string v0, "SupersonicAds"

    const-string v1, "dynamicUserId is invalid, should be between 1-128 chars in length."

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/f2;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_16
    return-void
.end method

.method private i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V
    .registers 9

    if-eqz p2, :cond_38

    :try_start_2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_38

    aget-object v3, p2, v2

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_18
    move-exception p1

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IronSourceObject addToDictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_38
    return-void
.end method

.method private j()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private j0(ZLjava/lang/String;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    iget v0, p0, Lcom/ironsource/mediationsdk/p;->e0:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_1f

    new-array v0, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "placement"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p2, v2, v1

    aput-object v2, v0, v4

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    :cond_1f
    const/16 p2, 0x456

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    return-void
.end method

.method private k0(ZZILorg/json/JSONObject;)V
    .registers 9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_25

    const-string p1, ",Activity=%s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_25
    if-nez p1, :cond_31

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "init_context_flow"

    :goto_2e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const-string p1, ",cachedUserAgent=%s"

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->d:Lcom/ironsource/e5;

    invoke-interface {v2}, Lcom/ironsource/e5;->q()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ext1"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sessionDepth"

    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5b
    new-instance p1, Lcom/ironsource/a4;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p4}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method

.method private l()Z
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private varargs declared-synchronized l0(ZZ[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, v0, :cond_37

    aget-object v4, p3, v2

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    goto :goto_34

    :cond_14
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    goto :goto_34

    :cond_1f
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    goto :goto_34

    :cond_2a
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->L:Z

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_37
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_108

    if-ne v0, v2, :cond_60

    :try_start_43
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    if-eqz p1, :cond_106

    array-length p1, p3

    :goto_48
    if-ge v1, p1, :cond_106

    aget-object p2, p3, v1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-direct {p0, p2, v3}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_57} :catch_5a
    .catchall {:try_start_43 .. :try_end_57} :catchall_108

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :catch_5a
    move-exception p1

    :try_start_5b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_106

    :cond_60
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->u:Z

    if-nez v0, :cond_ad

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    array-length v2, p3

    const/4 v4, 0x0

    :goto_6a
    if-ge v1, v2, :cond_aa

    aget-object v5, p3, v1

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8e

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->A:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_5b .. :try_end_80} :catchall_108

    :try_start_80
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_88
    .catchall {:try_start_80 .. :try_end_87} :catchall_108

    goto :goto_8c

    :catch_88
    move-exception v4

    :try_start_89
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8c
    const/4 v4, 0x1

    goto :goto_a7

    :cond_8e
    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ad unit has started initializing."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v5, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    :cond_aa
    if-eqz v4, :cond_106

    goto :goto_fe

    :cond_ad
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/s;->b(Z)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/List;
    :try_end_b6
    .catchall {:try_start_89 .. :try_end_b6} :catchall_108

    if-nez v0, :cond_ba

    monitor-exit p0

    return-void

    :cond_ba
    :try_start_ba
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    array-length v2, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c1
    if-ge v4, v2, :cond_fc

    aget-object v6, p3, v4

    iget-object v7, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f6

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->A:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_d7
    .catchall {:try_start_ba .. :try_end_d7} :catchall_108

    :try_start_d7
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_de} :catch_df
    .catchall {:try_start_d7 .. :try_end_de} :catchall_108

    goto :goto_e3

    :catch_df
    move-exception v5

    :try_start_e0
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e3
    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/List;

    if-eqz v5, :cond_f1

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    invoke-direct {p0, v6}, Lcom/ironsource/mediationsdk/p;->t0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_f4

    :cond_f1
    invoke-direct {p0, v6, v1}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_f4
    const/4 v5, 0x1

    goto :goto_f9

    :cond_f6
    invoke-direct {p0, v6}, Lcom/ironsource/mediationsdk/p;->Z(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    :goto_f9
    add-int/lit8 v4, v4, 0x1

    goto :goto_c1

    :cond_fc
    if-eqz v5, :cond_106

    :goto_fe
    iget p3, p0, Lcom/ironsource/mediationsdk/p;->E:I

    add-int/2addr p3, v3

    iput p3, p0, Lcom/ironsource/mediationsdk/p;->E:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/p;->k0(ZZILorg/json/JSONObject;)V
    :try_end_106
    .catchall {:try_start_e0 .. :try_end_106} :catchall_108

    :cond_106
    :goto_106
    monitor-exit p0

    return-void

    :catchall_108
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private m()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private m0(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z
    .registers 5

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private n0(Ljava/lang/String;II)Z
    .registers 5

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p3, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public static o()Lcom/ironsource/mediationsdk/p;
    .registers 1

    sget-object v0, Lcom/ironsource/mediationsdk/p$d;->a:Lcom/ironsource/mediationsdk/p;

    return-object v0
.end method

.method private o0()V
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->K()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p7;->g()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->b0:Z

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->x0()V

    return-void

    :cond_22
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->F0()V

    return-void
.end method

.method private p0(Ljava/util/List;)Lcom/ironsource/mediationsdk/demandOnly/k;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)",
            "Lcom/ironsource/mediationsdk/demandOnly/k;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v3

    new-instance v0, Lcom/ironsource/f3$a;

    const-string v1, "Mediation"

    invoke-direct {v0, v1}, Lcom/ironsource/f3$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ironsource/bb;->d()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isOneFlow"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/f3$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    new-instance v8, Lcom/ironsource/f3$b;

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v1

    invoke-direct {v8, v1, v0}, Lcom/ironsource/f3$b;-><init>(Lcom/ironsource/g5;Lcom/ironsource/f3$a;)V

    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/k;

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->s0:Lcom/ironsource/u5;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->q()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/mediationsdk/demandOnly/k;-><init>(Ljava/util/List;Lcom/ironsource/bb;Lcom/ironsource/mediationsdk/c;Lcom/ironsource/u5;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/f3;)V

    return-object v0
.end method

.method private r0(ILorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/ironsource/a4;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method

.method private s0(Lcom/ironsource/m0;Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/c;)V
    .registers 6

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->b(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->b(I)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->a(I)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->c(I)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->i()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->c([ILandroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->h()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->a([ILandroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->j()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->b([ILandroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/m0;->g()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/u1;->d([ILandroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p2

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/j0;->i()Lcom/ironsource/nb;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/u1;->a(Lcom/ironsource/nb;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/m0;->k()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/ironsource/u1;->a(Z)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/m0;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ironsource/u1;->d(I)V

    return-void
.end method

.method private t0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/p$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    goto :goto_2e

    :cond_15
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->G()V

    goto :goto_2e

    :cond_19
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->g:Lcom/ironsource/mediationsdk/v;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_27
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->o0()V

    goto :goto_2e

    :cond_2b
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->H0()V

    :goto_2e
    return-void
.end method

.method private u()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->e()Lcom/ironsource/h9;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private u0(Lcom/ironsource/mediationsdk/utils/c;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->e0(Lcom/ironsource/mediationsdk/utils/c;)V

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->f0(Lcom/ironsource/mediationsdk/utils/c;Landroid/content/Context;)V

    return-void
.end method

.method private v()Z
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private v0(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->k0:Lcom/ironsource/mediationsdk/demandOnly/c;

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_13
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private w()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private w0(Lcom/ironsource/mediationsdk/utils/c;)Z
    .registers 2

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->l()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private x()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->f()Lcom/ironsource/w9;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private x0()V
    .registers 10

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->V(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    if-lez v0, :cond_55

    new-instance v0, Lcom/ironsource/m7;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->d()Lcom/ironsource/p7;

    move-result-object v3

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->k()Z

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/m7;-><init>(Ljava/util/List;Lcom/ironsource/p7;Ljava/lang/String;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_49

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->x:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/q1;->a(Landroid/content/Context;Z)V

    :cond_49
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    if-eqz v0, :cond_7b

    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    invoke-virtual {v0}, Lcom/ironsource/q1;->w()V

    goto :goto_7b

    :cond_55
    const/4 v0, 0x1

    invoke-static {v8, v0, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v8

    const/16 v4, 0x3f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v3, v2, v8

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v8}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method private y()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private y0(Landroid/content/Context;)Lcom/ironsource/mediationsdk/utils/c;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {p1}, Lcom/ironsource/i7;->b(Landroid/content/Context;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object p1

    return-object p1
.end method

.method private z()Z
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->y()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->A()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private z0()V
    .registers 12

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Rewarded Video started in programmatic mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->V(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_50

    new-instance v0, Lcom/ironsource/mediationsdk/q;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->g()Lcom/ironsource/bb;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/o8;->a()Ljava/util/HashSet;

    move-result-object v9

    iget-object v10, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/ironsource/mediationsdk/q;-><init>(Ljava/util/List;Lcom/ironsource/bb;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_78

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->x:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/ironsource/n5;->a(Landroid/content/Context;Z)V

    goto :goto_78

    :cond_50
    iget v0, p0, Lcom/ironsource/mediationsdk/p;->e0:I

    const/4 v1, 0x1

    invoke-static {v3, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x13da2

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_78
    :goto_78
    return-void
.end method


# virtual methods
.method public D()Z
    .registers 10

    const-string v0, "isInterstitialReady():"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "Interstitial was initialized in demand only mode. Use isISDemandOnlyInterstitialReady instead"

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v2

    :cond_13
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->b0:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/ironsource/o1;->q()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2c

    :cond_22
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/y;->h()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_63

    if-eqz v3, :cond_2e

    :goto_2c
    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    :try_start_2f
    invoke-static {v2, v1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/ironsource/a4;

    if-eqz v3, :cond_3a

    const/16 v6, 0x835

    goto :goto_3c

    :cond_3a
    const/16 v6, 0x836

    :goto_3c
    invoke-direct {v5, v6, v4}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_5c
    .catchall {:try_start_2f .. :try_end_5c} :catchall_5e

    move v2, v3

    goto :goto_82

    :catchall_5e
    move-exception v4

    move-object v8, v4

    move v4, v3

    move-object v3, v8

    goto :goto_65

    :catchall_63
    move-exception v3

    const/4 v4, 0x0

    :goto_65
    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v1, "isInterstitialReady()"

    invoke-virtual {v0, v6, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_82
    return v2
.end method

.method public J()Z
    .registers 10

    const-string v0, "isRewardedVideoAvailable():"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "Rewarded Video was initialized in demand only mode. Use isISDemandOnlyRewardedVideoAvailable instead"

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v2

    :cond_13
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->a0:Z

    if-eqz v3, :cond_1c

    goto :goto_27

    :cond_1c
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    if-eqz v3, :cond_33

    invoke-interface {v3}, Lcom/ironsource/n5;->d()Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_31

    :cond_27
    :goto_27
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Lcom/ironsource/o1;->q()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_7e

    if-eqz v3, :cond_33

    :goto_31
    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    :try_start_34
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v4

    new-array v5, v1, [[Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "programmatic"

    aput-object v7, v6, v2

    iget v7, p0, Lcom/ironsource/mediationsdk/p;->e0:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v6, v5, v2

    invoke-direct {p0, v4, v5}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    new-instance v5, Lcom/ironsource/a4;

    if-eqz v3, :cond_55

    const/16 v6, 0x44d

    goto :goto_57

    :cond_55
    const/16 v6, 0x44e

    :goto_57
    invoke-direct {v5, v6, v4}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_77
    .catchall {:try_start_34 .. :try_end_77} :catchall_79

    move v2, v3

    goto :goto_9d

    :catchall_79
    move-exception v4

    move-object v8, v4

    move v4, v3

    move-object v3, v8

    goto :goto_80

    :catchall_7e
    move-exception v3

    const/4 v4, 0x0

    :goto_80
    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v1, "isRewardedVideoAvailable()"

    invoke-virtual {v0, v6, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9d
    return v2
.end method

.method K0()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->P:Ljava/lang/Boolean;

    return-object v0
.end method

.method public N()V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "loadInterstitial()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :try_start_a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->G:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_b9

    const-string v4, "Interstitial"

    const/4 v5, 0x3

    if-eqz v0, :cond_26

    :try_start_11
    const-string v0, "Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v3, v1, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_26
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    if-nez v0, :cond_3f

    const-string v0, "init() must be called before loadInterstitial()"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v3, v1, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_3f
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v0

    sget-object v6, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;
    :try_end_49
    .catchall {:try_start_11 .. :try_end_49} :catchall_b9

    const-string v7, "init() had failed"

    if-ne v0, v6, :cond_60

    :try_start_4d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0, v1, v7, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v7, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_60
    sget-object v6, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    if-ne v0, v6, :cond_84

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->d()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0, v1, v7, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v7, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_83

    :cond_81
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    :goto_83
    return-void

    :cond_84
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->l()Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v3, "No interstitial configurations found"

    invoke-virtual {v0, v1, v3, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "the server response does not contain interstitial data"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_a1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->b0:Z

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    if-nez v0, :cond_aa

    goto :goto_b2

    :cond_aa
    invoke-virtual {v0}, Lcom/ironsource/q1;->w()V

    goto :goto_d5

    :cond_ae
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    if-nez v0, :cond_b5

    :goto_b2
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    goto :goto_d5

    :cond_b5
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/y;->i()V
    :try_end_b8
    .catchall {:try_start_4d .. :try_end_b8} :catchall_b9

    goto :goto_d5

    :catchall_b9
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v3, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1fe

    invoke-direct {v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_d5
    return-void
.end method

.method public O()V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "loadRewardedVideo()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :try_start_a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->F:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_bc

    const-string v4, "Rewarded Video"

    const/4 v5, 0x3

    if-eqz v0, :cond_26

    :try_start_11
    const-string v0, "Rewarded Video was initialized in demand only mode. Use loadISDemandOnlyRewardedVideo instead"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v3, v1, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_26
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->o0:Z

    if-nez v0, :cond_36

    const-string v0, "Rewarded Video is not initiated with manual load"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v3, v1, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_36
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    if-nez v0, :cond_4f

    const-string v0, "init() must be called before loadRewardedVideo()"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v3, v1, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_4f
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v0

    sget-object v6, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;
    :try_end_59
    .catchall {:try_start_11 .. :try_end_59} :catchall_bc

    const-string v7, "init() had failed"

    if-ne v0, v6, :cond_70

    :try_start_5d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0, v1, v7, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v7, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_70
    sget-object v6, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    if-ne v0, v6, :cond_94

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->d()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0, v1, v7, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v7, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_93

    :cond_91
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->Z:Z

    :goto_93
    return-void

    :cond_94
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->z()Z

    move-result v0

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v3, "No rewarded video configurations found"

    invoke-virtual {v0, v1, v3, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "the server response does not contain rewarded video data"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_b1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    if-nez v0, :cond_b8

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->Z:Z

    goto :goto_d8

    :cond_b8
    invoke-virtual {v0}, Lcom/ironsource/q1;->w()V
    :try_end_bb
    .catchall {:try_start_5d .. :try_end_bb} :catchall_bc

    goto :goto_d8

    :catchall_bc
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v3, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1fe

    invoke-direct {v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_d8
    return-void
.end method

.method public P()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/ironsource/q1;->a(Lcom/ironsource/dc;)V

    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lcom/ironsource/q1;->a(Lcom/ironsource/dc;)V

    :cond_f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v1}, Lcom/ironsource/q1;->a(Lcom/ironsource/dc;)V

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->o0:Z

    return-void
.end method

.method public Q()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "removing all impression data listeners"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/o8;->d()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/ironsource/m5;->c()V

    :cond_15
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/m;->c()V

    :cond_1c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/mediationsdk/w;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/m;->c()V

    :cond_23
    return-void
.end method

.method declared-synchronized Q0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->f:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->f:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_15
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    goto :goto_32

    :catch_15
    move-exception p1

    :try_start_16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfferwallAdapter exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_13

    :cond_2f
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :goto_32
    monitor-exit p0

    throw p1
.end method

.method T0(Ljava/lang/String;)Z
    .registers 7

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->c1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ironsource/k1;->a(Ljava/lang/String;)Lcom/ironsource/m1;

    move-result-object v0

    if-nez v0, :cond_38

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g2;->c()Lcom/ironsource/k1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/k1;->j()Lcom/ironsource/m1;

    move-result-object v0

    if-nez v0, :cond_38

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Banner default placement was not found"

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_34

    return v1

    :catch_34
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_38
    if-nez v0, :cond_3b

    return v1

    :cond_3b
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method U0(Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->O0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    if-eqz v1, :cond_30

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    invoke-static {v0, v3, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_18
    const-string v2, "placement"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "programmatic"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_22

    :catch_22
    new-instance p1, Lcom/ironsource/a4;

    const/16 v2, 0x837

    invoke-direct {p1, v2, v0}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    :cond_30
    return v1
.end method

.method W0(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->R0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    sget-object v2, Lcom/ironsource/mediationsdk/p$b;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_18

    :cond_17
    const/4 v1, 0x0

    :cond_18
    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/p;->j0(ZLjava/lang/String;)V

    return v1
.end method

.method declared-synchronized Y(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->f:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method Y0(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->o:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForUserId(Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/ironsource/a4;

    const/16 v2, 0x34

    invoke-direct {v1, v2, v0}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->p0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    if-eqz v0, :cond_32

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->changeUserId(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;
    .registers 7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "createBannerForDemandOnly()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const/4 p2, 0x3

    const-string v0, "createBannerForDemandOnly() : Activity cannot be null"

    invoke-virtual {p1, v1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    :cond_16
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const v0, 0x1443d

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    if-nez p1, :cond_11

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "bidding data cannot be retrieved, context required"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v1

    :cond_11
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/s$d;->a:Lcom/ironsource/mediationsdk/s$d;

    const v3, 0x1443e

    if-ne v0, v2, :cond_2b

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "bidding data cannot be retrieved, SDK not initialized"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    return-object v1

    :cond_2b
    sget-object v4, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    if-ne v0, v4, :cond_3a

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "bidding data cannot be retrieved, SDK failed to initialize"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    return-object v1

    :cond_3a
    :try_start_3a
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->y0(Landroid/content/Context;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v4

    if-ne v0, v2, :cond_43

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->G0(Landroid/content/Context;)V

    :cond_43
    sget-object v2, Lcom/ironsource/mediationsdk/s$d;->d:Lcom/ironsource/mediationsdk/s$d;

    if-eq v0, v2, :cond_57

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/s;->a(Lcom/ironsource/mediationsdk/utils/c;)V

    if-eqz v4, :cond_57

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/ironsource/mediationsdk/s;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/c;)V

    :cond_57
    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/c;->b(Lcom/ironsource/mediationsdk/utils/c;)Lcom/ironsource/mediationsdk/utils/d;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->n0:Lcom/ironsource/tc;

    invoke-virtual {v2, p1, v0}, Lcom/ironsource/tc;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/d;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Lcom/ironsource/mediationsdk/d;->a(Lorg/json/JSONObject;Z)V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/d;->e()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->compressAndEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a3

    :cond_78
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_80
    .catchall {:try_start_3a .. :try_end_80} :catchall_81

    goto :goto_a3

    :catchall_81
    move-exception p1

    const v0, 0x1443f

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got error during token creation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    move-object p1, v1

    :goto_a3
    if-nez p1, :cond_a8

    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    :cond_a8
    return-object p1
.end method

.method public a()V
    .registers 7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x25b

    const-string v4, "init() had failed"

    invoke-direct {v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->N:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/lang/String;

    :cond_23
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->c0:Z

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "init() had failed"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_3b
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Z:Z

    if-eqz v0, :cond_52

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->Z:Z

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v2, "init() had failed"

    const-string v3, "Rewarded Video"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_52
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_55
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->r0:Lcom/ironsource/u5;

    invoke-interface {v3, v2}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    const-string v4, "init() had failed"

    const-string v5, "Interstitial"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_5f

    :cond_83
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_55 .. :try_end_89} :catchall_100

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_8c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->s0:Lcom/ironsource/u5;

    invoke-interface {v3, v2}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    const-string v4, "init() had failed"

    const-string v5, "Rewarded Video"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_96

    :cond_ba
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_8c .. :try_end_c0} :catchall_fd

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_c3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_cd
    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/demandOnly/h$b;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->g()Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    move-result-object v3

    if-eqz v3, :cond_cd

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/e1;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "init() had failed"

    const-string v5, "Banner"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/e1;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_cd

    :cond_f3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->g0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_fa
    move-exception v1

    monitor-exit v0
    :try_end_fc
    .catchall {:try_start_c3 .. :try_end_fc} :catchall_fa

    throw v1

    :catchall_fd
    move-exception v0

    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v0

    :catchall_100
    move-exception v1

    :try_start_101
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw v1
.end method

.method public a(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->g()Z

    move-result v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_8
    const-string v1, "duration"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "sessionDepth"

    iget p2, p0, Lcom/ironsource/mediationsdk/p;->E:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_19
    new-instance p1, Lcom/ironsource/a4;

    const/16 p2, 0x202

    invoke-direct {p1, p2, v0}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "onPause()"

    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/environment/ContextProvider;->onPause(Landroid/app/Activity;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    goto :goto_1a

    :catchall_12
    move-exception p1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method

.method public declared-synchronized a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a()Lcom/ironsource/mediationsdk/demandOnly/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->c()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_39

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-eqz p2, :cond_37

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/e1;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lcom/ironsource/e1;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_99

    :cond_37
    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/p;->S(Lcom/ironsource/mediationsdk/s$d;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/e1;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lcom/ironsource/e1;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_99

    monitor-exit p0

    return-void

    :cond_5b
    :try_start_5b
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->m0(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z

    move-result p1
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_99

    if-eqz p1, :cond_6a

    monitor-exit p0

    return-void

    :cond_6a
    :try_start_6a
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->d1()Z

    move-result p1

    if-nez p1, :cond_8a

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "No banner configurations found"

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/e1;

    move-result-object p1

    const-string p2, "the server response does not contain banner data"

    const-string v0, "Banner"

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/ironsource/e1;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_88
    .catchall {:try_start_6a .. :try_end_88} :catchall_99

    monitor-exit p0

    return-void

    :cond_8a
    :try_start_8a
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->v0(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z

    move-result p1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_99

    if-eqz p1, :cond_92

    monitor-exit p0

    return-void

    :cond_92
    :try_start_92
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->k0:Lcom/ironsource/mediationsdk/demandOnly/c;

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/demandOnly/c;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_99

    monitor-exit p0

    return-void

    :catchall_99
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Z)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a()Lcom/ironsource/mediationsdk/demandOnly/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->c()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_42

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-eqz p2, :cond_40

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/e1;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lcom/ironsource/e1;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_a2

    :cond_40
    monitor-exit p0

    return-void

    :cond_42
    :try_start_42
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/p;->S(Lcom/ironsource/mediationsdk/s$d;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    if-eqz v1, :cond_64

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/e1;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lcom/ironsource/e1;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_a2

    monitor-exit p0

    return-void

    :cond_64
    :try_start_64
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->m0(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z

    move-result p1
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_a2

    if-eqz p1, :cond_73

    monitor-exit p0

    return-void

    :cond_73
    :try_start_73
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->d1()Z

    move-result p1

    if-nez p1, :cond_93

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "No banner configurations found"

    invoke-virtual {p1, p4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/e1;

    move-result-object p1

    const-string p2, "the server response does not contain banner data"

    const-string p4, "Banner"

    invoke-static {p2, p4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/ironsource/e1;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_91
    .catchall {:try_start_73 .. :try_end_91} :catchall_a2

    monitor-exit p0

    return-void

    :cond_93
    :try_start_93
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->v0(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z

    move-result p1
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_a2

    if-eqz p1, :cond_9b

    monitor-exit p0

    return-void

    :cond_9b
    :try_start_9b
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->k0:Lcom/ironsource/mediationsdk/demandOnly/c;

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/demandOnly/c;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_a2

    monitor-exit p0

    return-void

    :catchall_a2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b()Lcom/ironsource/mediationsdk/demandOnly/h$d;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->r0:Lcom/ironsource/u5;

    invoke-interface {v0, p2}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->b0(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p3

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Z)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b()Lcom/ironsource/mediationsdk/demandOnly/h$d;

    move-result-object p1

    iget-object p3, p0, Lcom/ironsource/mediationsdk/p;->s0:Lcom/ironsource/u5;

    invoke-interface {p3, p2}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->c0(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 14

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const-string v0, "Init Failed - provided context is null"

    invoke-static {p1, v0}, Lcom/ironsource/d8;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string p1, "Provided context is null"

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/p;->d(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1da

    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1f

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/p;->C0(Landroid/app/Activity;)V

    :cond_1f
    if-eqz p4, :cond_23

    iput-object p4, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

    :cond_23
    iget-object p4, p0, Lcom/ironsource/mediationsdk/p;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p4, :cond_1b7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p4

    if-eqz p4, :cond_1b7

    if-eqz p5, :cond_70

    array-length p4, p5

    if-nez p4, :cond_35

    goto :goto_70

    :cond_35
    array-length p4, p5

    const/4 v3, 0x0

    :goto_37
    if-ge v3, p4, :cond_8a

    aget-object v4, p5, v3

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->A:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    :cond_4f
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    :cond_59
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->L:Z

    :cond_63
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_70
    :goto_70
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p4

    array-length v3, p4

    const/4 v4, 0x0

    :goto_76
    if-ge v4, v3, :cond_82

    aget-object v5, p4, v4

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    :cond_82
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->L:Z

    :cond_8a
    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->b1(Ljava/lang/String;)Lcom/ironsource/f2;

    move-result-object p4

    invoke-virtual {p4}, Lcom/ironsource/f2;->b()Z

    move-result v3

    if-eqz v3, :cond_b1

    iput-object p2, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    :cond_b1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/ironsource/mediationsdk/p;->T(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v3

    if-eqz v3, :cond_c8

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/j0;->e()Lcom/ironsource/o0;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/p;->g0(Lcom/ironsource/o0;)V

    :cond_c8
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/environment/ContextProvider;->updateAppContext(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->e:Lcom/ironsource/e5$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/ironsource/l3;->a:Lcom/ironsource/l3;

    invoke-virtual {v6}, Lcom/ironsource/l3;->d()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Lcom/ironsource/e5$a;->a(Landroid/content/Context;J)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/z7;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {}, Lcom/ironsource/o5;->a()Lcom/ironsource/p5;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/z7;->a(Lcom/ironsource/p5;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isGooglePlayInstalled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ironsource/z7;->b(Z)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {}, Lcom/ironsource/o;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ironsource/z7;->a(I)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->I0()V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->E()V

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->E0(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    if-nez v3, :cond_159

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/s;->q()V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_133

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/va;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_133
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_146

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-virtual {p4}, Lcom/ironsource/f2;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/y8;->a(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_146
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p4}, Lcom/ironsource/f2;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_157
    .catchall {:try_start_15 .. :try_end_157} :catchall_1da

    monitor-exit p0

    return-void

    :cond_159
    :try_start_159
    iget-object p4, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-virtual {p4, p1}, Lcom/ironsource/z7;->a(Landroid/content/Context;)V

    iget-object p4, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    invoke-virtual {p4, v3}, Lcom/ironsource/z7;->b(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->w:Ljava/lang/String;

    invoke-virtual {p4, v3}, Lcom/ironsource/z7;->g(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/ironsource/z7;->f(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    if-eqz p4, :cond_19d

    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p5, :cond_193

    array-length v3, p5

    const/4 v4, 0x0

    :goto_185
    if-ge v4, v3, :cond_193

    aget-object v5, p5, v4
    :try_end_189
    .catchall {:try_start_159 .. :try_end_189} :catchall_1da

    :try_start_189
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_190} :catch_190
    .catchall {:try_start_189 .. :try_end_190} :catchall_1da

    :catch_190
    add-int/lit8 v4, v4, 0x1

    goto :goto_185

    :cond_193
    :try_start_193
    iget v3, p0, Lcom/ironsource/mediationsdk/p;->E:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/ironsource/mediationsdk/p;->E:I

    invoke-direct {p0, v0, p3, v3, p4}, Lcom/ironsource/mediationsdk/p;->k0(ZZILorg/json/JSONObject;)V

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    :cond_19d
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/ironsource/mediationsdk/s;->a(Lcom/ironsource/ba;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/mediationsdk/p;->l0:Lcom/ironsource/l4;

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/s;->a(Lcom/ironsource/ba;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/mediationsdk/p;->o:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/ironsource/mediationsdk/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_1d8

    :cond_1b7
    if-eqz p5, :cond_1ce

    invoke-direct {p0, v0, p3, p5}, Lcom/ironsource/mediationsdk/p;->l0(ZZ[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/s$d;->d:Lcom/ironsource/mediationsdk/s$d;

    if-ne p1, p2, :cond_1d8

    if-nez p3, :cond_1d8

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->B()V

    goto :goto_1d8

    :cond_1ce
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Multiple calls to init without ad units are not allowed"

    const/4 p4, 0x3

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1d8
    .catchall {:try_start_193 .. :try_end_1d8} :catchall_1da

    :cond_1d8
    :goto_1d8
    monitor-exit p0

    return-void

    :catchall_1da
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p3, :cond_8a

    array-length v2, p3

    if-nez v2, :cond_e

    goto/16 :goto_8a

    :cond_e
    array-length v2, p3

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_bd

    aget-object v4, p3, v3

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ad unit cannot be initialized in demand only mode"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v4, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_87

    :cond_36
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    if-eqz v5, :cond_46

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/p;->Z(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_51

    :cond_46
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    :goto_51
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    if-eqz v5, :cond_61

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/p;->Z(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_6c

    :cond_61
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    :goto_6c
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    if-eqz v5, :cond_7c

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/p;->Z(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_87

    :cond_7c
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->H:Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_8a
    :goto_8a
    iget-boolean p3, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    if-eqz p3, :cond_94

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->Z(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_9b

    :cond_94
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9b
    iget-boolean p3, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    if-eqz p3, :cond_a5

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->Z(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_ac

    :cond_a5
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_ac
    iget-boolean p3, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    if-eqz p3, :cond_b6

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->Z(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_bd

    :cond_b6
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->H:Z

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bd
    :goto_bd
    if-eqz p1, :cond_d4

    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_c9

    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->C0(Landroid/app/Activity;)V

    :cond_c9
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/ironsource/environment/ContextProvider;->updateAppContext(Landroid/content/Context;)V

    :cond_d4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_ef

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_ef
    .catchall {:try_start_1 .. :try_end_ef} :catchall_f1

    :cond_ef
    monitor-exit p0

    return-void

    :catchall_f1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->x:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->y:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->b0:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/q1;->a(Landroid/content/Context;Z)V

    goto :goto_1b

    :cond_14
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/y;->a(Landroid/content/Context;Z)V

    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->a0:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/q1;->a(Landroid/content/Context;Z)V

    goto :goto_2e

    :cond_27
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    if-eqz v0, :cond_2e

    invoke-interface {v0, p1, p2}, Lcom/ironsource/n5;->a(Landroid/content/Context;Z)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/dc;)V
    .registers 4

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->o0:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p2}, Lcom/ironsource/q1;->a(Lcom/ironsource/dc;)V

    :cond_f
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2}, Lcom/ironsource/q1;->a(Lcom/ironsource/dc;)V

    :cond_1a
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_25

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    if-eqz p1, :cond_25

    invoke-virtual {p1, p2}, Lcom/ironsource/q1;->a(Lcom/ironsource/dc;)V

    :cond_25
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/WaterfallConfiguration;)V
    .registers 8

    if-nez p1, :cond_a

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "AdUnit should not be null."

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-nez p2, :cond_1c

    const-string v4, "NULL"

    goto :goto_20

    :cond_1c
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/WaterfallConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_20
    aput-object v4, v1, v2

    const-string v2, "(%s, %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/ironsource/a4;

    const/16 v2, 0x35

    invoke-direct {v1, v2, v0}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    if-nez p2, :cond_3b

    const-string v0, ""

    goto :goto_3f

    :cond_3b
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/WaterfallConfiguration;->toJsonString()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    const-string v2, "ext1"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/z7;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/WaterfallConfiguration;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :try_start_a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->d0:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Lcom/ironsource/h1;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    goto :goto_26

    :cond_16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/mediationsdk/w;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/w;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1e

    goto :goto_26

    :catchall_1e
    move-exception p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placementName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->H:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_34

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "Banner was initialized in demand only mode. Use loadISDemandOnlyBanner instead"

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v1, "Banner"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_34
    if-eqz p1, :cond_13b

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto/16 :goto_13b

    :cond_3e
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    if-nez v0, :cond_59

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "init() must be called before loadBanner()"

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_59
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v0

    if-lez v0, :cond_7d

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v0

    if-gtz v0, :cond_96

    :cond_7d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "loadBanner: Unsupported banner size. Height and width must be bigger than 0"

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v0, ""

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_96
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    const-string v3, "Init() had failed"

    const-string v4, "init() had failed"

    if-ne v0, v2, :cond_be

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p1, p2, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x258

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_be
    sget-object v2, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    if-ne v0, v2, :cond_ed

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->d()Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p1, p2, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x259

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_ec

    :cond_e4
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->N:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/lang/String;

    :goto_ec
    return-void

    :cond_ed
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->d1()Z

    move-result v0

    if-nez v0, :cond_10f

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "No banner configurations found"

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x267

    const-string v2, "the server response does not contain banner data"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_10f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/mediationsdk/w;

    if-nez v0, :cond_120

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    if-nez v1, :cond_120

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->N:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/lang/String;

    return-void

    :cond_120
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->d0:Z

    if-eqz v1, :cond_133

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    new-instance v1, Lcom/ironsource/mediationsdk/model/Placement;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->L0(Ljava/lang/String;)Lcom/ironsource/m1;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/ironsource/mediationsdk/model/Placement;-><init>(Lcom/ironsource/mediationsdk/model/BasePlacement;)V

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/h1;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void

    :cond_133
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->L0(Ljava/lang/String;)Lcom/ironsource/m1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/w;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/m1;)V

    return-void

    :cond_13b
    :goto_13b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadBanner can\'t be called - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_14a

    const-string p1, "banner layout is null "

    goto :goto_14c

    :cond_14a
    const-string p1, "banner layout is destroyed"

    :goto_14c
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/ironsource/q1;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_9
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lcom/ironsource/m5;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_10
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lcom/ironsource/q1;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/m;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/mediationsdk/w;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/m;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_25
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, p1}, Lcom/ironsource/q1;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_2c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->p0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_33
    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {p1, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {p1, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    sget-object p1, Lcom/ironsource/ka;->P:Lcom/ironsource/ka;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {p1, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->r0:Lcom/ironsource/u5;

    invoke-interface {v0, p1}, Lcom/ironsource/u5;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->s0:Lcom/ironsource/u5;

    invoke-interface {v0, p1}, Lcom/ironsource/u5;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .registers 5

    const-string v0, "removeImpressionDataListener - listener is null"

    invoke-static {p1, v0}, Lcom/ironsource/d8;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/o8;->b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lcom/ironsource/m5;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    :cond_17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/m;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/mediationsdk/w;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/m;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    :cond_25
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove impression data listener from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setLogListener(LogListener:null)"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_37

    :cond_d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->j:Lcom/ironsource/mediationsdk/logger/b;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/b;->a(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLogListener(LogListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_37
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    if-nez p1, :cond_a

    const-string v3, "setInterstitialListener(ISListener:null)"

    goto :goto_c

    :cond_a
    const-string v3, "setInterstitialListener(ISListener)"

    :goto_c
    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-virtual {v0, p1}, Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez p1, :cond_a

    const-string v1, "ISListener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    :goto_d
    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;)V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez p1, :cond_a

    const-string v1, "RVListener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    :goto_d
    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_b

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "RVListener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_10

    :cond_b
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    :goto_10
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    if-nez v0, :cond_29

    if-nez p1, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Disabling rewarded video manual mode"

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_29

    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Enabling rewarded video manual mode"

    goto :goto_1d

    :cond_29
    :goto_29
    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    if-nez p1, :cond_a

    const-string v3, "setOfferwallListener(OWListener:null)"

    goto :goto_c

    :cond_a
    const-string v3, "setOfferwallListener(OWListener)"

    :goto_c
    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-virtual {v0, p1}, Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    if-nez p1, :cond_a

    const-string v3, "setRewardedVideoListener(RVListener:null)"

    goto :goto_c

    :cond_a
    const-string v3, "setRewardedVideoListener(RVListener)"

    :goto_c
    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-virtual {v0, p1}, Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_b

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "RVListener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_10

    :cond_b
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    :goto_10
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    if-nez v0, :cond_29

    if-nez p1, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Disabling rewarded video manual mode"

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_29

    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Enabling rewarded video manual mode"

    goto :goto_1d

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-virtual {v0, p1}, Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->s0:Lcom/ironsource/u5;

    invoke-interface {v1, p1}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_67

    :try_start_1f
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    const/16 v3, 0x1fc

    if-nez v2, :cond_34

    const-string v2, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_4b
    .catchall {:try_start_1f .. :try_end_32} :catchall_67

    monitor-exit p0

    return-void

    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->j0:Lcom/ironsource/mediationsdk/demandOnly/k;

    if-nez v2, :cond_47

    const-string v2, "Rewarded video was not initiated"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_4b
    .catchall {:try_start_34 .. :try_end_45} :catchall_67

    monitor-exit p0

    return-void

    :cond_47
    :try_start_47
    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/demandOnly/k;->b(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b
    .catchall {:try_start_47 .. :try_end_4a} :catchall_67

    goto :goto_65

    :catch_4b
    move-exception v0

    :try_start_4c
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz v1, :cond_65

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1fe

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_67

    :cond_65
    :goto_65
    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->checkMetaDataKeyValidity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->checkMetaDataValueValidity(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_34

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3e

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_3e
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatMetaData(Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/mediationsdk/metadata/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/metadata/MetaData;->getMetaDataKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/metadata/MetaData;->getMetaDataValue()Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isMediationOnlyKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/s$d;->d:Lcom/ironsource/mediationsdk/s$d;

    if-ne v3, v4, :cond_7c

    invoke-static {v2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isMediationKeysBeforeInit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMetaData with key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must to be called before init"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_8b

    :cond_7c
    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/o8;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8b

    :cond_84
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/c;->a(Ljava/lang/String;Ljava/util/List;)V

    :goto_8b
    :try_start_8b
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/c;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/o8;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ab

    :cond_c5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-virtual {v0, v2}, Lcom/ironsource/z7;->a(Lorg/json/JSONObject;)V
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_ca} :catch_cb

    goto :goto_e9

    :catch_cb
    move-exception v0

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got the following error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e9
    invoke-static {p1, p2, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForMetaData(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/s$d;->d:Lcom/ironsource/mediationsdk/s$d;

    if-ne p2, v0, :cond_fc

    const/16 p2, 0x33

    goto :goto_fe

    :cond_fc
    const/16 p2, 0x32

    :goto_fe
    new-instance v0, Lcom/ironsource/a4;

    invoke-direct {v0, p2, p1}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "setAdRevenueData - impressionData is null"

    invoke-static {p2, v0}, Lcom/ironsource/d8;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "setAdRevenueData - dataSource is null"

    invoke-static {p1, v0}, Lcom/ironsource/d8;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l0:Lcom/ironsource/l4;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/l4;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/util/List;ZLcom/ironsource/g2;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z",
            "Lcom/ironsource/g2;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    :try_start_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->j:Lcom/ironsource/mediationsdk/logger/b;

    invoke-virtual {p3}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/j0;->g()Lcom/ironsource/q0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/q0;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/b;->a(Z)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->u:Z

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "onInitSuccess()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string v1, "init success"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_48

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_e3

    :try_start_30
    const-string v2, "revived"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_e3

    goto :goto_3a

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3a
    new-instance v0, Lcom/ironsource/a4;

    const/16 v2, 0x72

    invoke-direct {v0, v2, p2}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    :cond_48
    invoke-virtual {p3}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/j0;->e()Lcom/ironsource/o0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/o0;->b()I

    move-result p2

    if-ltz p2, :cond_5e

    new-instance p3, Lcom/ironsource/m2;

    invoke-direct {p3}, Lcom/ironsource/m2;-><init>()V

    invoke-virtual {p3, p2}, Lcom/ironsource/m2;->a(I)V

    :cond_5e
    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/u1;->h()V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/u1;->h()V

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/ironsource/mediationsdk/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_81
    if-ge v0, p3, :cond_9d

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/p;->t0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_9a

    :cond_97
    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_9a
    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    :cond_9d
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->Z0()Z

    move-result p1

    if-eqz p1, :cond_df

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->F()Z

    move-result p1

    if-eqz p1, :cond_df

    new-instance v4, Lcom/ironsource/n;

    invoke-direct {v4}, Lcom/ironsource/n;-><init>()V

    new-instance p1, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->q()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/j0;->g()Lcom/ironsource/q0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/q0;->a()I

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/n;I)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->p0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz p2, :cond_df

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_df
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->B()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_e2} :catch_e3

    goto :goto_e7

    :catch_e3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e7
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ")"

    const-string v1, ":setRewardedVideoServerParameters(params:"

    if-eqz p1, :cond_5b

    :try_start_6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5b

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/p;->r:Ljava/util/Map;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_38

    goto :goto_5b

    :catch_38
    move-exception v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public a(Z)V
    .registers 6

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdaptersDebug : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/c;->a(Z)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "createBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const/4 p2, 0x3

    const-string v0, "createBanner() : Activity cannot be null"

    invoke-virtual {p1, v1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    :cond_16
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->d:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    :cond_d
    const-string p1, ""

    return-object p1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->r:Ljava/util/Map;

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "onResume()"

    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/environment/ContextProvider;->onResume(Landroid/app/Activity;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    goto :goto_1a

    :catchall_12
    move-exception p1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method

.method public declared-synchronized b(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b()Lcom/ironsource/mediationsdk/demandOnly/h$d;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->s0:Lcom/ironsource/u5;

    invoke-interface {v0, p2}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->c0(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Z)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b()Lcom/ironsource/mediationsdk/demandOnly/h$d;

    move-result-object p1

    iget-object p3, p0, Lcom/ironsource/mediationsdk/p;->r0:Lcom/ironsource/u5;

    invoke-interface {p3, p2}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->b0(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .registers 5

    const-string v0, "addImpressionDataListener - listener is null"

    invoke-static {p1, v0}, Lcom/ironsource/d8;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/o8;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/n5;

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lcom/ironsource/m5;->b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    :cond_17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/y;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/m;->b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/mediationsdk/w;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/m;->b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    :cond_25
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add impression data listener to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDemandOnlyInterstitial() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->r0:Lcom/ironsource/u5;

    invoke-interface {v0, p1}, Lcom/ironsource/u5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    :try_start_21
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    const/16 v2, 0x1fc

    if-nez v1, :cond_37

    const-string v1, "Interstitial was initialized in mediation mode. Use showInterstitial instead"

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v3}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_37
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->i0:Lcom/ironsource/mediationsdk/demandOnly/f;

    if-nez v1, :cond_4b

    const-string v1, "Interstitial was not initiated"

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v3}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_4b
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/demandOnly/f;->a(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4e} :catch_4f

    goto :goto_66

    :catch_4f
    move-exception v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz v0, :cond_66

    const-string v1, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " networkData = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Z)V
    .registers 7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->P:Ljava/lang/Boolean;

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConsent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/c;->b(Z)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->f:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offerwall | setConsent(consent:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->f:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    :cond_4e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-virtual {v0, p1}, Lcom/ironsource/z7;->a(Z)V

    if-eqz p1, :cond_58

    const/16 p1, 0x28

    goto :goto_5a

    :cond_58
    const/16 p1, 0x29

    :goto_5a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/ironsource/a4;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method

.method public c()V
    .registers 7

    const-string v0, "Offerwall"

    const-string v1, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v2, "showOfferwall()"

    :try_start_6
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->x()Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/y8;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_1e
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/g2;->f()Lcom/ironsource/w9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/w9;->a()Lcom/ironsource/x9;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/p;->j(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    goto :goto_47

    :catch_36
    move-exception v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/y8;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .registers 8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "showInterstitial()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v0, 0x1fe

    const/4 v3, 0x0

    :try_start_d
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    if-eqz v4, :cond_26

    const-string p1, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v1, p1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object v1

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v4, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->j()Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object p1

    const-string v1, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v4, "Interstitial"

    invoke-static {v1, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_3c
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->M0()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/ironsource/mediationsdk/p;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_73

    :cond_4a
    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object p1

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x3fc

    const-string v5, "showInterstitial error: empty default placement in response"

    invoke-direct {v1, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5a} :catch_5b

    goto :goto_73

    :catch_5b
    move-exception p1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v4, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :goto_73
    return-void
.end method

.method public c(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInterstitial("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v1, 0x1fe

    const/4 v3, 0x0

    :try_start_21
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    if-eqz v4, :cond_3a

    const-string p1, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const/4 v4, 0x3

    invoke-virtual {p2, v2, p1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object p2

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v2, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_3a
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->j()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object p1

    const-string p2, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v2, "Interstitial"

    invoke-static {p2, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_50
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->A0(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_53} :catch_54

    goto :goto_6c

    :catch_54
    move-exception p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p2, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0, v3}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :goto_6c
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->k0:Lcom/ironsource/mediationsdk/demandOnly/c;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/c;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1c

    :catchall_12
    move-exception p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyISDemandOnlyBanner()"

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method c0(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    .registers 10

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    const/16 v2, 0x1fe

    :try_start_1c
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->I:Z

    if-nez v3, :cond_2e

    const-string p1, "initISDemandOnly() must be called before loadDemandOnlyRewardedVideo()"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_2e
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    if-nez v3, :cond_40

    const-string p1, "Rewarded video was initialized in mediation mode"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_40
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    if-ne v3, v4, :cond_5d

    const-string p1, "init() had failed"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "init() had failed"

    const-string v1, "Rewarded Video"

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_5d
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$d;->c()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8a

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    const/16 v6, 0x424

    if-ne v3, v6, :cond_7f

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    const v3, 0x13da9

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    :cond_7f
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-interface {p2, v0, v4}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_8a
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$d;->e()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/p;->C0(Landroid/app/Activity;)V

    sget-object v4, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    const v6, 0x1443a

    if-ne v3, v4, :cond_da

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/s;->d()Z

    move-result v3

    if-eqz v3, :cond_b3

    const-string p1, "init() had failed"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "init() had failed"

    const-string v1, "Rewarded Video"

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_d6

    :cond_b3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_b6
    .catchall {:try_start_1c .. :try_end_b6} :catchall_121

    :try_start_b6
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_d7

    :try_start_bc
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V
    :try_end_d6
    .catchall {:try_start_bc .. :try_end_d6} :catchall_121

    :cond_d6
    :goto_d6
    return-void

    :catchall_d7
    move-exception p1

    :try_start_d8
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    :try_start_d9
    throw p1

    :cond_da
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->z()Z

    move-result v3

    if-nez v3, :cond_f1

    const-string p1, "No rewarded video configurations found"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "the server response does not contain rewarded video data"

    const-string v1, "Rewarded Video"

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_f1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_f4
    .catchall {:try_start_d9 .. :try_end_f4} :catchall_121

    :try_start_f4
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->j0:Lcom/ironsource/mediationsdk/demandOnly/k;

    if-nez v3, :cond_119

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_117

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/ironsource/mediationsdk/p;->r0(ILorg/json/JSONObject;)V

    :cond_117
    monitor-exit v1

    return-void

    :cond_119
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_f4 .. :try_end_11a} :catchall_11e

    :try_start_11a
    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/demandOnly/k;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_121

    goto :goto_137

    :catchall_11e
    move-exception p1

    :try_start_11f
    monitor-exit v1
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    :try_start_120
    throw p1
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_121

    :catchall_121
    move-exception p1

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_137
    return-void
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "removeRewardedVideoListener()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .registers 6

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->y()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p1

    const-string v0, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v3, "Rewarded Video"

    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p1, v2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->N0()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    if-nez v0, :cond_3d

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showRewardedVideo error: empty default placement in response"

    invoke-virtual {p1, v0, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x3fd

    invoke-direct {p1, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    goto :goto_44

    :cond_3d
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/p;->f(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 12

    sget-object v0, Lcom/ironsource/yb;->a:Lcom/ironsource/yb;

    invoke-virtual {v0}, Lcom/ironsource/yb;->b()V

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->u:Z

    if-nez v1, :cond_16

    const/16 p1, 0x6b9

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->a(I)V

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "TestSuite cannot be launched, SDK not initialized"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/p;->w0(Lcom/ironsource/mediationsdk/utils/c;)Z

    move-result v1

    if-nez v1, :cond_2b

    const/16 p1, 0x6ba

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->a(I)V

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "TestSuite cannot be launched, Please contact your account manager to enable it"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3e

    const/16 p1, 0x6bd

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->a(I)V

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "TestSuite cannot be launched, No network connectivity"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    :cond_3e
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/m7;

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/ironsource/q1;->F()V

    :cond_45
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/za;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/ironsource/q1;->F()V

    :cond_4c
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/ironsource/q1;->F()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->V:Lcom/ironsource/h1;

    invoke-virtual {v1}, Lcom/ironsource/h1;->K()V

    :cond_58
    new-instance v2, Lcom/ironsource/zb;

    invoke-direct {v2}, Lcom/ironsource/zb;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->g()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->h()Lcom/ironsource/ic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/ic;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->K0()Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p0, Lcom/ironsource/mediationsdk/p;->Y:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/ironsource/zb;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->o0:Z

    invoke-virtual {v0}, Lcom/ironsource/yb;->c()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitFailed(reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string p1, "Mediation init failed"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/p;->a0(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_2d

    :catch_3d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_41
    return-void
.end method

.method d0(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/s;->a(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    :cond_10
    return-void
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "removeOfferwallListener()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .registers 10

    const-string v0, ")"

    const-string v1, ":setDynamicUserId(dynamicUserId:"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    new-instance v3, Lcom/ironsource/f2;

    invoke-direct {v3}, Lcom/ironsource/f2;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/ironsource/mediationsdk/p;->h0(Ljava/lang/String;Lcom/ironsource/f2;)V

    invoke-virtual {v3}, Lcom/ironsource/f2;->b()Z

    move-result v4

    if-eqz v4, :cond_47

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->q:Ljava/lang/String;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForUserId(Z)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/ironsource/a4;

    const/16 v5, 0x34

    invoke-direct {v4, v5, v3}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return v6

    :cond_47
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ironsource/f2;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v3, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_57} :catch_58

    return v2

    :catch_58
    move-exception v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/p;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public f()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "removeInterstitialListener()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/y8;->a(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    invoke-static {}, Lcom/ironsource/x5;->a()Lcom/ironsource/x5;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/x5;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V

    return-void
.end method

.method public f(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRewardedVideo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v1, 0x0

    :try_start_1f
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->F:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_21} :catch_51

    const-string v4, "Rewarded Video"

    if-eqz v3, :cond_39

    :try_start_25
    const-string p1, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead"

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const/4 v3, 0x3

    invoke-virtual {p2, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p2

    invoke-static {p1, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->y()Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p1

    const-string p2, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    invoke-static {p2, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_4d
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->D0(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_50} :catch_51

    goto :goto_6b

    :catch_51
    move-exception p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p2, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/ironsource/va;->a()Lcom/ironsource/va;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x1fe

    invoke-direct {v0, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/ironsource/va;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :goto_6b
    return-void
.end method

.method public declared-synchronized f(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->i0:Lcom/ironsource/mediationsdk/demandOnly/f;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/f;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->P0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_36

    if-nez v0, :cond_14

    :try_start_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->M0()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    :cond_14
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_37

    goto :goto_37

    :catch_36
    const/4 v0, 0x0

    :catch_37
    :goto_37
    return-object v0
.end method

.method g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->H:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public getOfferwallCredits()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "getOfferwallCredits()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->g:Lcom/ironsource/mediationsdk/v;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/v;->getOfferwallCredits()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_18

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v3, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->L:Z

    if-nez v0, :cond_7

    const-string v0, "init() must be called first"

    goto :goto_2c

    :cond_7
    invoke-static {}, Lcom/ironsource/mediationsdk/s;->c()Lcom/ironsource/mediationsdk/s;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/p$b;->b:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->a()Lcom/ironsource/mediationsdk/s$d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_20

    const-string v0, ""

    goto :goto_2c

    :cond_20
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/s;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2a

    :cond_27
    const-string v0, "init() not finished yet"

    goto :goto_2c

    :cond_2a
    :goto_2a
    const-string v0, "init() had failed"

    :goto_2c
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->v()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v0, "No Native Ad configurations found"

    :cond_3a
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 9

    const-string v0, ")"

    const-string v1, ":setMediationType(mediationType:"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v2, 0x40

    invoke-direct {p0, p1, v5, v2}, Lcom/ironsource/mediationsdk/p;->n0(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->a1(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->m0:Lcom/ironsource/z7;

    invoke-virtual {v2, p1}, Lcom/ironsource/z7;->d(Ljava/lang/String;)V

    goto :goto_60

    :cond_39
    const-string v2, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_40} :catch_41

    goto :goto_60

    :catch_41
    move-exception v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_60
    return-void
.end method

.method public i()Lcom/ironsource/l9;
    .registers 9

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->h()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->V(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3a

    new-instance v0, Lcom/ironsource/l9;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->e()Lcom/ironsource/h9;

    move-result-object v3

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ironsource/o8;->b()Lcom/ironsource/o8;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->C:Lcom/ironsource/mediationsdk/IronSourceSegment;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->k()Z

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/l9;-><init>(Ljava/util/List;Lcom/ironsource/h9;Ljava/lang/String;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V

    goto :goto_5d

    :cond_3a
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v2

    new-array v3, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v0

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/p;->i0(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1495a

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/p;->W(ILorg/json/JSONObject;)V

    const/4 v0, 0x0

    :goto_5d
    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->S0(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_36

    if-nez v0, :cond_14

    :try_start_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->N0()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    :cond_14
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_37

    goto :goto_37

    :catch_36
    const/4 v0, 0x0

    :catch_37
    :goto_37
    return-object v0
.end method

.method public isOfferwallAvailable()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->g:Lcom/ironsource/mediationsdk/v;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/v;->isOfferwallAvailable()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 8

    const-string v0, "Offerwall"

    const-string v1, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showOfferwall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :try_start_22
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->x()Z

    move-result v3

    if-nez v3, :cond_32

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ironsource/y8;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_32
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/g2;->f()Lcom/ironsource/w9;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/w9;->a(Ljava/lang/String;)Lcom/ironsource/x9;

    move-result-object p1

    if-nez p1, :cond_62

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, p1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g2;->f()Lcom/ironsource/w9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/w9;->a()Lcom/ironsource/x9;

    move-result-object p1

    if-nez p1, :cond_62

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v3, v4, p1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_62
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->g:Lcom/ironsource/mediationsdk/v;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/v;->j(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6b} :catch_6c

    goto :goto_7d

    :catch_6c
    move-exception p1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/y8;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/y8;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_7d
    return-void
.end method

.method public k()Lcom/ironsource/mediationsdk/utils/c;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    return-object v0
.end method

.method public declared-synchronized k(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->j0:Lcom/ironsource/mediationsdk/demandOnly/k;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/k;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->q:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/ironsource/n9;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->e()Lcom/ironsource/h9;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return-object p1

    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/ironsource/h9;->e()Lcom/ironsource/n9;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-virtual {v0, p1}, Lcom/ironsource/h9;->a(Ljava/lang/String;)Lcom/ironsource/n9;

    move-result-object p1

    if-eqz p1, :cond_20

    return-object p1

    :cond_20
    invoke-virtual {v0}, Lcom/ironsource/h9;->e()Lcom/ironsource/n9;

    move-result-object p1

    return-object p1
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->o:Ljava/lang/String;

    return-object v0
.end method

.method q0(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/mediationsdk/utils/c;
    .registers 10

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    if-eqz v1, :cond_e

    new-instance p1, Lcom/ironsource/mediationsdk/utils/c;

    invoke-direct {p1, v1}, Lcom/ironsource/mediationsdk/utils/c;-><init>(Lcom/ironsource/mediationsdk/utils/c;)V

    monitor-exit v0

    return-object p1

    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/p;->U(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/c;->m()Z

    move-result v2

    if-nez v2, :cond_6c

    :cond_1b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Null or invalid response. Trying to get cached response"

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/ironsource/mediationsdk/p;->T(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object p3

    if-eqz p3, :cond_6c

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v2, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v2, Lcom/ironsource/a4;

    const/16 v3, 0x8c

    invoke-direct {v2, v3, p2}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    :cond_6c
    if-eqz p3, :cond_8f

    iput-object p3, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->m:Lcom/ironsource/mediationsdk/utils/c;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/p;->u0(Lcom/ironsource/mediationsdk/utils/c;Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/u1;->c(Z)V

    invoke-static {}, Lcom/ironsource/cb;->i()Lcom/ironsource/cb;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/u1;->c(Z)V

    sget-object p1, Lcom/ironsource/ka;->P:Lcom/ironsource/ka;

    invoke-virtual {p1, v1}, Lcom/ironsource/u1;->c(Z)V

    :cond_8f
    monitor-exit v0

    return-object p3

    :catchall_91
    move-exception p1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_91

    throw p1
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->r:Ljava/util/Map;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->w:Ljava/lang/String;

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.p.a (com.ironsource.mediationsdk.p$a)
.class Lcom/ironsource/mediationsdk/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/events/ISErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/p;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/p;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/p;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p$a;->a:Lcom/ironsource/mediationsdk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.mediationsdk.p.b (com.ironsource.mediationsdk.p$b)
.class synthetic Lcom/ironsource/mediationsdk/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/b$b;->values()[Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/mediationsdk/p$b;->c:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/ironsource/mediationsdk/utils/b$b;->a:Lcom/ironsource/mediationsdk/utils/b$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/ironsource/mediationsdk/p$b;->c:[I

    sget-object v3, Lcom/ironsource/mediationsdk/utils/b$b;->b:Lcom/ironsource/mediationsdk/utils/b$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/ironsource/mediationsdk/p$b;->c:[I

    sget-object v4, Lcom/ironsource/mediationsdk/utils/b$b;->c:Lcom/ironsource/mediationsdk/utils/b$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/ironsource/mediationsdk/p$b;->c:[I

    sget-object v5, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    invoke-static {}, Lcom/ironsource/mediationsdk/s$d;->values()[Lcom/ironsource/mediationsdk/s$d;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/ironsource/mediationsdk/p$b;->b:[I

    :try_start_3c
    sget-object v5, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v4, Lcom/ironsource/mediationsdk/p$b;->b:[I

    sget-object v5, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/ironsource/mediationsdk/p$b;->a:[I

    :try_start_57
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_5f
    sget-object v1, Lcom/ironsource/mediationsdk/p$b;->a:[I

    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v0, Lcom/ironsource/mediationsdk/p$b;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    :try_start_73
    sget-object v0, Lcom/ironsource/mediationsdk/p$b;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7d
    sget-object v0, Lcom/ironsource/mediationsdk/p$b;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_88} :catch_88

    :catch_88
    return-void
.end method

###### Class com.ironsource.mediationsdk.p.c (com.ironsource.mediationsdk.p$c)
.class public interface abstract Lcom/ironsource/mediationsdk/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

###### Class com.ironsource.mediationsdk.p.d (com.ironsource.mediationsdk.p$d)
.class Lcom/ironsource/mediationsdk/p$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field static volatile a:Lcom/ironsource/mediationsdk/p;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/mediationsdk/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/p;-><init>(Lcom/ironsource/mediationsdk/p$a;)V

    sput-object v0, Lcom/ironsource/mediationsdk/p$d;->a:Lcom/ironsource/mediationsdk/p;

    return-void
.end method
