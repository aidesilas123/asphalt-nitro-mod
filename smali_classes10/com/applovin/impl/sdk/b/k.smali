###### Class com.applovin.impl.sdk.b.k (com.applovin.impl.sdk.b.k)
.class public final synthetic Lcom/applovin/impl/sdk/b/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/k;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/k;->a:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/b/b;->i(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
