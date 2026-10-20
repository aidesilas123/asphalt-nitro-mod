###### Class com.applovin.impl.mediation.debugger.ui.b.a.b (com.applovin.impl.mediation.debugger.ui.b.a.b)
.class public Lcom/applovin/impl/mediation/debugger/ui/b/a/b;
.super Lcom/applovin/impl/mediation/debugger/ui/d/c;
.source "SourceFile"


# instance fields
.field private final E:Landroid/content/Context;

.field private final arW:Lcom/applovin/impl/privacy/a$a;

.field private final arX:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/privacy/a$a;ZLandroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->asG:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c;-><init>(Lcom/applovin/impl/mediation/debugger/ui/d/c$b;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/b;->arW:Lcom/applovin/impl/privacy/a$a;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/b;->E:Landroid/content/Context;

    new-instance p3, Landroid/text/SpannedString;

    invoke-virtual {p1}, Lcom/applovin/impl/privacy/a$a;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->asv:Landroid/text/SpannedString;

    iput-boolean p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/b;->arX:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public wG()Landroid/text/SpannedString;
    .registers 4

    new-instance v0, Landroid/text/SpannedString;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/b;->arW:Lcom/applovin/impl/privacy/a$a;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/b;->E:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/privacy/a$a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public wH()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/b;->arW:Lcom/applovin/impl/privacy/a$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/b;->E:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/privacy/a$a;->B(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/b;->arX:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method
