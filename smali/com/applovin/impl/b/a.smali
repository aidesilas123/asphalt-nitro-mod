###### Class com.applovin.impl.b.a (com.applovin.impl.b.a)
.class public Lcom/applovin/impl/b/a;
.super Lcom/applovin/impl/sdk/ad/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b/a$a;,
        Lcom/applovin/impl/b/a$b;,
        Lcom/applovin/impl/b/a$c;
    }
.end annotation


# instance fields
.field private final aGc:Ljava/lang/String;

.field private final aWI:Ljava/lang/String;

.field private final aWJ:Lcom/applovin/impl/b/j;

.field private final aWK:Lcom/applovin/impl/b/n;

.field private final aWL:Lcom/applovin/impl/b/d;

.field private final aWM:Lcom/applovin/impl/b/c;

.field private final aWN:Lcom/applovin/impl/sdk/a/g;

.field private final aWO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private final aWP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private final createdAtMillis:J

.field private final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/b/a$a;)V
    .registers 6

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->a(Lcom/applovin/impl/b/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->b(Lcom/applovin/impl/b/a$a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->c(Lcom/applovin/impl/b/a$a;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v2

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->d(Lcom/applovin/impl/b/a$a;)Lcom/applovin/impl/sdk/n;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/applovin/impl/sdk/ad/e;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/n;)V

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->e(Lcom/applovin/impl/b/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->f(Lcom/applovin/impl/b/a$a;)Lcom/applovin/impl/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aWJ:Lcom/applovin/impl/b/j;

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->g(Lcom/applovin/impl/b/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aWI:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->h(Lcom/applovin/impl/b/a$a;)Lcom/applovin/impl/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->i(Lcom/applovin/impl/b/a$a;)Lcom/applovin/impl/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->j(Lcom/applovin/impl/b/a$a;)Lcom/applovin/impl/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aWM:Lcom/applovin/impl/b/c;

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->k(Lcom/applovin/impl/b/a$a;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aWO:Ljava/util/Set;

    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->l(Lcom/applovin/impl/b/a$a;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aWP:Ljava/util/Set;

    new-instance v0, Lcom/applovin/impl/sdk/a/g;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/a/g;-><init>(Lcom/applovin/impl/b/a;)V

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aWN:Lcom/applovin/impl/sdk/a/g;

    invoke-virtual {p0}, Lcom/applovin/impl/b/a;->FI()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aGc:Ljava/lang/String;

    goto :goto_5b

    :cond_57
    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/b/a;->aGc:Ljava/lang/String;

    :goto_5b
    invoke-static {p1}, Lcom/applovin/impl/b/a$a;->m(Lcom/applovin/impl/b/a$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/b/a;->createdAtMillis:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/b/a$a;Lcom/applovin/impl/b/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/b/a;-><init>(Lcom/applovin/impl/b/a$a;)V

    return-void
.end method

.method private LS()Ljava/lang/String;
    .registers 4

    const-string v0, "vimp_url"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getClCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{CLCODE}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    return-object v1
.end method

.method private LW()Lcom/applovin/impl/b/n$a;
    .registers 4

    invoke-static {}, Lcom/applovin/impl/b/n$a;->values()[Lcom/applovin/impl/b/n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->aPw:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1a

    array-length v2, v0

    if-ge v1, v2, :cond_1a

    aget-object v0, v0, v1

    return-object v0

    :cond_1a
    sget-object v0, Lcom/applovin/impl/b/n$a;->aYd:Lcom/applovin/impl/b/n$a;

    return-object v0
.end method

.method private Mg()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/impl/b/n;->Mp()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private Mh()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/impl/b/d;->Mp()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/applovin/impl/b/a$b;[Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/b/a$b;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_49

    array-length v0, p2

    if-lez v0, :cond_49

    const/4 v0, 0x0

    sget-object v1, Lcom/applovin/impl/b/a$b;->aWR:Lcom/applovin/impl/b/a$b;

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/applovin/impl/b/n;->Mq()Ljava/util/Map;

    move-result-object v0

    goto :goto_1f

    :cond_13
    sget-object v1, Lcom/applovin/impl/b/a$b;->aWQ:Lcom/applovin/impl/b/a$b;

    if-ne p1, v1, :cond_1f

    iget-object p1, p0, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/applovin/impl/b/d;->Mq()Ljava/util/Map;

    move-result-object v0

    :cond_1f
    :goto_1f
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    array-length v1, p2

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_44

    aget-object v3, p2, v2

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_44
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_49
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public FA()V
    .registers 1

    return-void
.end method

.method public FD()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aGc:Ljava/lang/String;

    return-object v0
.end method

.method public FF()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "vast_is_streaming"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public FH()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    const-string v2, "vast_is_streaming"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public FI()Landroid/net/Uri;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/b/a;->LV()Lcom/applovin/impl/b/o;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/applovin/impl/b/o;->FI()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public FK()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/impl/b/n;->Mn()Landroid/net/Uri;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public FL()Landroid/net/Uri;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/b/a;->FK()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public Gq()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "video_clickable"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/applovin/impl/b/a;->FK()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public Hj()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/d/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "vimp_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getClCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/applovin/impl/b/a;->LS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/e;->Hl()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/e;->Gl()Z

    move-result v7

    iget-object v8, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static/range {v1 .. v8}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ZLcom/applovin/impl/sdk/n;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public LM()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "iopms"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public LN()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "iopmsfsr"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public LO()Lcom/applovin/impl/sdk/a/g;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWN:Lcom/applovin/impl/sdk/a/g;

    return-object v0
.end method

.method public LP()J
    .registers 4

    const-string v0, "real_close_delay"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public LQ()Lcom/applovin/impl/b/a$b;
    .registers 3

    const-string v0, "vast_first_caching_operation"

    const-string v1, "companion_ad"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/applovin/impl/b/a$b;->aWQ:Lcom/applovin/impl/b/a$b;

    return-object v0

    :cond_11
    sget-object v0, Lcom/applovin/impl/b/a$b;->aWR:Lcom/applovin/impl/b/a$b;

    return-object v0
.end method

.method public LR()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "vast_immediate_ad_load"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public LT()Lcom/applovin/impl/b/j;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWJ:Lcom/applovin/impl/b/j;

    return-object v0
.end method

.method public LU()Lcom/applovin/impl/b/n;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    return-object v0
.end method

.method public LV()Lcom/applovin/impl/b/o;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->K(Lcom/applovin/impl/sdk/n;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    invoke-direct {p0}, Lcom/applovin/impl/b/a;->LW()Lcom/applovin/impl/b/n$a;

    move-result-object v2

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_15

    :cond_13
    const-wide/16 v3, 0x0

    :goto_15
    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/impl/b/n;->a(Lcom/applovin/impl/b/n$a;J)Lcom/applovin/impl/b/o;

    move-result-object v0

    return-object v0
.end method

.method public LX()Lcom/applovin/impl/b/d;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    return-object v0
.end method

.method public LY()Lcom/applovin/impl/b/g;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/impl/b/n;->LY()Lcom/applovin/impl/b/g;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public LZ()Z
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/b/a;->LY()Lcom/applovin/impl/b/g;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public Ma()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "vast_fire_click_trackers_on_html_clicks"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public Mb()Ljava/lang/String;
    .registers 3

    const-string v0, "html_template"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mc()Landroid/net/Uri;
    .registers 4

    const-string v0, "html_template_url"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_12
    return-object v1
.end method

.method public Md()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "cache_companion_ad"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public Me()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "cache_video"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public Mf()Lcom/applovin/impl/b/c;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWM:Lcom/applovin/impl/b/c;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/b/a$c;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/b/a$c;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/b/a$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/b/a$c;[Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/b/a$c;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    const-string v1, "\' and events \'"

    const-string v2, "VastAd"

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving trackers of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    sget-object v0, Lcom/applovin/impl/b/a$c;->aWT:Lcom/applovin/impl/b/a$c;

    if-ne p1, v0, :cond_3b

    iget-object p1, p0, Lcom/applovin/impl/b/a;->aWO:Ljava/util/Set;

    return-object p1

    :cond_3b
    sget-object v0, Lcom/applovin/impl/b/a$c;->aWU:Lcom/applovin/impl/b/a$c;

    if-ne p1, v0, :cond_44

    invoke-direct {p0}, Lcom/applovin/impl/b/a;->Mg()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_44
    sget-object v0, Lcom/applovin/impl/b/a$c;->aWV:Lcom/applovin/impl/b/a$c;

    if-ne p1, v0, :cond_4d

    invoke-direct {p0}, Lcom/applovin/impl/b/a;->Mh()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_4d
    sget-object v0, Lcom/applovin/impl/b/a$c;->aWW:Lcom/applovin/impl/b/a$c;

    if-ne p1, v0, :cond_58

    sget-object p1, Lcom/applovin/impl/b/a$b;->aWR:Lcom/applovin/impl/b/a$b;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/b/a$b;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_58
    sget-object v0, Lcom/applovin/impl/b/a$c;->aWX:Lcom/applovin/impl/b/a$c;

    if-ne p1, v0, :cond_63

    sget-object p1, Lcom/applovin/impl/b/a$b;->aWQ:Lcom/applovin/impl/b/a$b;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/b/a$b;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_63
    sget-object v0, Lcom/applovin/impl/b/a$c;->aWZ:Lcom/applovin/impl/b/a$c;

    if-ne p1, v0, :cond_70

    invoke-virtual {p0}, Lcom/applovin/impl/b/a;->LY()Lcom/applovin/impl/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/b/g;->Mp()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_70
    sget-object v0, Lcom/applovin/impl/b/a$c;->aWY:Lcom/applovin/impl/b/a$c;

    if-ne p1, v0, :cond_7d

    invoke-virtual {p0}, Lcom/applovin/impl/b/a;->LY()Lcom/applovin/impl/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/b/g;->Mx()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_7d
    sget-object v0, Lcom/applovin/impl/b/a$c;->aXa:Lcom/applovin/impl/b/a$c;

    if-ne p1, v0, :cond_84

    iget-object p1, p0, Lcom/applovin/impl/b/a;->aWP:Ljava/util/Set;

    return-object p1

    :cond_84
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve trackers of invalid type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public dO(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    const-string v2, "html_template"

    invoke-static {v1, v2, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/b/a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    check-cast p1, Lcom/applovin/impl/b/a;

    iget-object v1, p0, Lcom/applovin/impl/b/a;->title:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v3, p1, Lcom/applovin/impl/b/a;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_24

    :cond_20
    iget-object v1, p1, Lcom/applovin/impl/b/a;->title:Ljava/lang/String;

    if-eqz v1, :cond_25

    :goto_24
    return v2

    :cond_25
    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWI:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v3, p1, Lcom/applovin/impl/b/a;->aWI:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_36

    :cond_32
    iget-object v1, p1, Lcom/applovin/impl/b/a;->aWI:Ljava/lang/String;

    if-eqz v1, :cond_37

    :goto_36
    return v2

    :cond_37
    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWJ:Lcom/applovin/impl/b/j;

    if-eqz v1, :cond_44

    iget-object v3, p1, Lcom/applovin/impl/b/a;->aWJ:Lcom/applovin/impl/b/j;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/b/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_48

    :cond_44
    iget-object v1, p1, Lcom/applovin/impl/b/a;->aWJ:Lcom/applovin/impl/b/j;

    if-eqz v1, :cond_49

    :goto_48
    return v2

    :cond_49
    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    if-eqz v1, :cond_56

    iget-object v3, p1, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/b/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_5a

    :cond_56
    iget-object v1, p1, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    if-eqz v1, :cond_5b

    :goto_5a
    return v2

    :cond_5b
    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    if-eqz v1, :cond_68

    iget-object v3, p1, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_6c

    :cond_68
    iget-object v1, p1, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    if-eqz v1, :cond_6d

    :goto_6c
    return v2

    :cond_6d
    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWM:Lcom/applovin/impl/b/c;

    if-eqz v1, :cond_7a

    iget-object v3, p1, Lcom/applovin/impl/b/a;->aWM:Lcom/applovin/impl/b/c;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/b/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_7e

    :cond_7a
    iget-object v1, p1, Lcom/applovin/impl/b/a;->aWM:Lcom/applovin/impl/b/c;

    if-eqz v1, :cond_7f

    :goto_7e
    return v2

    :cond_7f
    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWO:Ljava/util/Set;

    if-eqz v1, :cond_8c

    iget-object v3, p1, Lcom/applovin/impl/b/a;->aWO:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    goto :goto_90

    :cond_8c
    iget-object v1, p1, Lcom/applovin/impl/b/a;->aWO:Ljava/util/Set;

    if-eqz v1, :cond_91

    :goto_90
    return v2

    :cond_91
    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWP:Ljava/util/Set;

    iget-object p1, p1, Lcom/applovin/impl/b/a;->aWP:Ljava/util/Set;

    if-eqz v1, :cond_9c

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a0

    :cond_9c
    if-nez p1, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v0, 0x0

    :goto_a0
    return v0
.end method

.method public synthetic getAdEventTracker()Lcom/applovin/impl/sdk/a/b;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/b/a;->LO()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAtMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/b/a;->createdAtMillis:J

    return-wide v0
.end method

.method public getOriginalFullResponse()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hasVideoUrl()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/applovin/impl/b/n;->MG()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public hashCode()I
    .registers 4

    invoke-super {p0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/b/a;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWI:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWJ:Lcom/applovin/impl/b/j;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/applovin/impl/b/j;->hashCode()I

    move-result v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/applovin/impl/b/n;->hashCode()I

    move-result v1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/applovin/impl/b/d;->hashCode()I

    move-result v1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWM:Lcom/applovin/impl/b/c;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/applovin/impl/b/c;->hashCode()I

    move-result v1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWO:Ljava/util/Set;

    if-eqz v1, :cond_5e

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWP:Ljava/util/Set;

    if-eqz v1, :cond_6a

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v2

    :cond_6a
    add-int/2addr v0, v2

    return v0
.end method

.method public isOpenMeasurementEnabled()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "omsdk_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/b/a;->aWM:Lcom/applovin/impl/b/c;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastAd{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/a;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/b/a;->aWI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", systemInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWJ:Lcom/applovin/impl/b/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoCreative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWK:Lcom/applovin/impl/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", companionAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWL:Lcom/applovin/impl/b/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adVerifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWM:Lcom/applovin/impl/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWO:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/a;->aWP:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
