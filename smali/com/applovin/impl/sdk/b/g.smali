###### Class com.applovin.impl.sdk.b.g (com.applovin.impl.sdk.b.g)
.class public final synthetic Lcom/applovin/impl/sdk/b/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/b/b;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/b/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/g;->a:Lcom/applovin/impl/sdk/b/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/g;->a:Lcom/applovin/impl/sdk/b/b;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/b/b;->e(Lcom/applovin/impl/sdk/b/b;Landroid/content/DialogInterface;I)V

    return-void
.end method
