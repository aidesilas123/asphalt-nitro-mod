###### Class com.applovin.impl.adview.w0 (com.applovin.impl.adview.w0)
.class public final synthetic Lcom/applovin/impl/adview/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/w0;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/w0;->a:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/q;->f(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
