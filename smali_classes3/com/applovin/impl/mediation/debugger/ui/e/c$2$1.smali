###### Class com.applovin.impl.mediation.debugger.ui.e.c.AnonymousClass2.AnonymousClass1 (com.applovin.impl.mediation.debugger.ui.e.c$2$1)
.class Lcom/applovin/impl/mediation/debugger/ui/e/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/e/c$2;->onClick(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/sdk/utils/b$a<",
        "Lcom/applovin/mediation/MaxDebuggerTcfStringActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic atn:Ljava/lang/String;

.field final synthetic ato:Ljava/lang/String;

.field final synthetic atp:Lcom/applovin/impl/mediation/debugger/ui/e/c$2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/e/c$2;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/c$2$1;->atp:Lcom/applovin/impl/mediation/debugger/ui/e/c$2;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/e/c$2$1;->atn:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/e/c$2$1;->ato:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/mediation/MaxDebuggerTcfStringActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/e/c$2$1;->atn:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/c$2$1;->ato:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/e/c$2$1;->atp:Lcom/applovin/impl/mediation/debugger/ui/e/c$2;

    iget-object v2, v2, Lcom/applovin/impl/mediation/debugger/ui/e/c$2;->atm:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/e/d;->initialize(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public synthetic onActivityCreated(Landroid/app/Activity;)V
    .registers 2

    check-cast p1, Lcom/applovin/mediation/MaxDebuggerTcfStringActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/e/c$2$1;->a(Lcom/applovin/mediation/MaxDebuggerTcfStringActivity;)V

    return-void
.end method
