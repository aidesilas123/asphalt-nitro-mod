###### Class com.applovin.impl.sdk.c1 (com.applovin.impl.sdk.c1)
.class public final synthetic Lcom/applovin/impl/sdk/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/m;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/m;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/c1;->a:Lcom/applovin/impl/sdk/m;

    iput-object p2, p0, Lcom/applovin/impl/sdk/c1;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/c1;->a:Lcom/applovin/impl/sdk/m;

    iget-object v1, p0, Lcom/applovin/impl/sdk/c1;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/m;->d(Lcom/applovin/impl/sdk/m;Landroid/app/Activity;)V

    return-void
.end method
