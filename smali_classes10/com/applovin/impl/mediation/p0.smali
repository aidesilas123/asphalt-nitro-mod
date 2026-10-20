###### Class com.applovin.impl.mediation.p0 (com.applovin.impl.mediation.p0)
.class public final synthetic Lcom/applovin/impl/mediation/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/g$a;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/applovin/mediation/MaxAdListener;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/g$a;Ljava/lang/Runnable;Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/p0;->a:Lcom/applovin/impl/mediation/g$a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/p0;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/applovin/impl/mediation/p0;->c:Lcom/applovin/mediation/MaxAdListener;

    iput-object p4, p0, Lcom/applovin/impl/mediation/p0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/p0;->a:Lcom/applovin/impl/mediation/g$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/p0;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/applovin/impl/mediation/p0;->c:Lcom/applovin/mediation/MaxAdListener;

    iget-object v3, p0, Lcom/applovin/impl/mediation/p0;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/g$a;->t(Lcom/applovin/impl/mediation/g$a;Ljava/lang/Runnable;Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;)V

    return-void
.end method
