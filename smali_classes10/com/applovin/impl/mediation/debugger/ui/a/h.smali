###### Class com.applovin.impl.mediation.debugger.ui.a.h (com.applovin.impl.mediation.debugger.ui.a.h)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/a/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/a/a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/h;->a:Lcom/applovin/impl/mediation/debugger/ui/a/a;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/h;->a:Lcom/applovin/impl/mediation/debugger/ui/a/a;

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->f(Lcom/applovin/impl/mediation/debugger/ui/a/a;Landroid/content/DialogInterface;)V

    return-void
.end method
