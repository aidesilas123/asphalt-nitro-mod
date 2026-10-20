###### Class com.fyber.inneractive.sdk.external.ImpressionData.Pricing (com.fyber.inneractive.sdk.external.ImpressionData$Pricing)
.class public Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/external/ImpressionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pricing"
.end annotation


# instance fields
.field public a:D

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;->a:D

    return-wide v0
.end method

.method public setValue(D)V
    .registers 3

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;->a:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pricing{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", currency=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
