###### Class com.applovin.impl.privacy.a.i.AnonymousClass6 (com.applovin.impl.privacy.a.i$6)
.class Lcom/applovin/impl/privacy/a/i$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/privacy/a/i;->c(Lcom/applovin/impl/privacy/a/e;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axB:Landroid/app/Activity;

.field final synthetic ayr:Lcom/applovin/impl/privacy/a/i;

.field final synthetic ays:Lcom/applovin/impl/privacy/a/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/privacy/a/i;Lcom/applovin/impl/privacy/a/e;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/privacy/a/i$6;->ayr:Lcom/applovin/impl/privacy/a/i;

    iput-object p2, p0, Lcom/applovin/impl/privacy/a/i$6;->ays:Lcom/applovin/impl/privacy/a/e;

    iput-object p3, p0, Lcom/applovin/impl/privacy/a/i$6;->axB:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/applovin/sdk/AppLovinCmpError;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/privacy/a/i$6;->ayr:Lcom/applovin/impl/privacy/a/i;

    iget-object v1, p0, Lcom/applovin/impl/privacy/a/i$6;->ays:Lcom/applovin/impl/privacy/a/e;

    iget-object v2, p0, Lcom/applovin/impl/privacy/a/i$6;->axB:Landroid/app/Activity;

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/privacy/a/i;->a(Lcom/applovin/impl/privacy/a/i;Lcom/applovin/impl/privacy/a/e;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method
