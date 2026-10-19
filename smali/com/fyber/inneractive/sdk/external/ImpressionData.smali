###### Class com.fyber.inneractive.sdk.external.ImpressionData (com.fyber.inneractive.sdk.external.ImpressionData)
.class public Lcom/fyber/inneractive/sdk/external/ImpressionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;,
        Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;
    }
.end annotation


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;

.field public b:Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->a:Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;

    return-void
.end method


# virtual methods
.method public getAdvertiserDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDemandId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public getDemandSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPricing()Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->a:Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;

    return-object v0
.end method

.method public getVideo()Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->b:Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;

    return-object v0
.end method

.method public setAdvertiserDomain(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->i:Ljava/lang/String;

    return-void
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->h:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->e:Ljava/lang/String;

    return-void
.end method

.method public setCpmValue(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_7

    :catch_5
    const-wide/16 v0, 0x0

    :goto_7
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->a:Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;

    iput-wide v0, p1, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;->a:D

    return-void
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->g:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->a:Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;->b:Ljava/lang/String;

    return-void
.end method

.method public setDemandId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->d:Ljava/lang/Long;

    return-void
.end method

.method public setDemandSource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->c:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->b:Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;

    iput-wide p1, v0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;->b:J

    return-void
.end method

.method public setImpressionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->f:Ljava/lang/String;

    return-void
.end method

.method public setPricing(Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->a:Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;

    return-void
.end method

.method public setVideo(Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->b:Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImpressionData{pricing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->a:Lcom/fyber/inneractive/sdk/external/ImpressionData$Pricing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->b:Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", demandSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", impressionId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creativeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", campaignId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", advertiserDomain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

###### Class com.fyber.inneractive.sdk.external.ImpressionData.Video (com.fyber.inneractive.sdk.external.ImpressionData$Video)
.class public Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/external/ImpressionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field public a:Z

.field public b:J


# direct methods
.method public constructor <init>(ZJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;->a:Z

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;->b:J

    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;->b:J

    return-wide v0
.end method

.method public isSkippable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video{skippable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/external/ImpressionData$Video;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
