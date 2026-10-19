###### Class com.json.q7 (com.ironsource.q7)
.class public Lcom/ironsource/q7;
.super Lcom/ironsource/u1;
.source "SourceFile"


# static fields
.field private static Q:Lcom/ironsource/q7;


# instance fields
.field private R:Ljava/lang/String;

.field private final S:Lcom/ironsource/z6;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/u1;-><init>()V

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/l5;->d()Lcom/ironsource/z6;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/q7;->S:Lcom/ironsource/z6;

    const-string v0, "ironbeast"

    iput-object v0, p0, Lcom/ironsource/u1;->H:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/ironsource/u1;->G:I

    const-string v0, "IS"

    iput-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/q7;->R:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized i()Lcom/ironsource/q7;
    .registers 2

    const-class v0, Lcom/ironsource/q7;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/q7;->Q:Lcom/ironsource/q7;

    if-nez v1, :cond_11

    new-instance v1, Lcom/ironsource/q7;

    invoke-direct {v1}, Lcom/ironsource/q7;-><init>()V

    sput-object v1, Lcom/ironsource/q7;->Q:Lcom/ironsource/q7;

    invoke-virtual {v1}, Lcom/ironsource/u1;->F()V

    :cond_11
    sget-object v1, Lcom/ironsource/q7;->Q:Lcom/ironsource/q7;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected C()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x7d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x7d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x898

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x8a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x8a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x8a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xc27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xc81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xc2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xce4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xce5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xbc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xfa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x100f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xfa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xfa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x10cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0xfa9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected D(Lcom/ironsource/a4;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    const/16 v0, 0x7d4

    if-eq p1, v0, :cond_37

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_37

    const/16 v0, 0x89c

    if-eq p1, v0, :cond_37

    const/16 v0, 0x8fd

    if-eq p1, v0, :cond_37

    const/16 v0, 0x8fc

    if-eq p1, v0, :cond_37

    const/16 v0, 0xbc1

    if-eq p1, v0, :cond_37

    const/16 v0, 0xdae

    if-eq p1, v0, :cond_37

    const/16 v0, 0xdad

    if-eq p1, v0, :cond_37

    const/16 v0, 0xfa5

    if-eq p1, v0, :cond_37

    const/16 v0, 0xfa9

    if-eq p1, v0, :cond_37

    const/16 v0, 0x1196

    if-eq p1, v0, :cond_37

    const/16 v0, 0x1195

    if-ne p1, v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p1, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p1, 0x1

    :goto_38
    return p1
.end method

.method protected E(I)Ljava/lang/String;
    .registers 2

    iget-object p1, p0, Lcom/ironsource/q7;->R:Ljava/lang/String;

    return-object p1
.end method

.method protected K(Lcom/ironsource/a4;)V
    .registers 3

    invoke-virtual {p1}, Lcom/ironsource/a4;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/q7;->R:Ljava/lang/String;

    return-void
.end method

.method protected U(Lcom/ironsource/a4;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected W(Lcom/ironsource/a4;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected y(Lcom/ironsource/a4;)I
    .registers 3

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/u1;->I(I)I

    move-result p1

    sget-object v0, Lcom/ironsource/u1$e;->g:Lcom/ironsource/u1$e;

    invoke-virtual {v0}, Lcom/ironsource/u1$e;->a()I

    move-result v0

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lcom/ironsource/q7;->S:Lcom/ironsource/z6;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    :goto_14
    invoke-interface {p1, v0}, Lcom/ironsource/z6;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p1

    return p1

    :cond_19
    sget-object v0, Lcom/ironsource/u1$e;->f:Lcom/ironsource/u1$e;

    invoke-virtual {v0}, Lcom/ironsource/u1$e;->a()I

    move-result v0

    if-ne p1, v0, :cond_26

    iget-object p1, p0, Lcom/ironsource/q7;->S:Lcom/ironsource/z6;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    goto :goto_14

    :cond_26
    iget-object p1, p0, Lcom/ironsource/q7;->S:Lcom/ironsource/z6;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    goto :goto_14
.end method
