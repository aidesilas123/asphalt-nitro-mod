###### Class com.json.cb (com.ironsource.cb)
.class public Lcom/ironsource/cb;
.super Lcom/ironsource/u1;
.source "SourceFile"


# static fields
.field private static Q:Lcom/ironsource/cb;


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

    iput-object v0, p0, Lcom/ironsource/cb;->S:Lcom/ironsource/z6;

    const-string v0, "outcome"

    iput-object v0, p0, Lcom/ironsource/u1;->H:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/ironsource/u1;->G:I

    const-string v0, "RV"

    iput-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/cb;->R:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized i()Lcom/ironsource/cb;
    .registers 2

    const-class v0, Lcom/ironsource/cb;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/cb;->Q:Lcom/ironsource/cb;

    if-nez v1, :cond_11

    new-instance v1, Lcom/ironsource/cb;

    invoke-direct {v1}, Lcom/ironsource/cb;-><init>()V

    sput-object v1, Lcom/ironsource/cb;->Q:Lcom/ironsource/cb;

    invoke-virtual {v1}, Lcom/ironsource/u1;->F()V

    :cond_11
    sget-object v1, Lcom/ironsource/cb;->Q:Lcom/ironsource/cb;
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

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x4b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x4b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x4ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x4bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x4bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x4bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    const/16 v1, 0x4c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected D(Lcom/ironsource/a4;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x202

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x131

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x4b3

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x515

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x516

    if-ne p1, v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    :goto_2c
    return p1
.end method

.method protected E(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_10

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_d

    const/16 v0, 0x190

    if-ge p1, v0, :cond_d

    goto :goto_10

    :cond_d
    const-string p1, ""

    return-object p1

    :cond_10
    :goto_10
    iget-object p1, p0, Lcom/ironsource/cb;->R:Ljava/lang/String;

    return-object p1
.end method

.method protected K(Lcom/ironsource/a4;)V
    .registers 4

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_24

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_24

    :cond_18
    invoke-virtual {p1}, Lcom/ironsource/a4;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/cb;->R:Ljava/lang/String;

    :cond_24
    return-void
.end method

.method protected U(Lcom/ironsource/a4;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected W(Lcom/ironsource/a4;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    const/16 v0, 0x131

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected y(Lcom/ironsource/a4;)I
    .registers 3

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/u1;->I(I)I

    move-result p1

    sget-object v0, Lcom/ironsource/u1$e;->c:Lcom/ironsource/u1$e;

    invoke-virtual {v0}, Lcom/ironsource/u1$e;->a()I

    move-result v0

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iget-object v0, p0, Lcom/ironsource/cb;->S:Lcom/ironsource/z6;

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    goto :goto_1c

    :cond_1a
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    :goto_1c
    invoke-interface {v0, p1}, Lcom/ironsource/z6;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p1

    return p1
.end method
