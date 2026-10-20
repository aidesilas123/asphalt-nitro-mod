###### Class com.applovin.impl.mediation.debugger.ui.e.b.AnonymousClass1 (com.applovin.impl.mediation.debugger.ui.e.b$1)
.class Lcom/applovin/impl/mediation/debugger/ui/e/b$1;
.super Lcom/applovin/impl/mediation/debugger/ui/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/e/b;->initialize(Lcom/applovin/impl/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asY:Ljava/util/ArrayList;

.field final synthetic asZ:Ljava/util/ArrayList;

.field final synthetic ata:Z

.field final synthetic atb:Lcom/applovin/impl/mediation/debugger/ui/e/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/e/b;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 6

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->atb:Lcom/applovin/impl/mediation/debugger/ui/e/b;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->asY:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->asZ:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->ata:Z

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected gg(I)I
    .registers 3

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->atc:Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->asY:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_f
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->asZ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method protected gh(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->atc:Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_10

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "TCF VENDORS (TC STRING)"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_10
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->ata:Z

    if-eqz v0, :cond_19

    const-string v0, "ATP NETWORKS (AC STRING)"

    goto :goto_1b

    :cond_19
    const-string v0, "APPLOVIN PRIVACY SETTING"

    :goto_1b
    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected gi(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->atc:Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->asY:Ljava/util/ArrayList;

    return-object p1

    :cond_b
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;->asZ:Ljava/util/ArrayList;

    return-object p1
.end method

.method protected tM()I
    .registers 2

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->values()[Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
