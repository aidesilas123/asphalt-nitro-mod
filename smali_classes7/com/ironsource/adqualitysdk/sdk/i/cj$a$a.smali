###### Class com.ironsource.adqualitysdk.sdk.i.cj.a.C0343a (com.ironsource.adqualitysdk.sdk.i.cj$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/ig;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cj$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Z

.field private synthetic f:Ljava/util/List;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/cj$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cj$a;Ljava/lang/String;ZLjava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/cj$a;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;->e:Z

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;->f:Ljava/util/List;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ig;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/cj$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;->e:Z

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;->f:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->K(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;ZZLjava/util/List;)V

    return-void
.end method
