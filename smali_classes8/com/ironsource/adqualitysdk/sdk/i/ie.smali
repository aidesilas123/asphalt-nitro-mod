###### Class com.json.adqualitysdk.sdk.i.ie (com.ironsource.adqualitysdk.sdk.i.ie)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ie;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ie;->a:I

    iput p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ie;->b:I

    iput-wide p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ie;->c:J

    iput-wide p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ie;->d:J

    return-void
.end method


# virtual methods
.method public final ﻐ()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ie;->d:J

    return-wide v0
.end method

.method public final ﻛ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ie;->a:I

    return v0
.end method

.method public final ｋ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ie;->b:I

    return v0
.end method

.method public final ﾇ()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ie;->c:J

    return-wide v0
.end method
