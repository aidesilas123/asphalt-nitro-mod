###### Class com.applovin.impl.mediation.debugger.ui.d.c (com.applovin.impl.mediation.debugger.ui.d.c)
.class public Lcom/applovin/impl/mediation/debugger/ui/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/d/c$a;,
        Lcom/applovin/impl/mediation/debugger/ui/d/c$b;
    }
.end annotation


# instance fields
.field protected ahg:I

.field protected apK:I

.field protected apL:Ljava/lang/String;

.field protected aqT:Ljava/lang/String;

.field protected asA:I

.field protected asB:Z

.field protected asu:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

.field protected asv:Landroid/text/SpannedString;

.field protected asw:Landroid/text/SpannedString;

.field protected asx:I

.field protected asy:I

.field protected asz:I

.field protected iV:Z


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/d/c$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asx:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asy:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->ahg:I

    iput v1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->apK:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asz:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asA:I

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->asu:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asu:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    iget-boolean v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->iV:Z

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->iV:Z

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->asv:Landroid/text/SpannedString;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asv:Landroid/text/SpannedString;

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->asw:Landroid/text/SpannedString;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asw:Landroid/text/SpannedString;

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->aqT:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->aqT:Ljava/lang/String;

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->apL:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->apL:Ljava/lang/String;

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->asx:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asx:I

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->asy:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asy:I

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->ahg:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->ahg:I

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->apK:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->apK:I

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->asz:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asz:I

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->asA:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asA:I

    iget-boolean p1, p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->asB:Z

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asB:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/d/c$a;Lcom/applovin/impl/mediation/debugger/ui/d/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;-><init>(Lcom/applovin/impl/mediation/debugger/ui/d/c$a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/d/c$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asx:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asy:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->ahg:I

    iput v1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->apK:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asz:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asA:I

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asu:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    return-void
.end method

.method public static a(Lcom/applovin/impl/mediation/debugger/ui/d/c$b;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;
    .registers 2

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;-><init>(Lcom/applovin/impl/mediation/debugger/ui/d/c$b;)V

    return-object v0
.end method

.method public static getViewTypeCount()I
    .registers 1

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->asH:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->wY()I

    move-result v0

    return v0
.end method

.method public static wW()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->asG:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->a(Lcom/applovin/impl/mediation/debugger/ui/d/c$b;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTextColor()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->ahg:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->iV:Z

    return v0
.end method

.method public tO()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asy:I

    return v0
.end method

.method public tP()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asA:I

    return v0
.end method

.method public vP()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->apK:I

    return v0
.end method

.method public vQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->apL:Ljava/lang/String;

    return-object v0
.end method

.method public wB()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asx:I

    return v0
.end method

.method public wG()Landroid/text/SpannedString;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asw:Landroid/text/SpannedString;

    return-object v0
.end method

.method public wH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asB:Z

    return v0
.end method

.method public wS()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asu:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->wY()I

    move-result v0

    return v0
.end method

.method public wT()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asu:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->wT()I

    move-result v0

    return v0
.end method

.method public wU()Landroid/text/SpannedString;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asv:Landroid/text/SpannedString;

    return-object v0
.end method

.method public wV()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asz:I

    return v0
.end method

.method public wk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->aqT:Ljava/lang/String;

    return-object v0
.end method
