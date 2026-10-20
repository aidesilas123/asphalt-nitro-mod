###### Class com.mbridge.msdk.out.RewardInfo (com.mbridge.msdk.out.RewardInfo)
.class public Lcom/mbridge/msdk/out/RewardInfo;
.super Ljava/lang/Object;
.source "RewardInfo.java"

# interfaces
.implements Lcom/mbridge/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# instance fields
.field private isCompleteView:Z

.field private rewardAlertStatus:I

.field private rewardAmount:Ljava/lang/String;

.field private rewardName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mbridge/msdk/out/RewardInfo;->isCompleteView:Z

    iput p2, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAlertStatus:I

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mbridge/msdk/out/RewardInfo;->isCompleteView:Z

    iput-object p2, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAmount:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mbridge/msdk/out/RewardInfo;->isCompleteView:Z

    iput-object p2, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAmount:Ljava/lang/String;

    iput p4, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAlertStatus:I

    return-void
.end method


# virtual methods
.method public getRewardAlertStatus()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAlertStatus:I

    return v0
.end method

.method public getRewardAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardName:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleteView()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/out/RewardInfo;->isCompleteView:Z

    return v0
.end method

.method public setCompleteView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/out/RewardInfo;->isCompleteView:Z

    return-void
.end method

.method public setRewardAlertStatus(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAlertStatus:I

    return-void
.end method

.method public setRewardAmount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAmount:Ljava/lang/String;

    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardInfo{isCompleteView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mbridge/msdk/out/RewardInfo;->isCompleteView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rewardName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rewardAmount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAmount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", rewardAlertStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/out/RewardInfo;->rewardAlertStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
