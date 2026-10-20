###### Class com.json.q1 (com.ironsource.q1)
.class public abstract Lcom/ironsource/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/a0;
.implements Lcom/ironsource/t0;
.implements Lcom/ironsource/u;
.implements Lcom/ironsource/a9;
.implements Lcom/ironsource/s9;
.implements Lcom/ironsource/i;
.implements Lcom/ironsource/hd;
.implements Lcom/ironsource/y1;
.implements Lcom/ironsource/pa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/q1$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/t1<",
        "*>;",
        "Listener::Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ironsource/a0;",
        "Lcom/ironsource/t0;",
        "Lcom/ironsource/u;",
        "Lcom/ironsource/a9;",
        "Lcom/ironsource/s9;",
        "Lcom/ironsource/i;",
        "Lcom/ironsource/hd;",
        "Lcom/ironsource/y1;",
        "Lcom/ironsource/pa;"
    }
.end annotation


# instance fields
.field private A:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field private B:Lcom/ironsource/o8;

.field final C:Lcom/ironsource/z6;

.field final D:Lcom/ironsource/z6$a;

.field private E:Z

.field private F:Lcom/ironsource/dc;

.field private G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private H:Lcom/ironsource/x7;

.field protected a:Lcom/ironsource/gd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/gd<",
            "TSmash;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/h$a;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/ironsource/mediationsdk/e;

.field protected d:Lcom/ironsource/mediationsdk/h;

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Lorg/json/JSONObject;

.field protected h:Lcom/ironsource/d1;

.field protected i:Lcom/ironsource/mediationsdk/model/Placement;

.field protected j:Z

.field private k:Lcom/ironsource/environment/NetworkStateReceiver;

.field protected l:Lcom/ironsource/rb;

.field protected m:Lcom/ironsource/t3;

.field protected n:Lcom/ironsource/t3;

.field protected o:Lcom/ironsource/l;

.field protected p:Lcom/ironsource/q1$f;

.field protected q:Lcom/ironsource/z;

.field protected r:Lcom/ironsource/k4;

.field protected s:Lcom/ironsource/v;

.field protected t:Lcom/ironsource/x;

.field protected u:Lcom/ironsource/r;

.field protected v:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field protected w:Ljava/util/UUID;

.field protected final x:Ljava/lang/Object;

.field private y:J

.field private z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/ironsource/l;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/q1;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/q1;->j:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ironsource/q1;->y:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/ironsource/q1;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/q1;->w:Ljava/util/UUID;

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/l5;->d()Lcom/ironsource/z6;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/q1;->C:Lcom/ironsource/z6;

    invoke-static {}, Lcom/ironsource/e9;->g()Lcom/ironsource/k5;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/k5;->b()Lcom/ironsource/z6$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/q1;->D:Lcom/ironsource/z6$a;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", loading mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " initiated object per waterfall mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/t3;

    invoke-direct {v1}, Lcom/ironsource/t3;-><init>()V

    invoke-direct {p0, p1}, Lcom/ironsource/q1;->o(Lcom/ironsource/l;)Lcom/ironsource/x7;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/q1;->H:Lcom/ironsource/x7;

    iput-object p3, p0, Lcom/ironsource/q1;->v:Lcom/ironsource/mediationsdk/IronSourceSegment;

    iput-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    new-instance p3, Lcom/ironsource/v;

    invoke-virtual {p1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    sget-object v3, Lcom/ironsource/v$b;->a:Lcom/ironsource/v$b;

    invoke-direct {p3, v2, v3, p0}, Lcom/ironsource/v;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/v$b;Lcom/ironsource/u;)V

    iput-object p3, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    invoke-virtual {p0}, Lcom/ironsource/q1;->X()Lcom/ironsource/x;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    new-instance p3, Lcom/ironsource/z;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v2

    invoke-direct {p3, v2, p0}, Lcom/ironsource/z;-><init>(Lcom/ironsource/y;Lcom/ironsource/a9;)V

    iput-object p3, p0, Lcom/ironsource/q1;->q:Lcom/ironsource/z;

    sget-object p3, Lcom/ironsource/q1$f;->a:Lcom/ironsource/q1$f;

    invoke-virtual {p0, p3}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    iput-object p2, p0, Lcom/ironsource/q1;->B:Lcom/ironsource/o8;

    new-instance p2, Lcom/ironsource/gd;

    iget-object p3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p3}, Lcom/ironsource/l;->d()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/a;->f()Ljava/util/ArrayList;

    move-result-object p3

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->d()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/a;->i()I

    move-result v2

    invoke-direct {p2, p3, v2, p0}, Lcom/ironsource/gd;-><init>(Ljava/util/List;ILcom/ironsource/hd;)V

    iput-object p2, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    iget-object p2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->f:Lcom/ironsource/e7;

    invoke-virtual {p0}, Lcom/ironsource/q1;->g0()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lcom/ironsource/e7;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {p0}, Lcom/ironsource/q1;->g()V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/ironsource/q1;->g:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p2}, Lcom/ironsource/l;->r()Z

    move-result p2

    if-eqz p2, :cond_114

    new-instance p2, Lcom/ironsource/mediationsdk/f;

    iget-object p3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p3}, Lcom/ironsource/l;->d()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object p3

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p3, p4, v2}, Lcom/ironsource/mediationsdk/f;-><init>(Lcom/ironsource/mediationsdk/utils/a;ZLjava/lang/String;)V

    new-instance p3, Lcom/ironsource/mediationsdk/e;

    invoke-direct {p3, p2}, Lcom/ironsource/mediationsdk/e;-><init>(Lcom/ironsource/mediationsdk/f;)V

    iput-object p3, p0, Lcom/ironsource/q1;->c:Lcom/ironsource/mediationsdk/e;

    :cond_114
    new-instance p2, Lcom/ironsource/mediationsdk/h;

    iget-object p3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p3}, Lcom/ironsource/l;->j()Ljava/util/List;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p4}, Lcom/ironsource/l;->d()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/utils/a;->c()I

    move-result p4

    invoke-direct {p2, p3, p4}, Lcom/ironsource/mediationsdk/h;-><init>(Ljava/util/List;I)V

    iput-object p2, p0, Lcom/ironsource/q1;->d:Lcom/ironsource/mediationsdk/h;

    invoke-direct {p0}, Lcom/ironsource/q1;->k0()V

    invoke-direct {p0}, Lcom/ironsource/q1;->j0()V

    new-instance p2, Lcom/ironsource/t3;

    invoke-direct {p2}, Lcom/ironsource/t3;-><init>()V

    iput-object p2, p0, Lcom/ironsource/q1;->m:Lcom/ironsource/t3;

    sget-object p2, Lcom/ironsource/q1$f;->b:Lcom/ironsource/q1$f;

    invoke-virtual {p0, p2}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    new-instance p2, Lcom/ironsource/k4;

    invoke-virtual {p1}, Lcom/ironsource/l;->a()I

    move-result p1

    invoke-direct {p2, p1, p0}, Lcom/ironsource/k4;-><init>(ILcom/ironsource/i;)V

    iput-object p2, p0, Lcom/ironsource/q1;->r:Lcom/ironsource/k4;

    new-instance p1, Lcom/ironsource/r;

    invoke-direct {p1}, Lcom/ironsource/r;-><init>()V

    iput-object p1, p0, Lcom/ironsource/q1;->u:Lcom/ironsource/r;

    iget-object p1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->f:Lcom/ironsource/e7;

    invoke-static {v1}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/e7;->a(J)V

    iget-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/y;->e()Z

    move-result p1

    if-eqz p1, :cond_16e

    const-string p1, "first automatic load"

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/q1;->w()V

    :cond_16e
    return-void
