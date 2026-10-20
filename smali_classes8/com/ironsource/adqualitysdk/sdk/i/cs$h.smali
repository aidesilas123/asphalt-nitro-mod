###### Class com.ironsource.adqualitysdk.sdk.i.cs.h (com.ironsource.adqualitysdk.sdk.i.cs$h)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cs$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/he$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cs;->ﻏ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/dn;

.field private synthetic b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field private synthetic c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

.field private synthetic d:Ljava/util/List;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/cs;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->e:Lcom/ironsource/adqualitysdk/sdk/i/cs;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/he;Landroid/media/MediaPlayer;)V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->b:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->c:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$h;->d:Ljava/util/List;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    aput-object p2, v4, p1

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->f(Ljava/util/List;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    return-void
.end method
