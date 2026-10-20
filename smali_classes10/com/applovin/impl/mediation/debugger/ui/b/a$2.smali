###### Class com.applovin.impl.mediation.debugger.ui.b.a.AnonymousClass2 (com.applovin.impl.mediation.debugger.ui.b.a$2)
.class Lcom/applovin/impl/mediation/debugger/ui/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/b/a;->setListAdapter(Lcom/applovin/impl/mediation/debugger/ui/b/b;Lcom/applovin/impl/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aky:Lcom/applovin/impl/sdk/a;

.field final synthetic aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/b/a;Lcom/applovin/impl/sdk/a;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aky:Lcom/applovin/impl/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
    .registers 8

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->wP()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$e;->arM:Lcom/applovin/impl/mediation/debugger/ui/b/b$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->vQ()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_24b

    :cond_1b
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$e;->arN:Lcom/applovin/impl/mediation/debugger/ui/b/b$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_a6

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cl()Lcom/applovin/impl/privacy/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/privacy/a/c;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->wQ()I

    move-result p1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cl()Lcom/applovin/impl/privacy/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/privacy/a/c;->zX()Lcom/applovin/impl/privacy/a/d$a;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/privacy/a/d$a;->axR:Lcom/applovin/impl/privacy/a/d$a;

    if-ne v1, v2, :cond_49

    add-int/lit8 p1, p1, 0x1

    :cond_49
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$c;->arC:Lcom/applovin/impl/mediation/debugger/ui/b/b$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_75

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cl()Lcom/applovin/impl/privacy/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/privacy/a/c;->getPrivacyPolicyUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6b

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cl()Lcom/applovin/impl/privacy/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/privacy/a/c;->getPrivacyPolicyUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/applovin/impl/sdk/n;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/s;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/n;)Z

    goto :goto_74

    :cond_6b
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-string p2, "Missing Privacy Policy URL"

    const-string v0, "You cannot use the AppLovin SDK\'s consent flow without defining a Privacy Policy URL"

    invoke-static {p2, v0, p1}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_74
    return-void

    :cond_75
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$c;->arD:Lcom/applovin/impl/mediation/debugger/ui/b/b$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_97

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cl()Lcom/applovin/impl/privacy/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/privacy/a/c;->getTermsOfServiceUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_96

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cl()Lcom/applovin/impl/privacy/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/privacy/a/c;->getTermsOfServiceUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/applovin/impl/sdk/n;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/s;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/n;)Z

    :cond_96
    return-void

    :cond_97
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->vQ()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_24b

    :cond_a6
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$e;->arO:Lcom/applovin/impl/mediation/debugger/ui/b/b$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_10b

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->wQ()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$d;->arG:Lcom/applovin/impl/mediation/debugger/ui/b/b$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_ef

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Cm()Lcom/applovin/impl/privacy/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/privacy/b/b;->Am()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e2

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerTcfInfoListActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aky:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto/16 :goto_24b

    :cond_e2
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->vQ()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-string v0, ""

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_24b

    :cond_ef
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->wQ()I

    move-result p1

    sget-object p2, Lcom/applovin/impl/mediation/debugger/ui/b/b$d;->arH:Lcom/applovin/impl/mediation/debugger/ui/b/b$d;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_24b

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerTcfConsentStatusesListActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aky:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$2;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$2;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto/16 :goto_24b

    :cond_10b
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$e;->arP:Lcom/applovin/impl/mediation/debugger/ui/b/b$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_229

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->wQ()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->arn:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_14a

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->wi()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13f

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerAdUnitsListActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aky:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$3;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$3;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto/16 :goto_24b

    :cond_13f
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-string p2, "No live ad units"

    const-string v0, "Please setup or enable your MAX ad units on https://applovin.com."

    invoke-static {p2, v0, p1}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_24b

    :cond_14a
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->wQ()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->aro:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "Please complete integrations in order to access this."

    const-string v3, "Complete Integrations"

    const-string v4, "Restart Required"

    if-ne v0, v1, :cond_1b2

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->wl()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_184

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->wm()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_17d

    goto :goto_184

    :cond_17d
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v3, v2, p1}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_24b

    :cond_184
    :goto_184
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->CE()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1a2

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->vQ()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v4, p1, p2}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_1a2
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aky:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$4;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$4;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto/16 :goto_24b

    :cond_1b2
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->wQ()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->arp:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_20e

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->CE()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1e9

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->CE()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->xl()V

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->vQ()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v4, p1, p2}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_1e9
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->wn()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_208

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerTestModeNetworkActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aky:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$5;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$5;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto :goto_24b

    :cond_208
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v3, v2, p1}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_24b

    :cond_20e
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->wQ()I

    move-result p1

    sget-object p2, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->arq:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_24b

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerAdUnitsListActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aky:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$6;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$6;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto :goto_24b

    :cond_229
    sget-object p1, Lcom/applovin/impl/mediation/debugger/ui/b/b$e;->arQ:Lcom/applovin/impl/mediation/debugger/ui/b/b$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq v0, p1, :cond_239

    sget-object p1, Lcom/applovin/impl/mediation/debugger/ui/b/b$e;->arR:Lcom/applovin/impl/mediation/debugger/ui/b/b$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne v0, p1, :cond_24b

    :cond_239
    instance-of p1, p2, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    if-eqz p1, :cond_24b

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aqN:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class v0, Lcom/applovin/mediation/MaxDebuggerDetailActivity;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->aky:Lcom/applovin/impl/sdk/a;

    new-instance v2, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$7;

    invoke-direct {v2, p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$7;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    :cond_24b
    :goto_24b
    return-void
.end method
