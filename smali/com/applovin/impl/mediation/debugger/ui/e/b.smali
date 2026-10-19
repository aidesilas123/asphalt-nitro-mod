###### Class com.applovin.impl.mediation.debugger.ui.e.b (com.applovin.impl.mediation.debugger.ui.e.b)
.class public Lcom/applovin/impl/mediation/debugger/ui/e/b;
.super Lcom/applovin/impl/mediation/debugger/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/e/b$a;
    }
.end annotation


# instance fields
.field private aqw:Lcom/applovin/impl/mediation/debugger/ui/d/d;

.field private sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;Z)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 4

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wW()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bO(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->bP(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->wX()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getSdk()Lcom/applovin/impl/sdk/n;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b;->sdk:Lcom/applovin/impl/sdk/n;

    return-object v0
.end method

.method public initialize(Lcom/applovin/impl/sdk/n;)V
    .registers 9

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b;->sdk:Lcom/applovin/impl/sdk/n;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Cm()Lcom/applovin/impl/privacy/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/b/b;->At()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/privacy/b/d;->ct(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->hasUserConsent(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Has User Consent"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/mediation/debugger/ui/e/b;->b(Ljava/lang/String;Z)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Cm()Lcom/applovin/impl/privacy/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/privacy/b/b;->Au()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/privacy/b/c;

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/b/c;->Ay()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_75

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/b/c;->Av()Lcom/applovin/impl/privacy/b/c$a;

    move-result-object v2

    sget-object v6, Lcom/applovin/impl/privacy/b/c$a;->ayI:Lcom/applovin/impl/privacy/b/c$a;

    if-ne v2, v6, :cond_5d

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/b/c;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/e/b;->b(Ljava/lang/String;Z)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_5d
    invoke-virtual {v0}, Lcom/applovin/impl/privacy/b/c;->Av()Lcom/applovin/impl/privacy/b/c$a;

    move-result-object v2

    sget-object v6, Lcom/applovin/impl/privacy/b/c$a;->ayJ:Lcom/applovin/impl/privacy/b/c$a;

    if-ne v2, v6, :cond_33

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/b/c;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/e/b;->b(Ljava/lang/String;Z)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_75
    if-eqz v5, :cond_33

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/b/c;->Av()Lcom/applovin/impl/privacy/b/c$a;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/privacy/b/c$a;->ayJ:Lcom/applovin/impl/privacy/b/c$a;

    if-ne v1, v2, :cond_33

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/b/c;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->hasUserConsent(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/e/b;->b(Ljava/lang/String;Z)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_8f
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/mediation/debugger/ui/e/b$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/e/b;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b;->aqw:Lcom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const-string p1, "Network Consent Statuses"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/e/b;->aqw:Lcom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

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

###### Class com.applovin.impl.mediation.debugger.ui.e.b.a (com.applovin.impl.mediation.debugger.ui.e.b$a)
.class final enum Lcom/applovin/impl/mediation/debugger/ui/e/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/debugger/ui/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/mediation/debugger/ui/e/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum atc:Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

.field public static final enum atd:Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

.field private static final synthetic ate:[Lcom/applovin/impl/mediation/debugger/ui/e/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    const-string v1, "TC_NETWORKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->atc:Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    const-string v3, "AC_NETWORKS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->atd:Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->ate:[Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/e/b$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/mediation/debugger/ui/e/b$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->ate:[Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/mediation/debugger/ui/e/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/mediation/debugger/ui/e/b$a;

    return-object v0
.end method
