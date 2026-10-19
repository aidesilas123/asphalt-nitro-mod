###### Class com.applovin.impl.sdk.a1 (com.applovin.impl.sdk.a1)
.class public final synthetic Lcom/applovin/impl/sdk/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/l;

.field public final synthetic b:Lcom/applovin/impl/sdk/l$a;

.field public final synthetic c:Lcom/applovin/impl/sdk/n;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/l$a;Lcom/applovin/impl/sdk/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/a1;->a:Lcom/applovin/impl/sdk/l;

    iput-object p2, p0, Lcom/applovin/impl/sdk/a1;->b:Lcom/applovin/impl/sdk/l$a;

    iput-object p3, p0, Lcom/applovin/impl/sdk/a1;->c:Lcom/applovin/impl/sdk/n;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/a1;->a:Lcom/applovin/impl/sdk/l;

    iget-object v1, p0, Lcom/applovin/impl/sdk/a1;->b:Lcom/applovin/impl/sdk/l$a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/a1;->c:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/applovin/impl/sdk/l;->f(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/l$a;Lcom/applovin/impl/sdk/n;Landroid/content/DialogInterface;I)V

    return-void
.end method
