###### Class com.applovin.impl.mediation.debugger.ui.testmode.e (com.applovin.impl.mediation.debugger.ui.testmode.e)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/testmode/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/testmode/a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/testmode/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/e;->a:Lcom/applovin/impl/mediation/debugger/ui/testmode/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/e;->a:Lcom/applovin/impl/mediation/debugger/ui/testmode/a;

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/a;->e(Lcom/applovin/impl/mediation/debugger/ui/testmode/a;Landroid/view/View;)V

    return-void
.end method
