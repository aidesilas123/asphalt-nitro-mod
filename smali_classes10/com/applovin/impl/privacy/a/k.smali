###### Class com.applovin.impl.privacy.a.k (com.applovin.impl.privacy.a.k)
.class public final synthetic Lcom/applovin/impl/privacy/a/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/privacy/a/k;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/privacy/a/k;->a:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/privacy/a/c;->c(Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method
