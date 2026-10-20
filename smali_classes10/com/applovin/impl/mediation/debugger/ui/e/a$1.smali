###### Class com.applovin.impl.mediation.debugger.ui.e.a.AnonymousClass1 (com.applovin.impl.mediation.debugger.ui.e.a$1)
.class Lcom/applovin/impl/mediation/debugger/ui/e/a$1;
.super Lcom/applovin/impl/mediation/debugger/ui/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/e/a;->initialize(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/applovin/impl/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asM:Ljava/util/Set;

.field final synthetic asN:Ljava/util/Set;

.field final synthetic asO:Ljava/util/Set;

.field final synthetic asP:Ljava/util/Set;

.field final synthetic asQ:Ljava/util/Set;

.field final synthetic asR:Lcom/applovin/impl/mediation/debugger/ui/e/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/e/a;Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 8

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asR:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asM:Ljava/util/Set;

    iput-object p4, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asN:Ljava/util/Set;

    iput-object p5, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asO:Ljava/util/Set;

    iput-object p6, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asP:Ljava/util/Set;

    iput-object p7, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asQ:Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected gg(I)I
    .registers 3

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asS:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asM:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1

    :cond_f
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asT:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asN:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1

    :cond_1e
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asU:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2d

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asO:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1

    :cond_2d
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asV:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3c

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asP:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1

    :cond_3c
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asQ:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1
.end method

.method protected gh(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asS:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_10

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "MISSING TCF VENDORS (TC STRING)"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_10
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asT:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_20

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "MISSING ATP NETWORKS (AC STRING)"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_20
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asU:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_30

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "LISTED TCF VENDORS (TC STRING)"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_30
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asV:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_40

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "LISTED ATP NETWORKS (AC STRING)"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_40
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "NON-CONFIGURABLE NETWORKS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected gi(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asS:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asM:Ljava/util/Set;

    goto :goto_32

    :cond_d
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asT:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_18

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asN:Ljava/util/Set;

    goto :goto_32

    :cond_18
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asU:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_24

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asO:Ljava/util/Set;

    :goto_22
    const/4 v1, 0x0

    goto :goto_32

    :cond_24
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->asV:Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2f

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asP:Ljava/util/Set;

    goto :goto_22

    :cond_2f
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asQ:Ljava/util/Set;

    goto :goto_22

    :goto_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->asR:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v3, v2, v1}, Lcom/applovin/impl/mediation/debugger/ui/e/a;->a(Lcom/applovin/impl/mediation/debugger/ui/e/a;Ljava/lang/String;Z)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_55
    return-object v0
.end method

.method protected tM()I
    .registers 2

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/e/a$a;->values()[Lcom/applovin/impl/mediation/debugger/ui/e/a$a;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
