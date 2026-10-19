###### Class com.applovin.impl.mediation.b (com.applovin.impl.mediation.b)
.class public Lcom/applovin/impl/mediation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/a$a;
.implements Lcom/applovin/impl/mediation/c$a;


# instance fields
.field private final akS:Lcom/applovin/impl/mediation/a;

.field private final akT:Lcom/applovin/impl/mediation/c;

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b;->sdk:Lcom/applovin/impl/sdk/n;

    new-instance v0, Lcom/applovin/impl/mediation/a;

    invoke-direct {v0, p1}, Lcom/applovin/impl/mediation/a;-><init>(Lcom/applovin/impl/sdk/n;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/b;->akS:Lcom/applovin/impl/mediation/a;

    new-instance v0, Lcom/applovin/impl/mediation/c;

    invoke-direct {v0, p1, p0}, Lcom/applovin/impl/mediation/c;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/mediation/c$a;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/b;->akT:Lcom/applovin/impl/mediation/c;

    return-void
.end method

.method private d(Lcom/applovin/impl/mediation/b/c;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->xP()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->xC()Lcom/applovin/impl/mediation/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/g;->uf()Lcom/applovin/impl/mediation/MediationServiceImpl$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->c(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    :cond_1a
    return-void
.end method

.method private synthetic e(Lcom/applovin/impl/mediation/b/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b;->d(Lcom/applovin/impl/mediation/b/c;)V

    return-void
.end method

.method public static synthetic f(Lcom/applovin/impl/mediation/b;Lcom/applovin/impl/mediation/b/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b;->e(Lcom/applovin/impl/mediation/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/b/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/c;->xZ()J

    move-result-wide v0

    new-instance v2, Lcom/applovin/impl/mediation/n;

    invoke-direct {v2, p0, p1}, Lcom/applovin/impl/mediation/n;-><init>(Lcom/applovin/impl/mediation/b;Lcom/applovin/impl/mediation/b/c;)V

    invoke-static {v2, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b(Lcom/applovin/impl/mediation/b/c;)V
    .registers 7

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/c;->xW()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f

    iget-object v2, p0, Lcom/applovin/impl/mediation/b;->akT:Lcom/applovin/impl/mediation/c;

    invoke-virtual {v2, p1, v0, v1}, Lcom/applovin/impl/mediation/c;->a(Lcom/applovin/impl/mediation/b/c;J)V

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/mediation/b;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "should_schedule_ad_hidden_on_ad_destroy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/c;->xX()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/c;->xY()Z

    move-result v1

    if-nez v1, :cond_33

    if-eqz v0, :cond_3d

    :cond_33
    iget-object v1, p0, Lcom/applovin/impl/mediation/b;->akS:Lcom/applovin/impl/mediation/a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/a;->ay(Z)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b;->akS:Lcom/applovin/impl/mediation/a;

    invoke-virtual {v0, p1, p0}, Lcom/applovin/impl/mediation/a;->a(Lcom/applovin/impl/mediation/b/c;Lcom/applovin/impl/mediation/a$a;)V

    :cond_3d
    return-void
.end method

.method public c(Lcom/applovin/impl/mediation/b/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b;->d(Lcom/applovin/impl/mediation/b/c;)V

    return-void
.end method

.method public tS()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b;->akT:Lcom/applovin/impl/mediation/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/c;->tT()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b;->akS:Lcom/applovin/impl/mediation/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a;->W()V

    return-void
.end method
