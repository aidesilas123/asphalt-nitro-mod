###### Class com.applovin.impl.sdk.utils.t1 (com.applovin.impl.sdk.utils.t1)
.class public final synthetic Lcom/applovin/impl/sdk/utils/t1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lcom/applovin/impl/sdk/ad/e;

.field public final synthetic c:Lcom/applovin/impl/sdk/n;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/n;Landroid/content/Context;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/t1;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/t1;->b:Lcom/applovin/impl/sdk/ad/e;

    iput-object p3, p0, Lcom/applovin/impl/sdk/utils/t1;->c:Lcom/applovin/impl/sdk/n;

    iput-object p4, p0, Lcom/applovin/impl/sdk/utils/t1;->d:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/applovin/impl/sdk/utils/t1;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/t1;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/t1;->b:Lcom/applovin/impl/sdk/ad/e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/t1;->c:Lcom/applovin/impl/sdk/n;

    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/t1;->d:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/applovin/impl/sdk/utils/t1;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/u;->g(Ljava/lang/ref/WeakReference;Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/n;Landroid/content/Context;Z)V

    return-void
.end method
