###### Class com.json.w4 (com.ironsource.w4)
.class public Lcom/ironsource/w4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/w4$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/e5;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/w4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/w4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/l5;->c()Lcom/ironsource/e5;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/w4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/w4$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/w4;-><init>()V

    return-void
.end method

.method static a()Lcom/ironsource/w4;
    .registers 1

    sget-object v0, Lcom/ironsource/w4$b;->a:Lcom/ironsource/w4;

    return-object v0
.end method

.method static synthetic b(Lcom/ironsource/w4;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/w4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/w4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/ironsource/w4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/w4$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/w4$a;-><init>(Lcom/ironsource/w4;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    iget-object p1, p0, Lcom/ironsource/w4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_20
    return-void
.end method

.method static synthetic d(Lcom/ironsource/w4;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/w4;->n(Landroid/content/Context;)V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_1d

    if-nez p2, :cond_5

    goto :goto_1d

    :cond_5
    :try_start_5
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_13
    iget-object v0, p0, Lcom/ironsource/w4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private h(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/ironsource/w4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    return p1

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private m(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ironsource/w4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auid"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "make"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    const-string v1, "[^0-9/.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "osv"

    invoke-direct {p0, v2, v1}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "osvf"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_53
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apilvl"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    const-string v1, "carrier"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_73
    invoke-static {p1}, Lcom/ironsource/k0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "instlr"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_82
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    const-string v1, "dt"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bid"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->h(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mem"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tkv"

    const-string v1, "2.0"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/k0;->f(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tsu"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/k0;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tai"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/k0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apv"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/k2;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ptype"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/k2;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "simop"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/ja;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "stid"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private n(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "gaid"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lat"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    return-void
.end method

.method private o(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/ironsource/w4;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "asid"

    if-nez v1, :cond_18

    invoke-direct {p0, v2, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21

    :cond_18
    invoke-direct {p0, v2}, Lcom/ironsource/w4;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, v2}, Lcom/ironsource/w4;->j(Ljava/lang/String;)V

    :cond_21
    :goto_21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lang"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "tz"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4f
    invoke-static {p1}, Lcom/ironsource/l2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "connt"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_79

    invoke-static {p1}, Lcom/ironsource/l2;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vpn"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_79
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8a

    const-string v1, "icc"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8a
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->y(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_9b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "tca"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9b
    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcs"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcac"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->m(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "vol"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dfs"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scrnw"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scrnh"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ltime"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tzoff"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/k2;->b(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mcc"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/k2;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mnc"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sdcrd"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->G(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "chrg"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->l(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "chrgt"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "apm"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "owp"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "rt"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sscl"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->w(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bat"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->q(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lpm"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "apor"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/w4;->a:Lcom/ironsource/e5;

    invoke-interface {p1}, Lcom/ironsource/e5;->s()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ua"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected f(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/w4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_11
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_17

    :cond_2b
    invoke-direct {p0, p1, v0}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_33
    return-void
.end method

.method protected g(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_b

    :catch_25
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_29
    return-void
.end method

.method protected i(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ironsource/w4;->o(Landroid/content/Context;)V

    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ironsource/w4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/ironsource/y4;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method protected j(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/w4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/w4;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected l(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/w4;->m(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/ironsource/w4;->o(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-void
.end method
