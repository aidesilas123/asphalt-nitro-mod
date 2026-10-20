###### Class com.applovin.impl.mediation.debugger.ui.a.d.AnonymousClass1 (com.applovin.impl.mediation.debugger.ui.a.d$1)
.class Lcom/applovin/impl/mediation/debugger/ui/a/d$1;
.super Lcom/applovin/impl/mediation/debugger/ui/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/a/d;->initialize(Ljava/util/List;ZLcom/applovin/impl/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqE:Ljava/util/List;

.field final synthetic aqF:Lcom/applovin/impl/mediation/debugger/ui/a/d;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/d;Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/d$1;->aqF:Lcom/applovin/impl/mediation/debugger/ui/a/d;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/d$1;->aqE:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected gg(I)I
    .registers 2

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/d$1;->aqE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected gh(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected gi(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/d$1;->aqF:Lcom/applovin/impl/mediation/debugger/ui/a/d;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/a/d;->a(Lcom/applovin/impl/mediation/debugger/ui/a/d;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected tM()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
