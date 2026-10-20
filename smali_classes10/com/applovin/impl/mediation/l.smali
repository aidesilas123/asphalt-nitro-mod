###### Class com.applovin.impl.mediation.l (com.applovin.impl.mediation.l)
.class public final synthetic Lcom/applovin/impl/mediation/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/MediationServiceImpl$a;

.field public final synthetic b:Lcom/applovin/mediation/MaxAd;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/MediationServiceImpl$a;Lcom/applovin/mediation/MaxAd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/l;->a:Lcom/applovin/impl/mediation/MediationServiceImpl$a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/l;->b:Lcom/applovin/mediation/MaxAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/l;->a:Lcom/applovin/impl/mediation/MediationServiceImpl$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/l;->b:Lcom/applovin/mediation/MaxAd;

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->g(Lcom/applovin/impl/mediation/MediationServiceImpl$a;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method
