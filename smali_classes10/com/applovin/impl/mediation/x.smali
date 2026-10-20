###### Class com.applovin.impl.mediation.x (com.applovin.impl.mediation.x)
.class public final synthetic Lcom/applovin/impl/mediation/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/g;

.field public final synthetic b:Lcom/applovin/mediation/adapter/MaxSignalProvider;

.field public final synthetic c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lcom/applovin/impl/mediation/g$c;

.field public final synthetic f:Lcom/applovin/impl/mediation/b/h;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/g$c;Lcom/applovin/impl/mediation/b/h;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/x;->a:Lcom/applovin/impl/mediation/g;

    iput-object p2, p0, Lcom/applovin/impl/mediation/x;->b:Lcom/applovin/mediation/adapter/MaxSignalProvider;

    iput-object p3, p0, Lcom/applovin/impl/mediation/x;->c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

    iput-object p4, p0, Lcom/applovin/impl/mediation/x;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/applovin/impl/mediation/x;->e:Lcom/applovin/impl/mediation/g$c;

    iput-object p6, p0, Lcom/applovin/impl/mediation/x;->f:Lcom/applovin/impl/mediation/b/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/mediation/x;->a:Lcom/applovin/impl/mediation/g;

    iget-object v1, p0, Lcom/applovin/impl/mediation/x;->b:Lcom/applovin/mediation/adapter/MaxSignalProvider;

    iget-object v2, p0, Lcom/applovin/impl/mediation/x;->c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

    iget-object v3, p0, Lcom/applovin/impl/mediation/x;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcom/applovin/impl/mediation/x;->e:Lcom/applovin/impl/mediation/g$c;

    iget-object v5, p0, Lcom/applovin/impl/mediation/x;->f:Lcom/applovin/impl/mediation/b/h;

    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/mediation/g;->r(Lcom/applovin/impl/mediation/g;Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/g$c;Lcom/applovin/impl/mediation/b/h;)V

    return-void
.end method
