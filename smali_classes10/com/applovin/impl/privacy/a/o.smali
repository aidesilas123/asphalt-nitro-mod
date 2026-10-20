###### Class com.applovin.impl.privacy.a.o (com.applovin.impl.privacy.a.o)
.class public final synthetic Lcom/applovin/impl/privacy/a/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/privacy/a/c;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/privacy/a/c;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/privacy/a/o;->a:Lcom/applovin/impl/privacy/a/c;

    iput-object p2, p0, Lcom/applovin/impl/privacy/a/o;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/privacy/a/o;->a:Lcom/applovin/impl/privacy/a/c;

    iget-object v1, p0, Lcom/applovin/impl/privacy/a/o;->b:Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Lcom/applovin/impl/privacy/a/c;->h(Lcom/applovin/impl/privacy/a/c;Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method
