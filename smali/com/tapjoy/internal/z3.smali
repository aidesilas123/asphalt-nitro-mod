###### Class com.tapjoy.internal.z3 (com.tapjoy.internal.z3)
.class public final Lcom/tapjoy/internal/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/y;


# direct methods
.method public constructor <init>(Lcom/tapjoy/y;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/z3;->a:Lcom/tapjoy/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p2, p0, Lcom/tapjoy/internal/z3;->a:Lcom/tapjoy/y;

    invoke-virtual {p2}, Lcom/tapjoy/y;->getLastUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/tapjoy/internal/z3;->a:Lcom/tapjoy/y;

    iget-object v0, p2, Lcom/tapjoy/y;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/tapjoy/y;->d(Ljava/lang/String;)V

    goto :goto_1d

    :cond_14
    iget-object p2, p0, Lcom/tapjoy/internal/z3;->a:Lcom/tapjoy/y;

    invoke-virtual {p2}, Lcom/tapjoy/y;->getLastUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tapjoy/y;->d(Ljava/lang/String;)V

    :goto_1d
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
