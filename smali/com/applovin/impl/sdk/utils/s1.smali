###### Class com.applovin.impl.sdk.utils.s1 (com.applovin.impl.sdk.utils.s1)
.class public final synthetic Lcom/applovin/impl/sdk/utils/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/s1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/s1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/s1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/s1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/u;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
