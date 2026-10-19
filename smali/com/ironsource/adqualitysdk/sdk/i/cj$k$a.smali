###### Class com.ironsource.adqualitysdk.sdk.i.cj.k.a (com.ironsource.adqualitysdk.sdk.i.cj$k$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cj$k$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cj$k;->b(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Landroid/app/Activity;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/cj$k;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cj$k;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$k$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj$k;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$k$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$k$a;->e:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$k$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj$k;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$k;->h:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$k$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$k$a;->e:Landroid/app/Activity;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->K(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;ZZLjava/util/List;)V

    return-void
.end method
