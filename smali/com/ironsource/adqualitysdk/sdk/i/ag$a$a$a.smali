###### Class com.ironsource.adqualitysdk.sdk.i.ag.a.C0333a.C0334a (com.ironsource.adqualitysdk.sdk.i.ag$a$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ip;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->c:Lcom/ironsource/adqualitysdk/sdk/i/is;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/is;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V

    return-void
.end method
