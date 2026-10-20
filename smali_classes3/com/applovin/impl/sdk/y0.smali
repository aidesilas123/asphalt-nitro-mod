###### Class com.applovin.impl.sdk.y0 (com.applovin.impl.sdk.y0)
.class public final synthetic Lcom/applovin/impl/sdk/y0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/l$a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/l$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/y0;->a:Lcom/applovin/impl/sdk/l$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/y0;->a:Lcom/applovin/impl/sdk/l$a;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/l;->d(Lcom/applovin/impl/sdk/l$a;Landroid/content/DialogInterface;I)V

    return-void
.end method
