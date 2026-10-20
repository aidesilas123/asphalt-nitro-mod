###### Class com.applovin.impl.privacy.a.p (com.applovin.impl.privacy.a.p)
.class public final synthetic Lcom/applovin/impl/privacy/a/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/privacy/a/c;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/privacy/a/c;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/privacy/a/p;->a:Lcom/applovin/impl/privacy/a/c;

    iput-object p2, p0, Lcom/applovin/impl/privacy/a/p;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/privacy/a/p;->a:Lcom/applovin/impl/privacy/a/c;

    iget-object v1, p0, Lcom/applovin/impl/privacy/a/p;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/impl/privacy/a/c;->i(Lcom/applovin/impl/privacy/a/c;Landroid/app/Activity;)V

    return-void
.end method
