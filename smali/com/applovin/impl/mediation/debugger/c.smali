###### Class com.applovin.impl.mediation.debugger.c (com.applovin.impl.mediation.debugger.c)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/b;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/c;->a:Lcom/applovin/impl/mediation/debugger/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/c;->a:Lcom/applovin/impl/mediation/debugger/b;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/mediation/debugger/b;->e(Lcom/applovin/impl/mediation/debugger/b;Landroid/content/DialogInterface;I)V

    return-void
.end method