.end method

.method static synthetic A(Lcom/ironsource/q1;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/q1;->O(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method private D(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auction waterfallString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4b

    const-string p1, "auction failed - no candidates"

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->i:Lcom/ironsource/s0;

    const/16 p2, 0x3ed

    const-string p3, "No candidates available for auctioning"

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/s0;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/s;->e(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p1

    const-string p2, "no available ad to load"

    invoke-virtual {p0, p1, p2, v2}, Lcom/ironsource/q1;->t(ILjava/lang/String;Z)V

    goto :goto_af

    :cond_4b
    iget-object v1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v1, v1, Lcom/ironsource/v;->i:Lcom/ironsource/s0;

    invoke-virtual {v1, p3}, Lcom/ironsource/s0;->b(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ironsource/q1;->c:Lcom/ironsource/mediationsdk/e;

    if-eqz p3, :cond_a6

    iget-object p3, p0, Lcom/ironsource/q1;->C:Lcom/ironsource/z6;

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/ironsource/z6;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p3

    new-instance v0, Lcom/ironsource/mediationsdk/i;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/i;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isEncryptedResponse()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/i;->b(Z)V

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/i;->a(Ljava/util/Map;)V

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/i;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/ironsource/q1;->d:Lcom/ironsource/mediationsdk/h;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/i;->a(Lcom/ironsource/mediationsdk/h;)V

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/i;->a(I)V

    iget-object p1, p0, Lcom/ironsource/q1;->v:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/i;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iget-boolean p1, p0, Lcom/ironsource/q1;->E:Z

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/i;->d(Z)V

    iget-object p1, p0, Lcom/ironsource/q1;->F:Lcom/ironsource/dc;

    if-eqz p1, :cond_97

    invoke-virtual {p1}, Lcom/ironsource/dc;->a()Z

    move-result p1

    if-eqz p1, :cond_97

    const/4 v2, 0x1

    :cond_97
    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/i;->e(Z)V

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p0}, Lcom/ironsource/q1;->u(Landroid/content/Context;Lcom/ironsource/mediationsdk/i;Lcom/ironsource/t0;)V

    goto :goto_af

    :cond_a6
    const-string p1, "mAuctionHandler is null"

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_af
    return-void
.end method

.method private E(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/ironsource/x1;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/q1;->D(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance v0, Lcom/ironsource/a2;

    invoke-direct {v0}, Lcom/ironsource/a2;-><init>()V

    new-instance v2, Lcom/ironsource/q1$e;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/ironsource/q1$e;-><init>(Lcom/ironsource/q1;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object p1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->h:Lcom/ironsource/pc;

    invoke-virtual {p1}, Lcom/ironsource/pc;->a()V

    iget-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1}, Lcom/ironsource/l;->f()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/a2;->a(Ljava/util/List;Lcom/ironsource/a2$b;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private G(Lorg/json/JSONObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const-string v1, "isAdUnitCapped"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_9
    iget-object v1, p0, Lcom/ironsource/q1;->u:Lcom/ironsource/r;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/r;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    invoke-direct {p0, p1}, Lcom/ironsource/q1;->P(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic M(Lcom/ironsource/q1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/q1;->s0()V

    return-void
.end method

.method static synthetic N(Lcom/ironsource/q1;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/q1;->E(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method private O(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/ironsource/x1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_147

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iget-object v1, p0, Lcom/ironsource/q1;->F:Lcom/ironsource/dc;

    if-eqz v1, :cond_27

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/ironsource/dc;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_27
    new-instance v1, Lcom/ironsource/qb;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/ironsource/qb;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/ironsource/q1;->l:Lcom/ironsource/rb;

    invoke-virtual {v2, v1}, Lcom/ironsource/rb;->b(Lcom/ironsource/rb$a;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0, v8}, Lcom/ironsource/q1;->W(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Lcom/ironsource/q1;->m(Lcom/ironsource/mediationsdk/model/NetworkSettings;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v5

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_127

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/q1;->h()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v8, v3, v4}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/ironsource/z1;

    if-eqz v3, :cond_f3

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->e()Z

    move-result v3

    if-eqz v3, :cond_96

    new-instance v9, Lcom/ironsource/x1;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v3

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    move-object v6, v1

    check-cast v6, Lcom/ironsource/z1;

    move-object v2, v9

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/ironsource/x1;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/z1;Lcom/ironsource/y1;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    invoke-interface {p4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_96
    :try_start_96
    move-object v3, v1

    check-cast v3, Lcom/ironsource/z1;

    invoke-interface {v3, v5}, Lcom/ironsource/z1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_bf

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_bf
    invoke-direct {p0, v8, v1}, Lcom/ironsource/q1;->r(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    const-string v3, "Missing bidding data"

    invoke-virtual {v2, v1, v3}, Lcom/ironsource/vc;->a(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_cc} :catch_d7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_96 .. :try_end_cc} :catch_ce

    goto/16 :goto_a

    :catch_ce
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAuctionCandidates - error while calling networkAdapter.getBiddingData - "

    goto :goto_df

    :catch_d7
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAuctionCandidates - exception while calling networkAdapter.getBiddingData - "

    :goto_df
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_11e

    :cond_f3
    if-nez v1, :cond_104

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAuctionCandidates - could not load network adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v2

    goto :goto_117

    :cond_104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not implementing BiddingDataInterface"

    :goto_117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_11e
    iget-object v2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v2, v1}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_127
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_147
    return-void
.end method

.method private P(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "bidderExclusive"

    const-string v1, "parallelLoad"

    const/4 v2, 0x0

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1, v2}, Lcom/ironsource/l;->b(Z)V

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading configuration from auction response is null, using the following: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_2d
    :try_start_2d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3e

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3, v1}, Lcom/ironsource/l;->a(I)V

    :cond_3e
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1, v0}, Lcom/ironsource/l;->a(Z)V

    :cond_4d
    const-string v0, "showPriorityEnabled"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0, p1}, Lcom/ironsource/l;->b(Z)V
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_58} :catch_6a
    .catchall {:try_start_2d .. :try_end_58} :catchall_68

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_a0

    :catchall_68
    move-exception p1

    goto :goto_a1

    :catch_6a
    move-exception p1

    :try_start_6b
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to update loading configuration for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_6b .. :try_end_93} :catchall_68

    iget-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1}, Lcom/ironsource/l;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_a0
    return-void

    :goto_a1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    throw p1
.end method

.method private R(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Z
    .registers 6

    iget-object v0, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/ironsource/gd;->a(Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    return v0

    :cond_14
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->shouldEarlyInit()Z

    move-result p2

    if-nez p2, :cond_2c

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isIronSource()Z

    move-result p2

    if-nez p2, :cond_2c

    iget-object p2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p2}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p1

    if-eqz p1, :cond_2d

    :cond_2c
    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method private S(Lcom/ironsource/t;)Z
    .registers 3

    sget-object v0, Lcom/ironsource/t;->a:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->e:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->K:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->O:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->M:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->D:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->E:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->F:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->G:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->H:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->I:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/ironsource/t;->J:Lcom/ironsource/t;

    if-eq p1, v0, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    return p1
.end method

.method private T(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 9

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Start initializing provider %s on thread %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/q1;->m(Lcom/ironsource/mediationsdk/model/NetworkSettings;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/q1;->h()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v2, p1, v3, v6}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    if-eqz v2, :cond_74

    :try_start_42
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v2, v0, v3, v6}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4e} :catch_4f

    goto :goto_74

    :catch_4f
    move-exception v0

    iget-object v2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initProvider - exception while calling networkAdapter.init with "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    :cond_74
    :goto_74
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "Done initializing provider %s on thread %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private U(Lcom/ironsource/t;)Z
    .registers 3

    sget-object v0, Lcom/ironsource/t;->g:Lcom/ironsource/t;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/ironsource/t;->i:Lcom/ironsource/t;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/ironsource/t;->j:Lcom/ironsource/t;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/ironsource/t;->N:Lcom/ironsource/t;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/ironsource/t;->L:Lcom/ironsource/t;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/ironsource/t;->S:Lcom/ironsource/t;

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private V(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/q1;->z:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/ironsource/q1;->q()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1f

    :cond_15
    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/ironsource/q1;->z:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_20

    :goto_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method private W(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z
    .registers 12

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/q1;->h()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v8

    instance-of v0, v8, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    if-eqz v0, :cond_3c

    iget-object v3, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;->getLoadWhileShowSupportedState(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object v7

    iget-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/gd;->a(Lcom/ironsource/y$a;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p1

    return p1

    :cond_3c
    const/4 p1, 0x0

    return p1
.end method

.method private Z()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/d1;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-direct {p0, v2}, Lcom/ironsource/q1;->W(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_f

    :cond_2e
    new-instance v3, Lcom/ironsource/qb;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v5}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/ironsource/qb;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/ironsource/q1;->l:Lcom/ironsource/rb;

    invoke-virtual {v2, v3}, Lcom/ironsource/rb;->b(Lcom/ironsource/rb$a;)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_f

    :cond_4a
    new-instance v2, Lcom/ironsource/d1;

    invoke-virtual {v3}, Lcom/ironsource/qb;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/d1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_57
    return-object v0
.end method

.method private e()Lcom/ironsource/kd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/kd<",
            "TSmash;>;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v0}, Lcom/ironsource/gd;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ironsource/jd;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-direct {v1, v2}, Lcom/ironsource/jd;-><init>(Lcom/ironsource/l;)V

    invoke-virtual {v1, v0}, Lcom/ironsource/jd;->d(Ljava/util/List;)Lcom/ironsource/kd;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/q1;->u:Lcom/ironsource/r;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/r;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    return-void
.end method

.method private h0()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private j()V
    .registers 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/q1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v2, Lcom/ironsource/q1$f;->c:Lcom/ironsource/q1$f;

    if-ne v1, v2, :cond_14

    monitor-exit v0

    return-void

    :cond_14
    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_47

    iget-object v0, p0, Lcom/ironsource/q1;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ironsource/q1;->m:Lcom/ironsource/t3;

    invoke-static {v0}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->d()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/a;->k()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_43

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ironsource/q1$c;

    invoke-direct {v1, p0}, Lcom/ironsource/q1$c;-><init>(Lcom/ironsource/q1;)V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_46

    :cond_43
    invoke-direct {p0}, Lcom/ironsource/q1;->s0()V

    :goto_46
    return-void

    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private j0()V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/q1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v4}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ironsource/q1;->h()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/ironsource/q1;->R(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_18

    :cond_3d
    new-instance v3, Lcom/ironsource/q1$b;

    invoke-direct {v3, p0, v2}, Lcom/ironsource/q1$b;-><init>(Lcom/ironsource/q1;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_46
    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->k()Z

    move-result v2

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->q()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->executeTasks(ZZLjava/util/List;)V

    return-void
.end method

.method private k()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/q1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/q1;->Z()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/q1;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/q1;->q(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private k0()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    new-instance v3, Lcom/ironsource/qb;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v5}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/ironsource/qb;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_32
    new-instance v1, Lcom/ironsource/rb;

    invoke-direct {v1, v0}, Lcom/ironsource/rb;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/ironsource/q1;->l:Lcom/ironsource/rb;

    return-void
.end method

.method private n(Lcom/ironsource/d1;Ljava/lang/String;)Lcom/ironsource/t1;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/d1;",
            "Ljava/lang/String;",
            ")TSmash;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/l;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v3

    if-eqz v3, :cond_67

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/q1;->h()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/ironsource/q1;->l(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v4

    if-eqz v4, :cond_48

    iget-object v0, p0, Lcom/ironsource/q1;->C:Lcom/ironsource/z6;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/z6;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v5

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/q1;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/d1;)Lcom/ironsource/t1;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ironsource/mediationsdk/h$a;->a:Lcom/ironsource/mediationsdk/h$a;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    :cond_48
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addSmashToWaterfall - could not load ad adapter for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_96

    :cond_67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not find matching provider settings for auction response item - item = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->d(Ljava/lang/String;)V

    :goto_96
    const/4 p2, 0x0

    :goto_97
    return-object p2
.end method

.method private o(Lcom/ironsource/l;)Lcom/ironsource/x7;
    .registers 5

    invoke-virtual {p1}, Lcom/ironsource/l;->o()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s_%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->createAndStartThread(Ljava/lang/String;)Lcom/ironsource/x7;

    move-result-object p1

    return-object p1

    :cond_2c
    invoke-virtual {p1}, Lcom/ironsource/l;->l()Z

    move-result p1

    if-eqz p1, :cond_39

    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->getSharedManagersThread()Lcom/ironsource/x7;

    move-result-object p1

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method private q(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/d1;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waterfall.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/d1;

    invoke-direct {p0, v3, p2}, Lcom/ironsource/q1;->n(Lcom/ironsource/d1;Ljava/lang/String;)Lcom/ironsource/t1;

    move-result-object v4

    if-eqz v4, :cond_4e

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/ironsource/t1;->l()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/ironsource/q1;->p(Lcom/ironsource/d1;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_5b

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_5e
    iget-object p1, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v2

    invoke-virtual {p1, v2, v1, p2}, Lcom/ironsource/gd;->a(Lcom/ironsource/y$a;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateWaterfall() - next waterfall is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private q0()V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/q1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/y;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/ironsource/q1;->l:Lcom/ironsource/rb;

    invoke-virtual {v2}, Lcom/ironsource/rb;->a()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "all smashes are capped"

    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/s;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/ironsource/q1;->t(ILjava/lang/String;Z)V

    monitor-exit v1

    return-void

    :cond_39
    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v2

    sget-object v4, Lcom/ironsource/y$a;->d:Lcom/ironsource/y$a;

    if-eq v2, v4, :cond_83

    iget-object v2, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v5, Lcom/ironsource/q1$f;->f:Lcom/ironsource/q1$f;

    if-ne v2, v5, :cond_83

    const-string v0, "load cannot be invoked while showing an ad"

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v4, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v4}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/s;->d(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v4

    invoke-direct {v2, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y;->f()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Lcom/ironsource/q1;->l0()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/ironsource/q1;->v(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_81

    :cond_7b
    iget-object v0, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/ironsource/x;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :goto_81
    monitor-exit v1

    return-void

    :cond_83
    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v2

    if-eq v2, v4, :cond_b6

    iget-object v2, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v3, Lcom/ironsource/q1$f;->b:Lcom/ironsource/q1$f;

    if-eq v2, v3, :cond_99

    sget-object v3, Lcom/ironsource/q1$f;->e:Lcom/ironsource/q1$f;

    if-ne v2, v3, :cond_a9

    :cond_99
    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/n;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v2

    if-eqz v2, :cond_b6

    :cond_a9
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "load is already in progress"

    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_b6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/ironsource/q1;->g:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/q1;->f()V

    invoke-virtual {p0}, Lcom/ironsource/q1;->l0()Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v2}, Lcom/ironsource/z8;->a()V

    goto :goto_d9

    :cond_ce
    iget-object v2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {p0}, Lcom/ironsource/q1;->i0()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/z8;->a(Z)V

    :goto_d9
    new-instance v2, Lcom/ironsource/t3;

    invoke-direct {v2}, Lcom/ironsource/t3;-><init>()V

    iput-object v2, p0, Lcom/ironsource/q1;->n:Lcom/ironsource/t3;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->r()Z

    move-result v2

    if-eqz v2, :cond_100

    iget-object v2, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_fc

    iget-object v2, p0, Lcom/ironsource/q1;->d:Lcom/ironsource/mediationsdk/h;

    iget-object v3, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object v2, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_fc
    invoke-direct {p0}, Lcom/ironsource/q1;->j()V

    goto :goto_105

    :cond_100
    sget-object v2, Lcom/ironsource/q1$f;->d:Lcom/ironsource/q1$f;

    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    :goto_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_c .. :try_end_106} :catchall_11e

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->r()Z

    move-result v1

    if-nez v1, :cond_11d

    const-string v1, "auction disabled"

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/q1;->k()V

    invoke-direct {p0}, Lcom/ironsource/q1;->r0()V

    :cond_11d
    return-void

    :catchall_11e
    move-exception v0

    :try_start_11f
    monitor-exit v1
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    throw v0
.end method

.method private r(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "provider"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerAdapterVersion"

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerSDKVersion"

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "spId"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "instanceType"

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "programmatic"

    invoke-direct {p0}, Lcom/ironsource/q1;->h0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_49} :catch_4a

    goto :goto_69

    :catch_4a
    move-exception p2

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProviderEventData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_69
    return-object v0
.end method

.method private r0()V
    .registers 5

    invoke-direct {p0}, Lcom/ironsource/q1;->e()Lcom/ironsource/kd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/kd;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x1fd

    const/4 v2, 0x0

    const-string v3, "Mediation No fill"

    invoke-virtual {p0, v1, v3, v2}, Lcom/ironsource/q1;->t(ILjava/lang/String;Z)V

    :cond_12
    invoke-virtual {v0}, Lcom/ironsource/kd;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/t1;

    invoke-virtual {v1}, Lcom/ironsource/t1;->D()V

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method static synthetic s(Lcom/ironsource/q1;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/q1;->r(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private s0()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/q1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/q1$d;

    invoke-direct {v0, p0}, Lcom/ironsource/q1$d;-><init>(Lcom/ironsource/q1;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic x(Lcom/ironsource/q1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/q1;->q0()V

    return-void
.end method

.method static synthetic y(Lcom/ironsource/q1;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/q1;->T(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method

.method static synthetic z(Lcom/ironsource/q1;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/q1;->D(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected B(Lcom/ironsource/t1;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t1<",
            "*>;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p1, p2}, Lcom/ironsource/x;->c(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method protected C(Lcom/ironsource/x;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    return-void
.end method

.method public F()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/q1;->h()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    goto :goto_a

    :cond_28
    return-void
.end method

.method protected H(ZZLcom/ironsource/t1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/ironsource/t1<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/q1;->z:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_4f

    :cond_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/q1;->z:Ljava/lang/Boolean;

    iget-wide v1, p0, Lcom/ironsource/q1;->y:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1c

    goto :goto_29

    :cond_1c
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/q1;->y:J

    sub-long v3, v1, v3

    :goto_29
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ironsource/q1;->y:J

    iget-object v1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v1, v1, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v1, p1, v3, v4, p2}, Lcom/ironsource/z8;->a(ZJZ)V

    if-eqz p3, :cond_42

    invoke-virtual {p3}, Lcom/ironsource/t1;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p2

    goto :goto_44

    :cond_42
    iget-object p2, p0, Lcom/ironsource/q1;->A:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    :goto_44
    iput-object p2, p0, Lcom/ironsource/q1;->A:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    iget-object p3, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 p2, 0x0

    :goto_4c
    invoke-virtual {p3, p1, p2}, Lcom/ironsource/x;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p1
.end method

.method protected I(Lcom/ironsource/q1$f;Lcom/ironsource/q1$f;)Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    if-ne v1, p1, :cond_b

    const/4 p1, 0x1

    iput-object p2, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit v0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method protected J(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract K(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
.end method

.method protected L(Lcom/ironsource/d1;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_51

    invoke-virtual {p1, p2}, Lcom/ironsource/d1;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object p1

    if-eqz p1, :cond_65

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/ironsource/q1;->B:Lcom/ironsource/o8;

    invoke-virtual {v0}, Lcom/ironsource/o8;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImpressionSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;->onImpressionSuccess(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    goto :goto_17

    :cond_51
    const-string p1, "reportImpressionDataToPublisher - no auctionResponseItem or listener"

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    if-eqz p2, :cond_65

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    :cond_65
    return-void
.end method

.method protected Q(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/ironsource/q1;->H(ZZLcom/ironsource/t1;)V

    return-void
.end method

.method protected abstract X()Lcom/ironsource/x;
.end method

.method protected Y()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/d1;)Lcom/ironsource/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*T",
            "Listener;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/ironsource/d1;",
            ")TSmash;"
        }
    .end annotation
.end method

.method public a(Lcom/ironsource/t;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "programmatic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/q1;->g:Lorg/json/JSONObject;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_27

    iget-object v1, p0, Lcom/ironsource/q1;->g:Lorg/json/JSONObject;

    const-string v2, "genericParams"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget-object v1, p0, Lcom/ironsource/q1;->C:Lcom/ironsource/z6;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/z6;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sessionDepth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/ironsource/q1;->U(Lcom/ironsource/t;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget v1, p0, Lcom/ironsource/q1;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "auctionTrials"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/q1;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lcom/ironsource/q1;->f:Ljava/lang/String;

    const-string v2, "auctionFallback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    invoke-direct {p0, p1}, Lcom/ironsource/q1;->S(Lcom/ironsource/t;)Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {p1}, Lcom/ironsource/gd;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_79

    iget-object p1, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {p1}, Lcom/ironsource/gd;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "auctionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_79
    return-object v0
.end method

.method public a()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/q1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/q1;->w()V

    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waterfalls hold too many with size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/vc;->q(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 10

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/q1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/q1;->o0()Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auction failed | moving to fallback waterfall (error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/q1;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    iput p3, p0, Lcom/ironsource/q1;->e:I

    iput-object p4, p0, Lcom/ironsource/q1;->f:Ljava/lang/String;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    iput-object p3, p0, Lcom/ironsource/q1;->g:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/q1;->k()V

    iget-object p3, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p3, p3, Lcom/ironsource/v;->i:Lcom/ironsource/s0;

    invoke-virtual {p3, p5, p6, p1, p2}, Lcom/ironsource/s0;->a(JILjava/lang/String;)V

    sget-object p1, Lcom/ironsource/q1$f;->d:Lcom/ironsource/q1$f;

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    invoke-direct {p0}, Lcom/ironsource/q1;->r0()V

    goto :goto_9e

    :cond_6d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected auction fail - error = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->e(Ljava/lang/String;)V

    :goto_9e
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :try_start_1a
    iput-boolean p2, p0, Lcom/ironsource/q1;->j:Z

    if-eqz p2, :cond_3a

    iget-object p2, p0, Lcom/ironsource/q1;->k:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_29

    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/s9;)V

    iput-object p2, p0, Lcom/ironsource/q1;->k:Lcom/ironsource/environment/NetworkStateReceiver;

    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/q1;->k:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_63

    :cond_3a
    iget-object p2, p0, Lcom/ironsource/q1;->k:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz p2, :cond_63

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/q1;->k:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_47} :catch_48

    goto :goto_63

    :catch_48
    move-exception p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an error from receiver with message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public a(Lcom/ironsource/dc;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/q1;->F:Lcom/ironsource/dc;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iput-boolean p1, p0, Lcom/ironsource/q1;->E:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ironsource/q1;->z:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/q1;->v:Lcom/ironsource/mediationsdk/IronSourceSegment;

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/t1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            "Lcom/ironsource/t1<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ironsource/t1;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v2}, Lcom/ironsource/gd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b9

    iget-object p1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v2, Lcom/ironsource/q1$f;->c:Lcom/ironsource/q1$f;

    if-ne p1, v2, :cond_3c

    goto/16 :goto_b9

    :cond_3c
    iget-object p1, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ironsource/mediationsdk/h$a;->b:Lcom/ironsource/mediationsdk/h$a;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/q1;->p0()Z

    move-result p1

    if-nez p1, :cond_56

    invoke-virtual {p0}, Lcom/ironsource/q1;->n0()Z

    move-result p1

    if-eqz p1, :cond_54

    goto :goto_56

    :cond_54
    const/4 p1, 0x0

    goto :goto_6a

    :cond_56
    :goto_56
    invoke-direct {p0}, Lcom/ironsource/q1;->e()Lcom/ironsource/kd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/kd;->c()Z

    move-result p2

    if-eqz p2, :cond_6a

    const/16 p1, 0x1fd

    const-string p2, "Mediation No fill"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/ironsource/q1;->t(ILjava/lang/String;Z)V

    monitor-exit v0

    return-void

    :cond_6a
    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_115

    if-nez p1, :cond_6e

    return-void

    :cond_6e
    iget-object p2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p2}, Lcom/ironsource/l;->m()Z

    move-result p2

    if-eqz p2, :cond_a0

    iget-object p2, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter p2

    :try_start_79
    invoke-virtual {p1}, Lcom/ironsource/kd;->b()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p0}, Lcom/ironsource/q1;->m0()Z

    move-result v0

    if-eqz v0, :cond_9b

    new-instance v0, Lcom/ironsource/jd;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-direct {v0, v1}, Lcom/ironsource/jd;-><init>(Lcom/ironsource/l;)V

    iget-object v1, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v1}, Lcom/ironsource/gd;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/jd;->c(Ljava/util/List;)Lcom/ironsource/t1;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->d0(Lcom/ironsource/t1;)V

    :cond_9b
    monitor-exit p2

    goto :goto_a0

    :catchall_9d
    move-exception p1

    monitor-exit p2
    :try_end_9f
    .catchall {:try_start_79 .. :try_end_9f} :catchall_9d

    throw p1

    :cond_a0
    :goto_a0
    invoke-virtual {p1}, Lcom/ironsource/kd;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/t1;

    invoke-virtual {p2}, Lcom/ironsource/t1;->D()V

    goto :goto_a8

    :cond_b8
    return-void

    :cond_b9
    :goto_b9
    :try_start_b9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoadFailed was invoked from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with state ="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " auctionId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/t1;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and the current id is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {p2}, Lcom/ironsource/gd;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoadFailed was invoked with state ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/vc;->j(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_115
    move-exception p1

    monitor-exit v0
    :try_end_117
    .catchall {:try_start_b9 .. :try_end_117} :catchall_115

    throw p1
.end method

.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 5

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/q1;->h()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1, v0}, Lcom/ironsource/q1;->r(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->h:Lcom/ironsource/pc;

    invoke-virtual {v0, p1}, Lcom/ironsource/pc;->a(Ljava/util/Map;)V

    :cond_1f
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/q1;->H:Lcom/ironsource/x7;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/ironsource/x7;->a(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v0, p1}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/d1;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/d1;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/d1;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/q1;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/q1;->o0()Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/q1;->f:Ljava/lang/String;

    iput p6, p0, Lcom/ironsource/q1;->e:I

    iput-object p3, p0, Lcom/ironsource/q1;->h:Lcom/ironsource/d1;

    iput-object p4, p0, Lcom/ironsource/q1;->g:Lorg/json/JSONObject;

    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_26

    iget-object p3, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p3, p3, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p3, p9, p10}, Lcom/ironsource/vc;->a(ILjava/lang/String;)V

    :cond_26
    invoke-direct {p0, p5}, Lcom/ironsource/q1;->G(Lorg/json/JSONObject;)V

    iget-object p3, p0, Lcom/ironsource/q1;->u:Lcom/ironsource/r;

    iget-object p4, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p4}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ironsource/r;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p3

    if-eqz p3, :cond_47

    iget-object p1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->i:Lcom/ironsource/s0;

    invoke-virtual {p1, p2}, Lcom/ironsource/s0;->a(Ljava/lang/String;)V

    const/16 p1, 0x20d

    const/4 p2, 0x1

    const-string p3, "Ad unit is capped"

    invoke-virtual {p0, p1, p3, p2}, Lcom/ironsource/q1;->t(ILjava/lang/String;Z)V

    goto :goto_a4

    :cond_47
    invoke-direct {p0, p1, p2}, Lcom/ironsource/q1;->q(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->i:Lcom/ironsource/s0;

    iget-object p3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p3}, Lcom/ironsource/l;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p7, p8, p3}, Lcom/ironsource/s0;->a(JLjava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->i:Lcom/ironsource/s0;

    invoke-virtual {p2, p1}, Lcom/ironsource/s0;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/ironsource/q1$f;->d:Lcom/ironsource/q1$f;

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    invoke-direct {p0}, Lcom/ironsource/q1;->r0()V

    goto :goto_a4

    :cond_68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected auction success for auctionId - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected auction success, state = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/vc;->f(Ljava/lang/String;)V

    :goto_a4
    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/ironsource/q1;->j:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_32

    :cond_11
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network availability changed to - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/q1;->V(Z)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/q1;->H(ZZLcom/ironsource/t1;)V

    :cond_32
    :goto_32
    return-void
.end method

.method protected a0(Lcom/ironsource/t1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t1<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p1}, Lcom/ironsource/t1;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/x;->d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/ironsource/q1$f;->b:Lcom/ironsource/q1$f;

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->Q(Z)V

    invoke-virtual {p0}, Lcom/ironsource/q1;->w()V

    :cond_18
    return-void
.end method

.method public b(Lcom/ironsource/t1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t1<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v1, v1, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/k;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v1, p1}, Lcom/ironsource/gd;->a(Lcom/ironsource/t1;)V

    iget-object v1, p0, Lcom/ironsource/q1;->l:Lcom/ironsource/rb;

    invoke-virtual {v1, p1}, Lcom/ironsource/rb;->a(Lcom/ironsource/rb$a;)V

    iget-object v1, p0, Lcom/ironsource/q1;->l:Lcom/ironsource/rb;

    invoke-virtual {v1, p1}, Lcom/ironsource/rb;->b(Lcom/ironsource/rb$a;)Z

    move-result v1

    if-eqz v1, :cond_5f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was session capped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/t1;->M()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    :cond_5f
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v3}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-eqz v1, :cond_b8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is capped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k;->i(Ljava/lang/String;)V

    :cond_b8
    iget-object v0, p0, Lcom/ironsource/q1;->D:Lcom/ironsource/z6$a;

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/z6$a;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->r()Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-virtual {p1}, Lcom/ironsource/t1;->i()Lcom/ironsource/d1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q1;->c:Lcom/ironsource/mediationsdk/e;

    invoke-virtual {p1}, Lcom/ironsource/t1;->l()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/q1;->h:Lcom/ironsource/d1;

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/e;->a(Lcom/ironsource/d1;ILcom/ironsource/d1;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/h$a;->e:Lcom/ironsource/mediationsdk/h$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/q1;->i()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/q1;->L(Lcom/ironsource/d1;Ljava/lang/String;)V

    :cond_f6
    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->a0(Lcom/ironsource/t1;)V

    iget-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/y;->e()Z

    move-result p1

    if-eqz p1, :cond_109

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->Q(Z)V

    :cond_109
    iget-object p1, p0, Lcom/ironsource/q1;->q:Lcom/ironsource/z;

    invoke-virtual {p1}, Lcom/ironsource/z;->f()V

    return-void
.end method

.method protected b0(Lcom/ironsource/t1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t1<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/ironsource/t1;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/q1;->B(Lcom/ironsource/t1;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    goto :goto_19

    :cond_14
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/q1;->H(ZZLcom/ironsource/t1;)V

    :goto_19
    return-void
.end method

.method public c()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/q1;->H:Lcom/ironsource/x7;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_c

    goto :goto_1d

    :cond_c
    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->o()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->l()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    :goto_1d
    return v1
.end method

.method protected abstract c0()Ljava/lang/String;
.end method

.method protected d0(Lcom/ironsource/t1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t1<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->r()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/ironsource/q1;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/ironsource/t1;->i()Lcom/ironsource/d1;

    move-result-object v6

    iget-object v0, p0, Lcom/ironsource/q1;->c:Lcom/ironsource/mediationsdk/e;

    invoke-virtual {p1}, Lcom/ironsource/t1;->l()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/q1;->h:Lcom/ironsource/d1;

    invoke-virtual {v0, v6, v1, v2}, Lcom/ironsource/mediationsdk/e;->a(Lcom/ironsource/d1;ILcom/ironsource/d1;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v0, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v0}, Lcom/ironsource/gd;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/t1;

    invoke-virtual {v1}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/t1;->i()Lcom/ironsource/d1;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_54
    iget-object v1, p0, Lcom/ironsource/q1;->c:Lcom/ironsource/mediationsdk/e;

    invoke-virtual {p1}, Lcom/ironsource/t1;->l()I

    move-result v4

    iget-object v5, p0, Lcom/ironsource/q1;->h:Lcom/ironsource/d1;

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/d1;Lcom/ironsource/d1;)V

    :cond_5f
    return-void
.end method

.method public e(Lcom/ironsource/t1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t1<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/t1;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v2}, Lcom/ironsource/gd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " auctionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/t1;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and the current id is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {p1}, Lcom/ironsource/gd;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoadSuccess invoked with state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/vc;->k(Ljava/lang/String;)V

    return-void

    :cond_78
    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->m()Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v0}, Lcom/ironsource/gd;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ironsource/jd;

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-direct {v1, v2}, Lcom/ironsource/jd;-><init>(Lcom/ironsource/l;)V

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/jd;->a(Lcom/ironsource/t1;Ljava/util/List;)Z

    move-result v2

    iget-object v3, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_a0

    :try_start_96
    invoke-virtual {p0}, Lcom/ironsource/q1;->m0()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->d0(Lcom/ironsource/t1;)V

    goto :goto_ad

    :cond_a0
    invoke-virtual {v1, v0}, Lcom/ironsource/jd;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-virtual {v1, v0}, Lcom/ironsource/jd;->c(Ljava/util/List;)Lcom/ironsource/t1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->d0(Lcom/ironsource/t1;)V

    :cond_ad
    :goto_ad
    monitor-exit v3

    goto :goto_b2

    :catchall_af
    move-exception p1

    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_96 .. :try_end_b1} :catchall_af

    throw p1

    :cond_b2
    :goto_b2
    iget-object v0, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/h$a;->c:Lcom/ironsource/mediationsdk/h$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ironsource/q1$f;->d:Lcom/ironsource/q1$f;

    sget-object v1, Lcom/ironsource/q1$f;->e:Lcom/ironsource/q1$f;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/q1;->I(Lcom/ironsource/q1$f;Lcom/ironsource/q1$f;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/ironsource/q1;->n:Lcom/ironsource/t3;

    invoke-static {v0}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ironsource/q1;->l0()Z

    move-result v2

    if-eqz v2, :cond_db

    iget-object v2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v2, v0, v1}, Lcom/ironsource/z8;->a(J)V

    goto :goto_e6

    :cond_db
    iget-object v2, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {p0}, Lcom/ironsource/q1;->i0()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/ironsource/z8;->a(JZ)V

    :goto_e6
    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y;->e()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/ironsource/q1;->r:Lcom/ironsource/k4;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/k4;->a(J)V

    :cond_f9
    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->m()Z

    move-result v0

    if-nez v0, :cond_104

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->d0(Lcom/ironsource/t1;)V

    :cond_104
    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->b0(Lcom/ironsource/t1;)V

    :cond_107
    return-void
.end method

.method protected e0()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallback_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/ironsource/t1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t1<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    iget-object v1, p0, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {p1}, Lcom/ironsource/t1;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/x;->a(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method protected f0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()V
    .registers 4

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v2}, Lcom/ironsource/l;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;I)V

    return-void
.end method

.method abstract g0()Ljava/lang/String;
.end method

.method public h()Ljava/util/UUID;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/q1;->w:Ljava/util/UUID;

    return-object v0
.end method

.method protected i()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected i0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected l(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*T",
            "Listener;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/q1;->h()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/ironsource/mediationsdk/c;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract l0()Z
.end method

.method protected m(Lcom/ironsource/mediationsdk/model/NetworkSettings;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->K(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->createAdDataForNetworkAdapter(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object p1

    return-object p1
.end method

.method protected m0()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v2, Lcom/ironsource/q1$f;->d:Lcom/ironsource/q1$f;

    if-eq v1, v2, :cond_10

    sget-object v2, Lcom/ironsource/q1$f;->e:Lcom/ironsource/q1$f;

    if-ne v1, v2, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    :goto_11
    monitor-exit v0

    return v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected n0()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v2, Lcom/ironsource/q1$f;->e:Lcom/ironsource/q1$f;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected o0()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v2, Lcom/ironsource/q1$f;->c:Lcom/ironsource/q1$f;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected p(Lcom/ironsource/d1;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected p0()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v2, Lcom/ironsource/q1$f;->d:Lcom/ironsource/q1$f;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected q()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected t(ILjava/lang/String;Z)V
    .registers 8

    sget-object v0, Lcom/ironsource/q1$f;->b:Lcom/ironsource/q1$f;

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    if-nez p3, :cond_43

    iget-object p3, p0, Lcom/ironsource/q1;->n:Lcom/ironsource/t3;

    invoke-static {p3}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v2

    iget-object p3, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p3, p3, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {p3, v2, v3, p1, p2}, Lcom/ironsource/z8;->a(JILjava/lang/String;)V

    :cond_43
    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p3, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p3, v1}, Lcom/ironsource/q1;->v(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_58

    :cond_4c
    if-nez p3, :cond_55

    iget-object p3, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object p3, p3, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/vc;->b(ILjava/lang/String;)V

    :cond_55
    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->Q(Z)V

    :goto_58
    iget-object p1, p0, Lcom/ironsource/q1;->q:Lcom/ironsource/z;

    invoke-virtual {p1}, Lcom/ironsource/z;->c()V

    return-void
.end method

.method protected u(Landroid/content/Context;Lcom/ironsource/mediationsdk/i;Lcom/ironsource/t0;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/q1;->c:Lcom/ironsource/mediationsdk/e;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/e;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/i;Lcom/ironsource/t0;)V

    goto :goto_13

    :cond_8
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "mAuctionHandler is null"

    invoke-virtual {p0, p2}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method protected v(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .registers 5

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/mediationsdk/n;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    return-void
.end method

.method public w()V
    .registers 2

    invoke-virtual {p0}, Lcom/ironsource/q1;->c()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/ironsource/q1;->q0()V

    return-void

    :cond_a
    new-instance v0, Lcom/ironsource/q1$a;

    invoke-direct {v0, p0}, Lcom/ironsource/q1$a;-><init>(Lcom/ironsource/q1;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected w(Lcom/ironsource/q1$f;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method
